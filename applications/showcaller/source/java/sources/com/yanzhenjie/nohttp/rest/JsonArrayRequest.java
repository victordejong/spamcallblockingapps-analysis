package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.RequestMethod;
import org.json.JSONArray;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/JsonArrayRequest.class */
public class JsonArrayRequest extends Request<JSONArray> {
    public JsonArrayRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public JsonArrayRequest(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
        setAccept(Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
    }

    @Override // com.yanzhenjie.nohttp.rest.Request
    public JSONArray parseResponse(Headers headers, byte[] bArr) {
        return new JSONArray(StringRequest.parseResponseString(headers, bArr));
    }
}
