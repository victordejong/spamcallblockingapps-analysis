package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.security.InvalidParameterException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType.class */
public class SuperAuctionAdWrapperType implements AdWrapperType {
    private static final String TAG = "SuperAuctionAdWrapperType";
    private static final Map<String, AdWrapperType> registeredDemandSourceTypes = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper.class */
    public static class SuperAuctionAdWrapper extends AdWrapper {
        private String bidPrice;
        private JSONObject bidderItem;
        private JSONArray bidderItems;
        private JSONArray demandSources;
        private final String playlistResponseId;
        private String winUrl;

        public SuperAuctionAdWrapper(String str, String str2, JSONArray jSONArray, JSONArray jSONArray2) {
            super(str);
            if (!TextUtils.isEmpty(str2)) {
                this.playlistResponseId = str2;
                this.demandSources = jSONArray;
                this.bidderItems = jSONArray2;
                JSONObject winningBidderObject = SuperAuctionAdWrapperType.getWinningBidderObject(jSONArray2, jSONArray);
                this.bidderItem = winningBidderObject;
                if (winningBidderObject == null) {
                    return;
                }
                this.bidPrice = winningBidderObject.optString("bidPrice");
                this.winUrl = this.bidderItem.optString("winUrl");
                return;
            }
            throw new InvalidParameterException("playlistResponseId is required");
        }

        private void fireWinUrl(final String str) {
            if (!TextUtils.isEmpty(str)) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adwrapper.SuperAuctionAdWrapperType.SuperAuctionAdWrapper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MMLog.isDebugEnabled()) {
                            String str2 = SuperAuctionAdWrapperType.TAG;
                            MMLog.m4070d(str2, "Firing super auction win url = " + str);
                        }
                        HttpUtils.getContentFromGetRequest(str);
                    }
                });
            }
        }

        private AdAdapter getAdAdapterForSuperAuctionRequest(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            AdAdapter processDemandSources = processDemandSources(adPlacement, playListItemReporter, atomicInteger);
            playListItemReporter.getSuperAuction().status = processDemandSources == null ? 112 : 111;
            return processDemandSources;
        }

        private AdAdapter processDemandSources(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            AdAdapter adAdapter = null;
            AdAdapter adAdapter2 = null;
            if (this.demandSources != null) {
                int i = 0;
                while (true) {
                    adAdapter = adAdapter2;
                    if (i >= this.demandSources.length()) {
                        break;
                    }
                    atomicInteger.set(-3);
                    AdAdapter adAdapter3 = adAdapter2;
                    try {
                        JSONObject jSONObject = this.demandSources.getJSONObject(i);
                        AdAdapter adAdapter4 = adAdapter2;
                        String string = jSONObject.getString("type");
                        AdAdapter adAdapter5 = adAdapter2;
                        AdWrapperType demandSourceType = SuperAuctionAdWrapperType.getDemandSourceType(string);
                        if (demandSourceType != null) {
                            AdWrapper createAdWrapperFromJSON = demandSourceType.createAdWrapperFromJSON(jSONObject, this.playlistResponseId);
                            AdAdapter adAdapter6 = adAdapter2;
                            AdPlacementReporter.DemandSource reportDemandSource = AdPlacementReporter.reportDemandSource(playListItemReporter, string, createAdWrapperFromJSON);
                            AdAdapter adAdapter7 = adAdapter2;
                            adAdapter2 = createAdWrapperFromJSON.getAdAdapter(adPlacement, playListItemReporter, atomicInteger);
                            if (adAdapter2 != null) {
                                reportDemandSource.status = 1;
                                playListItemReporter.getSuperAuction().itemId = createAdWrapperFromJSON.itemId;
                                if (jSONObject.has("buyer")) {
                                    playListItemReporter.buyer = jSONObject.getString("buyer");
                                }
                                adAdapter = adAdapter2;
                                if (!jSONObject.has("price")) {
                                    break;
                                }
                                adAdapter3 = adAdapter2;
                                playListItemReporter.pru = jSONObject.getString("price");
                                adAdapter = adAdapter2;
                                break;
                            }
                            reportDemandSource.status = atomicInteger.get();
                            String str = SuperAuctionAdWrapperType.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("No adapter found for demand source <");
                            sb.append(jSONObject);
                            sb.append(">");
                            MMLog.m4068e(str, sb.toString());
                        } else {
                            String str2 = SuperAuctionAdWrapperType.TAG;
                            AdAdapter adAdapter8 = adAdapter2;
                            AdAdapter adAdapter9 = adAdapter2;
                            StringBuilder sb2 = new StringBuilder();
                            AdAdapter adAdapter10 = adAdapter2;
                            sb2.append("Unable to process demand source type <");
                            AdAdapter adAdapter11 = adAdapter2;
                            sb2.append(string);
                            AdAdapter adAdapter12 = adAdapter2;
                            sb2.append(">");
                            AdAdapter adAdapter13 = adAdapter2;
                            MMLog.m4068e(str2, sb2.toString());
                        }
                    } catch (Exception e) {
                        MMLog.m4067e(SuperAuctionAdWrapperType.TAG, "Error processing super auction demand source", e);
                        adAdapter2 = adAdapter3;
                    }
                    i++;
                }
            }
            return adAdapter;
        }

        public void reportBidderItems(AdPlacementReporter.PlayListItemReporter playListItemReporter) {
            JSONArray jSONArray;
            JSONArray jSONArray2 = this.bidderItems;
            if (jSONArray2 == null || jSONArray2.length() < 1 || (jSONArray = this.demandSources) == null || jSONArray.length() <= 0) {
                return;
            }
            for (int i = 0; i < this.bidderItems.length(); i++) {
                try {
                    JSONObject jSONObject = this.bidderItems.getJSONObject(i);
                    if (jSONObject.getString("type").equals("server_bid") && !TextUtils.isEmpty(jSONObject.optString("bidPrice"))) {
                        AdPlacementReporter.reportBidItem(jSONObject, playListItemReporter, 1);
                        return;
                    }
                } catch (JSONException e) {
                    MMLog.m4067e(SuperAuctionAdWrapperType.TAG, "Error reporting bidder item.", e);
                }
            }
        }

        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        public AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            if (MMLog.isDebugEnabled()) {
                String str = SuperAuctionAdWrapperType.TAG;
                MMLog.m4070d(str, "Processing item with ID <" + this.itemId + ">");
            }
            fireWinUrl(this.winUrl);
            JSONObject jSONObject = this.bidderItem;
            if (jSONObject != null) {
                AdPlacementReporter.reportBidItem(jSONObject, playListItemReporter, 1);
            }
            return getAdAdapterForSuperAuctionRequest(adPlacement, playListItemReporter, atomicInteger);
        }

        public String getBidPrice() {
            return this.bidPrice;
        }
    }

    static {
        try {
            registerPackagedDemandSourceTypes();
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Unable to register packaged demand source types", e);
        }
    }

    private static JSONArray getBiddersArray(JSONObject jSONObject) {
        JSONArray jSONArray;
        try {
            jSONArray = jSONObject.getJSONArray("bidders");
        } catch (JSONException e) {
            MMLog.m4061w(TAG, "Super auction playlist item does not contain a bidders array", e);
            jSONArray = null;
        }
        return jSONArray;
    }

    public static AdWrapperType getDemandSourceType(String str) {
        AdWrapperType adWrapperType = registeredDemandSourceTypes.get(str);
        if (adWrapperType != null) {
            return adWrapperType;
        }
        throw new Exception("Unable to find specified DemandSourceType for type ID " + str);
    }

    private static JSONArray getDemandSources(JSONObject jSONObject) {
        JSONArray jSONArray;
        try {
            jSONArray = jSONObject.getJSONArray("demandSources");
        } catch (JSONException e) {
            MMLog.m4061w(TAG, "Super auction playlist item does not contain a demand_sources array", e);
            jSONArray = null;
        }
        return jSONArray;
    }

    public static JSONObject getWinningBidderObject(JSONArray jSONArray, JSONArray jSONArray2) {
        if (JSONUtils.isEmpty(jSONArray)) {
            MMLog.m4068e(TAG, "Super auction bidders array missing.");
            return null;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.getString("type").equals("server_bid") && jSONArray2 != null && jSONArray2.length() > 0) {
                    return jSONObject;
                }
            } catch (JSONException e) {
                MMLog.m4067e(TAG, "Error processing bidder item.", e);
            }
        }
        return null;
    }

    private static void registerDemandSourceType(String str, AdWrapperType adWrapperType) {
        if (adWrapperType != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("DemandSourceTypeId cannot be null");
            }
            Map<String, AdWrapperType> map = registeredDemandSourceTypes;
            if (map.containsKey(str)) {
                String str2 = TAG;
                MMLog.m4062w(str2, "DemandSourceTypeId <" + str + "> already registered");
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str3 = TAG;
                MMLog.m4070d(str3, "Registering DemandSourceTypeId <" + str + ">");
            }
            map.put(str, adWrapperType);
            return;
        }
        throw new IllegalArgumentException("AdWrapperType cannot be null");
    }

    private static void registerPackagedDemandSourceTypes() {
        registerDemandSourceType("ad_content", new ContentDemandSourceAdWrapperType());
        registerDemandSourceType("server_demand", new ServerMediationAdWrapperType());
        registerDemandSourceType("client_demand", new ClientMediationAdWrapperType());
    }

    public static void reportBidFailed(PlayList playList, SuperAuctionAdWrapper superAuctionAdWrapper, String str, int i) {
        AdPlacementReporter playListReporter = AdPlacementReporter.getPlayListReporter(playList, str);
        AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(playListReporter);
        playListItemReporter.getSuperAuction().status = i;
        if (superAuctionAdWrapper != null) {
            playListItemReporter.itemId = superAuctionAdWrapper.itemId;
            superAuctionAdWrapper.reportBidderItems(playListItemReporter);
        }
        AdPlacementReporter.reportPlayListItem(playListReporter, playListItemReporter);
        AdPlacementReporter.reportPlayList(playListReporter);
    }

    public static void reportBidFailed(PlayList playList, String str, int i) {
        AdWrapper item = playList.getItem(0);
        if (item == null) {
            return;
        }
        reportBidFailed(playList, (SuperAuctionAdWrapper) item, str, i);
    }

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        return new SuperAuctionAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), str, getDemandSources(jSONObject), getBiddersArray(jSONObject));
    }
}
