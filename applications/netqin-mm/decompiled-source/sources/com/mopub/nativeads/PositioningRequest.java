package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MoPubRequestUtils;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import com.mopub.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/PositioningRequest.class */
public class PositioningRequest extends JsonRequest<MoPubNativeAdPositioning.MoPubClientPositioning> {

    /* renamed from: u */
    public final String f34916u;

    /* renamed from: v */
    public final Context f34917v;

    public PositioningRequest(Context context, String str, Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> listener, Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), null, listener, errorListener);
        this.f34916u = str;
        this.f34917v = context.getApplicationContext();
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<MoPubNativeAdPositioning.MoPubClientPositioning> mo3669a(NetworkResponse networkResponse) {
        if (networkResponse.statusCode != 200) {
            return Response.error(new VolleyError(networkResponse));
        }
        if (networkResponse.data.length == 0) {
            return Response.error(new VolleyError("Empty positioning response", new JSONException("Empty response")));
        }
        try {
            return Response.success(m3862c(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (MoPubNetworkError e) {
            return Response.error(e);
        } catch (UnsupportedEncodingException e2) {
            return Response.error(new VolleyError("Couldn't parse JSON from Charset", e2));
        } catch (JSONException e3) {
            return Response.error(new VolleyError("JSON Parsing Error", e3));
        }
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Map<String, String> mo3754a() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.f34917v, this.f34916u);
    }

    /* renamed from: a */
    public void deliverResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        super.deliverResponse(moPubClientPositioning);
    }

    /* renamed from: a */
    public final void m3864a(JSONArray jSONArray, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            int optInt = jSONObject.optInt("section", 0);
            if (optInt >= 0) {
                if (optInt <= 0) {
                    int i2 = jSONObject.getInt("position");
                    if (i2 < 0 || i2 > 65536) {
                        throw new JSONException("Invalid position " + i2 + " in JSON response");
                    }
                    moPubClientPositioning.addFixedPosition(i2);
                }
            } else {
                throw new JSONException("Invalid section " + optInt + " in JSON response");
            }
        }
    }

    /* renamed from: a */
    public final void m3863a(JSONObject jSONObject, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) throws JSONException {
        int i = jSONObject.getInt("interval");
        if (i < 2 || i > 65536) {
            throw new JSONException("Invalid interval " + i + " in JSON response");
        }
        moPubClientPositioning.enableRepeatingPositions(i);
    }

    @VisibleForTesting
    /* renamed from: c */
    public MoPubNativeAdPositioning.MoPubClientPositioning m3862c(String str) throws JSONException, MoPubNetworkError {
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("error", null);
        if (optString == null) {
            JSONArray optJSONArray = jSONObject.optJSONArray("fixed");
            JSONObject optJSONObject = jSONObject.optJSONObject("repeating");
            if (optJSONArray == null && optJSONObject == null) {
                throw new JSONException("Must contain fixed or repeating positions");
            }
            MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning = new MoPubNativeAdPositioning.MoPubClientPositioning();
            if (optJSONArray != null) {
                m3864a(optJSONArray, moPubClientPositioning);
            }
            if (optJSONObject != null) {
                m3863a(optJSONObject, moPubClientPositioning);
            }
            return moPubClientPositioning;
        } else if (optString.equalsIgnoreCase("WARMING_UP")) {
            throw new MoPubNetworkError(MoPubNetworkError.Reason.WARMING_UP);
        } else {
            throw new JSONException(optString);
        }
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public byte[] getBody() {
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(mo3754a(), getUrl());
        if (generateBodyFromParams == null) {
            return null;
        }
        return generateBodyFromParams.getBytes();
    }
}
