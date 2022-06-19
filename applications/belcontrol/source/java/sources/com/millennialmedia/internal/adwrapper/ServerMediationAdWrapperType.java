package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.millennialmedia.CreativeInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.utils.HttpUtils;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType.class */
public class ServerMediationAdWrapperType implements AdWrapperType {
    private static final String TAG = "ServerMediationAdWrapperType";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper.class */
    public static class ServerMediationAdWrapper extends AdWrapper {
        public String adnet;
        public String cridHeaderField;
        public String postBody;
        public String postContentType;
        public final String url;
        public String validateRegex;

        public ServerMediationAdWrapper(String str, String str2) {
            this(str, str2, false);
        }

        public ServerMediationAdWrapper(String str, String str2, boolean z) {
            super(str, z);
            if (!TextUtils.isEmpty(str2)) {
                this.url = str2;
                return;
            }
            throw new InvalidParameterException("url is required");
        }

        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        public AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            if (MMLog.isDebugEnabled()) {
                String str = ServerMediationAdWrapperType.TAG;
                MMLog.m4070d(str, "Processing server mediation playlist item ID: " + this.itemId);
            }
            int serverToServerTimeout = Handshake.getServerToServerTimeout();
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.postBody) ? HttpUtils.getContentFromPostRequest(this.url, this.postBody, this.postContentType, serverToServerTimeout) : HttpUtils.getContentFromPostRequest(this.url, serverToServerTimeout);
            if (contentFromPostRequest.code != 200 || TextUtils.isEmpty(contentFromPostRequest.content)) {
                String str2 = ServerMediationAdWrapperType.TAG;
                MMLog.m4068e(str2, "Unable to retrieve content for server mediation playlist item, placement ID <" + adPlacement.placementId + ">");
                atomicInteger.set(setErrorStatusFromResponseCode(contentFromPostRequest));
                return null;
            }
            if (!TextUtils.isEmpty(this.validateRegex)) {
                String str3 = contentFromPostRequest.content;
                if (str3.matches("(?s)" + this.validateRegex)) {
                    String str4 = ServerMediationAdWrapperType.TAG;
                    MMLog.m4068e(str4, "Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <" + adPlacement.placementId + "> and content <" + contentFromPostRequest.content + ">");
                    atomicInteger.set(-1);
                    return null;
                }
            }
            AdAdapter adAdapterForContent = getAdAdapterForContent(adPlacement, contentFromPostRequest.content);
            if (adAdapterForContent == null) {
                MMLog.m4068e(ServerMediationAdWrapperType.TAG, String.format("Unable to find adapter for server mediation playlist item, placement ID <%s> and content <%s>", adPlacement.placementId, contentFromPostRequest.content));
                return null;
            }
            adAdapterForContent.setAdMetadata(contentFromPostRequest.adMetadata);
            AdMetadata adMetadata = contentFromPostRequest.adMetadata;
            if (adMetadata != null) {
                adAdapterForContent.setCreativeInfo(new CreativeInfo(adMetadata.get(this.cridHeaderField), this.adnet));
            }
            return adAdapterForContent;
        }
    }

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        JSONObject jSONObject2 = jSONObject.getJSONObject(AdWrapperType.REQ_KEY);
        ServerMediationAdWrapper serverMediationAdWrapper = new ServerMediationAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), jSONObject2.getString(ImagesContract.URL), jSONObject.optBoolean(AdWrapperType.ENHANCED_AD_CONTROL_KEY, false));
        serverMediationAdWrapper.validateRegex = jSONObject2.optString("validRegex", null);
        serverMediationAdWrapper.postBody = jSONObject2.optString("postBody", null);
        serverMediationAdWrapper.postContentType = jSONObject2.optString("postType", null);
        serverMediationAdWrapper.cridHeaderField = jSONObject.optString("cridHeaderField", null);
        serverMediationAdWrapper.adnet = jSONObject.optString("adnet", null);
        return serverMediationAdWrapper;
    }
}
