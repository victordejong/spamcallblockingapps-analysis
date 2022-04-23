package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/JsonArrayRequest.class */
public class JsonArrayRequest extends JsonRequest<JSONArray> {
    public JsonArrayRequest(int i, String str, JSONArray jSONArray, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(i, str, jSONArray == null ? null : jSONArray.toString(), listener, errorListener);
    }

    public JsonArrayRequest(String str, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(0, str, null, listener, errorListener);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public Response<JSONArray> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONArray(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException e2) {
            return Response.error(new ParseError(e2));
        }
    }
}
