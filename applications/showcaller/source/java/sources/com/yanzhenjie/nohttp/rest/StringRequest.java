package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.RequestMethod;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import com.yanzhenjie.nohttp.tools.IOUtils;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/StringRequest.class */
public class StringRequest extends Request<String> {
    public StringRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public StringRequest(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
    }

    public static String parseResponseString(Headers headers, byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? "" : IOUtils.toString(bArr, HeaderUtils.parseHeadValue(headers.getContentType(), "charset", ""));
    }

    @Override // com.yanzhenjie.nohttp.rest.Request
    public String parseResponse(Headers headers, byte[] bArr) {
        return parseResponseString(headers, bArr);
    }
}
