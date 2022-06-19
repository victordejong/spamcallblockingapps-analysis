package com.mopub.nativeads;

import android.content.Context;
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
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PositioningRequest.class */
public class PositioningRequest extends JsonRequest<MoPubNativeAdPositioning.MoPubClientPositioning> {
    private static final String FIXED_KEY = "fixed";
    private static final String INTERVAL_KEY = "interval";
    private static final int MAX_VALUE = 65536;
    private static final String POSITION_KEY = "position";
    private static final String REPEATING_KEY = "repeating";
    private static final String SECTION_KEY = "section";
    private final Context mContext;
    private final String mOriginalUrl;

    public PositioningRequest(Context context, String str, Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> listener, Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), null, listener, errorListener);
        this.mOriginalUrl = str;
        this.mContext = context.getApplicationContext();
    }

    private void parseFixedJson(JSONArray jSONArray, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            int optInt = jSONObject.optInt(SECTION_KEY, 0);
            if (optInt < 0) {
                throw new JSONException("Invalid section " + optInt + " in JSON response");
            }
            if (optInt <= 0) {
                int i2 = jSONObject.getInt(POSITION_KEY);
                if (i2 < 0 || i2 > MAX_VALUE) {
                    throw new JSONException("Invalid position " + i2 + " in JSON response");
                }
                moPubClientPositioning.addFixedPosition(i2);
            }
        }
    }

    private void parseRepeatingJson(JSONObject jSONObject, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) throws JSONException {
        int i = jSONObject.getInt(INTERVAL_KEY);
        if (i >= 2 && i <= MAX_VALUE) {
            moPubClientPositioning.enableRepeatingPositions(i);
            return;
        }
        throw new JSONException("Invalid interval " + i + " in JSON response");
    }

    public void deliverResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        super.deliverResponse((PositioningRequest) moPubClientPositioning);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public byte[] getBody() {
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(getParams(), getUrl());
        if (generateBodyFromParams == null) {
            return null;
        }
        return generateBodyFromParams.getBytes();
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getParams() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.mContext, this.mOriginalUrl);
    }

    MoPubNativeAdPositioning.MoPubClientPositioning parseJson(String str) throws JSONException, MoPubNetworkError {
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("error", null);
        if (optString != null) {
            if (!optString.equalsIgnoreCase("WARMING_UP")) {
                throw new JSONException(optString);
            }
            throw new MoPubNetworkError(MoPubNetworkError.Reason.WARMING_UP);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(FIXED_KEY);
        JSONObject optJSONObject = jSONObject.optJSONObject(REPEATING_KEY);
        if (optJSONArray == null && optJSONObject == null) {
            throw new JSONException("Must contain fixed or repeating positions");
        }
        MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning = new MoPubNativeAdPositioning.MoPubClientPositioning();
        if (optJSONArray != null) {
            parseFixedJson(optJSONArray, moPubClientPositioning);
        }
        if (optJSONObject != null) {
            parseRepeatingJson(optJSONObject, moPubClientPositioning);
        }
        return moPubClientPositioning;
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public Response<MoPubNativeAdPositioning.MoPubClientPositioning> parseNetworkResponse(NetworkResponse networkResponse) {
        if (networkResponse.statusCode != 200) {
            return Response.error(new VolleyError(networkResponse));
        }
        if (networkResponse.data.length == 0) {
            return Response.error(new VolleyError("Empty positioning response", new JSONException("Empty response")));
        }
        try {
            return Response.success(parseJson(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (MoPubNetworkError e) {
            return Response.error(e);
        } catch (UnsupportedEncodingException e2) {
            return Response.error(new VolleyError("Couldn't parse JSON from Charset", e2));
        } catch (JSONException e3) {
            return Response.error(new VolleyError("JSON Parsing Error", e3));
        }
    }
}
