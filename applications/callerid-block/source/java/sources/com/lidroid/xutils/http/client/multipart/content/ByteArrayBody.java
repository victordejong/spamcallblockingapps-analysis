package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/content/ByteArrayBody.class */
public class ByteArrayBody extends AbstractContentBody {
    private final byte[] data;
    private final String filename;

    public ByteArrayBody(byte[] bArr, String str) {
        this(bArr, "application/octet-stream", str);
    }

    public ByteArrayBody(byte[] bArr, String str, String str2) {
        super(str);
        if (bArr != null) {
            this.data = bArr;
            this.filename = str2;
            return;
        }
        throw new IllegalArgumentException("byte[] may not be null");
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getCharset() {
        return null;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public long getContentLength() {
        return this.data.length;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public String getFilename() {
        return this.filename;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_BINARY;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public void writeTo(OutputStream outputStream) {
        outputStream.write(this.data);
        MultipartEntity.CallBackInfo callBackInfo = this.callBackInfo;
        callBackInfo.pos += this.data.length;
        callBackInfo.doCallBack(false);
    }
}
