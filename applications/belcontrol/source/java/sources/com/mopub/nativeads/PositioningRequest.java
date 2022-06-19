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
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/PositioningRequest.class */
public class PositioningRequest extends JsonRequest<MoPubNativeAdPositioning.MoPubClientPositioning> {

    /* renamed from: w */
    public final String f5257w;

    /* renamed from: x */
    public final Context f5258x;

    public PositioningRequest(Context context, String str, Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> listener, Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), null, listener, errorListener);
        this.f5257w = str;
        this.f5258x = context.getApplicationContext();
    }

    @Override // com.mopub.volley.Request
    /* renamed from: e */
    public Map<String, String> mo3169e() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.f5258x, this.f5257w);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public byte[] getBody() {
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(mo3169e(), getUrl());
        if (generateBodyFromParams == null) {
            return null;
        }
        return generateBodyFromParams.getBytes();
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<MoPubNativeAdPositioning.MoPubClientPositioning> mo3087l(NetworkResponse networkResponse) {
        if (networkResponse.statusCode != 200) {
            return Response.error(new VolleyError(networkResponse));
        }
        if (networkResponse.data.length == 0) {
            return Response.error(new VolleyError("Empty positioning response", new JSONException("Empty response")));
        }
        try {
            return Response.success(m3281q(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (MoPubNetworkError e) {
            return Response.error(e);
        } catch (UnsupportedEncodingException e2) {
            return Response.error(new VolleyError("Couldn't parse JSON from Charset", e2));
        } catch (JSONException e3) {
            return Response.error(new VolleyError("JSON Parsing Error", e3));
        }
    }

    /* renamed from: o */
    public void deliverResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        super.deliverResponse(moPubClientPositioning);
    }

    /* renamed from: p */
    public final void m3282p(JSONArray jSONArray, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            int optInt = jSONObject.optInt("section", 0);
            if (optInt < 0) {
                throw new JSONException("Invalid section " + optInt + " in JSON response");
            }
            if (optInt <= 0) {
                int i2 = jSONObject.getInt("position");
                if (i2 < 0 || i2 > 65536) {
                    throw new JSONException("Invalid position " + i2 + " in JSON response");
                }
                moPubClientPositioning.addFixedPosition(i2);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: q */
    public MoPubNativeAdPositioning.MoPubClientPositioning m3281q(String str) {
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("error", null);
        if (optString != null) {
            if (!optString.equalsIgnoreCase("WARMING_UP")) {
                throw new JSONException(optString);
            }
            throw new MoPubNetworkError(MoPubNetworkError.Reason.WARMING_UP);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("fixed");
        JSONObject optJSONObject = jSONObject.optJSONObject("repeating");
        if (optJSONArray == null && optJSONObject == null) {
            throw new JSONException("Must contain fixed or repeating positions");
        }
        MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning = new MoPubNativeAdPositioning.MoPubClientPositioning();
        if (optJSONArray != null) {
            m3282p(optJSONArray, moPubClientPositioning);
        }
        if (optJSONObject != null) {
            m3280r(optJSONObject, moPubClientPositioning);
        }
        return moPubClientPositioning;
    }

    /* renamed from: r */
    public final void m3280r(JSONObject jSONObject, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        int i = jSONObject.getInt("interval");
        if (i >= 2 && i <= 65536) {
            moPubClientPositioning.enableRepeatingPositions(i);
            return;
        }
        throw new JSONException("Invalid interval " + i + " in JSON response");
    }
}
