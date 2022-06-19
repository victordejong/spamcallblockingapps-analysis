package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.millennialmedia.CreativeInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.utils.HttpUtils;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ExchangeAdWrapperType.class */
public class ExchangeAdWrapperType implements AdWrapperType {
    private static final String TAG = "ExchangeAdWrapperType";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper.class */
    public static class ExchangeAdWrapper extends AdWrapper {
        public String postBody;
        public String postContentType;
        public final String url;

        public ExchangeAdWrapper(String str, String str2) {
            this(str, str2, false);
        }

        public ExchangeAdWrapper(String str, String str2, boolean z) {
            super(str, z);
            if (!TextUtils.isEmpty(str2)) {
                this.url = str2;
                return;
            }
            throw new InvalidParameterException("url is required");
        }

        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        public AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            AdAdapter adAdapter;
            JSONObject jSONObject;
            String string;
            String optString;
            String optString2;
            AdAdapter adAdapterForContent;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(ExchangeAdWrapperType.TAG, "Processing exchange mediation playlist item ID: " + this.itemId);
            }
            int exchangeTimeout = Handshake.getExchangeTimeout();
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.postBody) ? HttpUtils.getContentFromPostRequest(this.url, this.postBody, this.postContentType, exchangeTimeout) : HttpUtils.getContentFromPostRequest(this.url, exchangeTimeout);
            if (contentFromPostRequest.code != 200 || TextUtils.isEmpty(contentFromPostRequest.content)) {
                MMLog.m4068e(ExchangeAdWrapperType.TAG, "Unable to retrieve content for exchange mediation playlist item, placement ID <" + adPlacement.placementId + ">");
                atomicInteger.set(setErrorStatusFromResponseCode(contentFromPostRequest));
                return null;
            }
            try {
                jSONObject = new JSONObject(contentFromPostRequest.content);
                string = jSONObject.getString("ad");
                optString = jSONObject.optString("ad_buyer", null);
                optString2 = jSONObject.optString("ad_pru", null);
                adAdapterForContent = getAdAdapterForContent(adPlacement, string);
                try {
                } catch (JSONException e) {
                    adAdapter = adAdapterForContent;
                    MMLog.m4068e(ExchangeAdWrapperType.TAG, "Error occurred when trying to parse ad content from exchange response");
                    return adAdapter;
                }
            } catch (JSONException e2) {
                adAdapter = null;
            }
            if (adAdapterForContent == null) {
                MMLog.m4068e(ExchangeAdWrapperType.TAG, String.format("Unable to find adapter for exchange mediation playlist item, placement ID <%s> and content <%s>", adPlacement.placementId, string));
                return null;
            }
            if (playListItemReporter != null) {
                playListItemReporter.buyer = optString;
                playListItemReporter.pru = optString2;
            }
            adAdapterForContent.setAdMetadata(contentFromPostRequest.adMetadata);
            adAdapterForContent.setCreativeInfo(new CreativeInfo(jSONObject.optString("ad_crid", null), jSONObject.optString("ad_bidder_id", null)));
            adAdapter = adAdapterForContent;
            return adAdapter;
        }
    }

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        JSONObject jSONObject2 = jSONObject.getJSONObject(AdWrapperType.REQ_KEY);
        ExchangeAdWrapper exchangeAdWrapper = new ExchangeAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), jSONObject2.getString(ImagesContract.URL), jSONObject.optBoolean(AdWrapperType.ENHANCED_AD_CONTROL_KEY, false));
        exchangeAdWrapper.postBody = jSONObject2.optString("postBody", null);
        exchangeAdWrapper.postContentType = jSONObject2.optString("postType", null);
        return exchangeAdWrapper;
    }
}
