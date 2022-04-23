package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/DecompressingEntity.class */
abstract class DecompressingEntity extends HttpEntityWrapper implements UploadEntity {
    private InputStream content;
    private long uncompressedLength;
    private long uploadedSize = 0;
    private RequestCallBackHandler callBackHandler = null;

    public DecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
        this.uncompressedLength = httpEntity.getContentLength();
    }

    private InputStream getDecompressingStream() {
        InputStream inputStream = null;
        try {
            InputStream content = ((HttpEntityWrapper) this).wrappedEntity.getContent();
            inputStream = content;
            return decorate(content);
        } catch (IOException e) {
            IOUtils.closeQuietly(inputStream);
            throw e;
        }
    }

    abstract InputStream decorate(InputStream inputStream);

    public InputStream getContent() {
        if (!((HttpEntityWrapper) this).wrappedEntity.isStreaming()) {
            return getDecompressingStream();
        }
        if (this.content == null) {
            this.content = getDecompressingStream();
        }
        return this.content;
    }

    public long getContentLength() {
        return -1L;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            Closeable closeable = null;
            try {
                closeable = getContent();
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = closeable.read(bArr);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                        long j = this.uploadedSize + read;
                        this.uploadedSize = j;
                        RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                        if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(this.uncompressedLength, j, false)) {
                            throw new InterruptedIOException("cancel");
                        }
                    } else {
                        outputStream.flush();
                        RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                        if (requestCallBackHandler2 != null) {
                            requestCallBackHandler2.updateProgress(this.uncompressedLength, this.uploadedSize, true);
                        }
                        return;
                    }
                }
            } finally {
                IOUtils.closeQuietly(closeable);
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
