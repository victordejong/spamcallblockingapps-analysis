package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/JsonObjectRequest.class */
public class JsonObjectRequest extends JsonRequest<JSONObject> {
    public JsonObjectRequest(int i, String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), listener, errorListener);
    }

    public JsonObjectRequest(String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, listener, errorListener);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONObject(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException e2) {
            return Response.error(new ParseError(e2));
        }
    }
}
