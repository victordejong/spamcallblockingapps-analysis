package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.ParseError;
import com.aotter.net.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/JsonObjectRequest.class */
public class JsonObjectRequest extends JsonRequest<JSONObject> {
    public JsonObjectRequest(int i, String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), listener, errorListener);
    }

    public JsonObjectRequest(String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, listener, errorListener);
    }

    @Override // com.aotter.net.volley.toolbox.JsonRequest, com.aotter.net.volley.Request
    public Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
        ParseError parseError;
        try {
            return Response.success(new JSONObject(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, JsonRequest.PROTOCOL_CHARSET))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e) {
            parseError = new ParseError(e);
            return Response.error(parseError);
        } catch (JSONException e2) {
            parseError = new ParseError(e2);
            return Response.error(parseError);
        }
    }
}
