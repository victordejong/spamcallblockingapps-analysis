package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/content/StringBody.class */
public class StringBody extends AbstractContentBody {
    private final Charset charset;
    private final byte[] content;

    public StringBody(String str) {
        this(str, "text/plain", null);
    }

    public StringBody(String str, String str2, Charset charset) {
        super(str2);
        if (str != null) {
            Charset forName = charset == null ? Charset.forName("UTF-8") : charset;
            this.content = str.getBytes(forName.name());
            this.charset = forName;
            return;
        }
        throw new IllegalArgumentException("Text may not be null");
    }

    public StringBody(String str, Charset charset) {
        this(str, "text/plain", charset);
    }

    public static StringBody create(String str) {
        return create(str, null, null);
    }

    public static StringBody create(String str, String str2, Charset charset) {
        try {
            return new StringBody(str, str2, charset);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException("Charset " + charset + " is not supported", e);
        }
    }

    public static StringBody create(String str, Charset charset) {
        return create(str, null, charset);
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getCharset() {
        return this.charset.name();
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public long getContentLength() {
        return this.content.length;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public String getFilename() {
        return null;
    }

    public Reader getReader() {
        return new InputStreamReader(new ByteArrayInputStream(this.content), this.charset);
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_8BIT;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public void writeTo(OutputStream outputStream) {
        MultipartEntity.CallBackInfo callBackInfo;
        if (outputStream != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.content);
            byte[] bArr = new byte[4096];
            do {
                int read = byteArrayInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                    callBackInfo = this.callBackInfo;
                    callBackInfo.pos += read;
                } else {
                    outputStream.flush();
                    return;
                }
            } while (callBackInfo.doCallBack(false));
            throw new InterruptedIOException("cancel");
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
