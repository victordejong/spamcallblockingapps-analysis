package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.RequestMethod;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/JsonObjectRequest.class */
public class JsonObjectRequest extends Request<JSONObject> {
    public JsonObjectRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public JsonObjectRequest(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
        setAccept(Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
    }

    @Override // com.yanzhenjie.nohttp.rest.Request
    public JSONObject parseResponse(Headers headers, byte[] bArr) {
        return new JSONObject(StringRequest.parseResponseString(headers, bArr));
    }
}
