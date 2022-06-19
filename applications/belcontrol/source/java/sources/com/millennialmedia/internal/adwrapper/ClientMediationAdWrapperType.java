package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType.class */
public class ClientMediationAdWrapperType implements AdWrapperType {
    private static final String TAG = "ClientMediationAdWrapperType";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper.class */
    public static class ClientMediationAdWrapper extends AdWrapper {
        public final String networkId;
        public final String siteId;
        public final String spaceId;

        public ClientMediationAdWrapper(String str, String str2, String str3, String str4) {
            super(str);
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                throw new InvalidParameterException("networkId, siteId and spaceId are required");
            }
            this.networkId = str2;
            this.siteId = str3;
            this.spaceId = str4;
        }

        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        public AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            if (MMLog.isDebugEnabled()) {
                String str = ClientMediationAdWrapperType.TAG;
                MMLog.m4070d(str, "Processing client mediation playlist item ID: " + this.itemId);
            }
            MediatedAdAdapter mediatedAdapterInstance = AdAdapter.getMediatedAdapterInstance(adPlacement.getClass());
            if (mediatedAdapterInstance == null) {
                String str2 = ClientMediationAdWrapperType.TAG;
                MMLog.m4068e(str2, "Unable to find ad adapter for network ID: " + this.networkId);
                return null;
            } else if (mediatedAdapterInstance instanceof AdAdapter) {
                mediatedAdapterInstance.setMediationInfo(new MediatedAdAdapter.MediationInfo(this.networkId, this.siteId, this.spaceId));
                AdAdapter adAdapter = (AdAdapter) mediatedAdapterInstance;
                adAdapter.requestTimeout = Handshake.getClientMediationTimeout();
                return adAdapter;
            } else {
                String str3 = ClientMediationAdWrapperType.TAG;
                MMLog.m4068e(str3, "Unable to use ad adapter <" + mediatedAdapterInstance + "> for <" + this.networkId + ">, does not extend from AdAdapter");
                return null;
            }
        }
    }

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        String string = jSONObject.getString("adnet");
        JSONObject jSONObject2 = jSONObject.getJSONObject(AdWrapperType.REQ_KEY);
        return new ClientMediationAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), string, jSONObject2.getString("site"), jSONObject2.getString("posId"));
    }
}
