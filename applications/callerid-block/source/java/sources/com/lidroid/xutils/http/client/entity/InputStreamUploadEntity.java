package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/InputStreamUploadEntity.class */
public class InputStreamUploadEntity extends AbstractHttpEntity implements UploadEntity {
    private static final int BUFFER_SIZE = 2048;
    private final InputStream content;
    private final long length;
    private long uploadedSize = 0;
    private RequestCallBackHandler callBackHandler = null;

    public InputStreamUploadEntity(InputStream inputStream, long j) {
        if (inputStream != null) {
            this.content = inputStream;
            this.length = j;
            return;
        }
        throw new IllegalArgumentException("Source input stream may not be null");
    }

    public void consumeContent() {
        this.content.close();
    }

    public InputStream getContent() {
        return this.content;
    }

    public long getContentLength() {
        return this.length;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return true;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            InputStream inputStream = this.content;
            try {
                byte[] bArr = new byte[BUFFER_SIZE];
                ?? r0 = this.length;
                char c = r0;
                if (r0 < 0) {
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                        long j = this.uploadedSize + read;
                        this.uploadedSize = j;
                        RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                        if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(j + 1, j, false)) {
                            throw new InterruptedIOException("cancel");
                        }
                    }
                } else {
                    while (c > 0) {
                        int read2 = inputStream.read(bArr, 0, (int) Math.min(2048L, (long) c));
                        if (read2 == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read2);
                        long j2 = read2;
                        ?? r02 = c - j2;
                        long j3 = j2 + this.uploadedSize;
                        this.uploadedSize = j3;
                        RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                        c = r02;
                        if (requestCallBackHandler2 != null) {
                            if (!requestCallBackHandler2.updateProgress(this.length, j3, false)) {
                                throw new InterruptedIOException("cancel");
                            }
                            c = r02;
                        }
                    }
                }
                outputStream.flush();
                RequestCallBackHandler requestCallBackHandler3 = this.callBackHandler;
                if (requestCallBackHandler3 != null) {
                    requestCallBackHandler3.updateProgress(this.length, this.uploadedSize, true);
                }
                return;
            } finally {
                IOUtils.closeQuietly(inputStream);
            }
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
