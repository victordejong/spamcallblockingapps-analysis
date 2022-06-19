package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.RequestMethod;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/ByteArrayRequest.class */
public class ByteArrayRequest extends Request<byte[]> {
    public ByteArrayRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public ByteArrayRequest(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
    }

    @Override // com.yanzhenjie.nohttp.rest.Request
    public byte[] parseResponse(Headers headers, byte[] bArr) {
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = new byte[0];
        }
        return bArr2;
    }
}
