package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.util.IOUtils;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/content/InputStreamBody.class */
public class InputStreamBody extends AbstractContentBody {
    private final String filename;

    /* renamed from: in */
    private final InputStream f11342in;
    private long length;

    public InputStreamBody(InputStream inputStream, long j) {
        this(inputStream, j, "no_name", "application/octet-stream");
    }

    public InputStreamBody(InputStream inputStream, long j, String str) {
        this(inputStream, j, str, "application/octet-stream");
    }

    public InputStreamBody(InputStream inputStream, long j, String str, String str2) {
        super(str2);
        if (inputStream != null) {
            this.f11342in = inputStream;
            this.filename = str;
            this.length = j;
            return;
        }
        throw new IllegalArgumentException("Input stream may not be null");
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getCharset() {
        return null;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public long getContentLength() {
        return this.length;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public String getFilename() {
        return this.filename;
    }

    public InputStream getInputStream() {
        return this.f11342in;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_BINARY;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = this.f11342in.read(bArr);
                    if (read == -1) {
                        outputStream.flush();
                        return;
                    }
                    outputStream.write(bArr, 0, read);
                    MultipartEntity.CallBackInfo callBackInfo = this.callBackInfo;
                    callBackInfo.pos += read;
                    if (!callBackInfo.doCallBack(false)) {
                        throw new InterruptedIOException("cancel");
                    }
                }
            } finally {
                IOUtils.closeQuietly(this.f11342in);
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
