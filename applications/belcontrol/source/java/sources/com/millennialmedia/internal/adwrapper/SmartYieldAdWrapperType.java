package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldInlineAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldInterstitialAdapter;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.security.InvalidParameterException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType.class */
public class SmartYieldAdWrapperType implements AdWrapperType {
    private static final String TAG = "SmartYieldAdWrapperType";
    private static final Map<String, SmartYieldAdWrapper> activeSmartYieldAdWrappers = new ConcurrentHashMap();
    private static final Map<String, AdWrapperType> registeredDemandSourceTypes = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper.class */
    public static class SmartYieldAdWrapper extends AdWrapper implements SmartYieldAdapter.SmartYieldDecisionListener {
        private JSONArray bidderItems;
        private JSONArray demandSources;
        private MediatedAdAdapter downstreamMediationAdapter;
        private InlineAdapter.InlineAdapterListener mediationInlineAdapterListener;
        private InterstitialAdapter.InterstitialAdapterListener mediationInterstitialAdapterListener;
        private final String networkId;
        private final String siteId;
        private SmartYieldInlineAdapter.SmartYieldInlineAdapterListener smartYieldInlineAdapterListener;
        private final String smartYieldRequestId;
        private final String spaceId;
        private SmartYieldStatus smartYieldStatus = SmartYieldStatus.UNDECIDED;
        private CountDownLatch latch = new CountDownLatch(1);

        public SmartYieldAdWrapper(String str, String str2, String str3, String str4, String str5) {
            super(str);
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
                throw new InvalidParameterException("networkId, siteId, spaceId, and smartYieldRequestId (usually the playlist response ID) are required");
            }
            this.networkId = str2;
            this.siteId = str3;
            this.spaceId = str4;
            this.smartYieldRequestId = str5;
        }

        private void fireWinUrl(final String str) {
            if (!TextUtils.isEmpty(str)) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adwrapper.SmartYieldAdWrapperType.SmartYieldAdWrapper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MMLog.isDebugEnabled()) {
                            String str2 = SmartYieldAdWrapperType.TAG;
                            MMLog.m4070d(str2, "Firing smart yield win url = " + str);
                        }
                        HttpUtils.getContentFromGetRequest(str);
                    }
                });
            }
        }

        private AdAdapter getAdAdapterForSmartYieldRequest(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger, String str) {
            String str2;
            String str3;
            StringBuilder sb;
            long smartYieldTimeout = Handshake.getSmartYieldTimeout();
            SmartYieldStatus waitForSmartYieldResponse = waitForSmartYieldResponse(smartYieldTimeout);
            this.smartYieldStatus = waitForSmartYieldResponse;
            AdAdapter adAdapter = null;
            if (waitForSmartYieldResponse == SmartYieldStatus.BID_WON) {
                fireWinUrl(str);
                SmartYieldInlineAdapter processDemandSources = processDemandSources(adPlacement, playListItemReporter, atomicInteger);
                if (processDemandSources != null) {
                    if ((processDemandSources instanceof InlineAdapter) && (this.downstreamMediationAdapter instanceof InlineAdapter)) {
                        SmartYieldInlineAdapter smartYieldInlineAdapter = new SmartYieldInlineAdapter((InlineAdapter) processDemandSources, this.smartYieldInlineAdapterListener, (InlineAdapter) this.downstreamMediationAdapter, this.mediationInlineAdapterListener);
                        playListItemReporter.getSuperAuction().status = 103;
                        processDemandSources = smartYieldInlineAdapter;
                        if (MMLog.isDebugEnabled()) {
                            String str4 = SmartYieldAdWrapperType.TAG;
                            sb = new StringBuilder();
                            str3 = "Smart yield demand processing success for inline item ID: ";
                            processDemandSources = smartYieldInlineAdapter;
                            str2 = str4;
                            sb.append(str3);
                            sb.append(this.itemId);
                            MMLog.m4070d(str2, sb.toString());
                        }
                    } else if (!(processDemandSources instanceof InterstitialAdapter) || !(this.downstreamMediationAdapter instanceof InterstitialAdapter)) {
                        MMLog.m4068e(SmartYieldAdWrapperType.TAG, "Adapters are not all the correct type.");
                        processDemandSources = null;
                    } else {
                        SmartYieldInterstitialAdapter smartYieldInterstitialAdapter = new SmartYieldInterstitialAdapter((InterstitialAdapter) processDemandSources, (InterstitialAdapter) this.downstreamMediationAdapter, this.mediationInterstitialAdapterListener);
                        playListItemReporter.getSuperAuction().status = 103;
                        processDemandSources = smartYieldInterstitialAdapter;
                        if (MMLog.isDebugEnabled()) {
                            str2 = SmartYieldAdWrapperType.TAG;
                            str3 = "Smart yield demand processing success for interstitial item ID: ";
                            processDemandSources = smartYieldInterstitialAdapter;
                            sb = new StringBuilder();
                            sb.append(str3);
                            sb.append(this.itemId);
                            MMLog.m4070d(str2, sb.toString());
                        }
                    }
                }
                adAdapter = processDemandSources;
                if (processDemandSources == null) {
                    playListItemReporter.getSuperAuction().status = 106;
                    this.smartYieldStatus = SmartYieldStatus.UNDECIDED;
                    this.latch = new CountDownLatch(1);
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(SmartYieldAdWrapperType.TAG, "Smart yield demand processing onFailure for item ID: " + this.itemId);
                    }
                    InlineAdapter.InlineAdapterListener inlineAdapterListener = this.mediationInlineAdapterListener;
                    if (inlineAdapterListener != null) {
                        inlineAdapterListener.displayFailed();
                    }
                    InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener = this.mediationInterstitialAdapterListener;
                    if (interstitialAdapterListener != null) {
                        interstitialAdapterListener.initFailed();
                    }
                    this.smartYieldStatus = waitForSmartYieldResponse(smartYieldTimeout);
                    adAdapter = processDemandSources;
                }
            }
            return adAdapter;
        }

        private MediatedAdAdapter getSmartYieldMediationAdapter(String str, AdPlacement adPlacement) {
            StringBuilder sb;
            String str2;
            String str3;
            String sb2;
            MediatedAdAdapter mediatedAdapterInstance = AdAdapter.getMediatedAdapterInstance(adPlacement.getClass());
            if (mediatedAdapterInstance == null) {
                str3 = SmartYieldAdWrapperType.TAG;
                sb2 = "Unable to find ad adapter for network ID: " + str;
            } else {
                if (!(mediatedAdapterInstance instanceof AdAdapter)) {
                    String str4 = SmartYieldAdWrapperType.TAG;
                    sb = new StringBuilder();
                    sb.append("Unable to use ad adapter <");
                    sb.append(mediatedAdapterInstance);
                    sb.append("> for <");
                    sb.append(str);
                    str3 = str4;
                    str2 = ">, does not extend from AdAdapter";
                } else if (mediatedAdapterInstance instanceof SmartYieldAdapter) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(SmartYieldAdWrapperType.TAG, String.format("Found adapter %s for placement type %s and network id: %s", mediatedAdapterInstance.getClass().getSimpleName(), adPlacement.getClass().getSimpleName(), str));
                    }
                    return mediatedAdapterInstance;
                } else {
                    String str5 = SmartYieldAdWrapperType.TAG;
                    sb = new StringBuilder();
                    sb.append("Unable to use ad adapter <");
                    sb.append(mediatedAdapterInstance);
                    sb.append("> for <");
                    sb.append(str);
                    str2 = ">, does not implement smart yield adapter interface";
                    str3 = str5;
                }
                sb.append(str2);
                sb2 = sb.toString();
            }
            MMLog.m4068e(str3, sb2);
            return null;
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
                    AdAdapter adAdapter3 = adAdapter2;
                    try {
                        JSONObject jSONObject = this.demandSources.getJSONObject(i);
                        AdAdapter adAdapter4 = adAdapter2;
                        String string = jSONObject.getString("type");
                        AdAdapter adAdapter5 = adAdapter2;
                        AdWrapperType demandSourceType = SmartYieldAdWrapperType.getDemandSourceType(string);
                        if (demandSourceType != null) {
                            AdWrapper createAdWrapperFromJSON = demandSourceType.createAdWrapperFromJSON(jSONObject, this.smartYieldRequestId);
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
                            String str = SmartYieldAdWrapperType.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("No adapter found for demand source <");
                            sb.append(jSONObject);
                            sb.append(">");
                            MMLog.m4068e(str, sb.toString());
                        } else {
                            String str2 = SmartYieldAdWrapperType.TAG;
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
                        MMLog.m4067e(SmartYieldAdWrapperType.TAG, "Error processing smart yield demand source", e);
                        adAdapter2 = adAdapter3;
                    }
                    i++;
                }
            }
            return adAdapter;
        }

        private static boolean registerSmartYieldRequest(String str, SmartYieldAdWrapper smartYieldAdWrapper) {
            boolean z;
            synchronized (SmartYieldAdWrapper.class) {
                try {
                    if (SmartYieldAdWrapperType.activeSmartYieldAdWrappers.containsKey(str)) {
                        MMLog.m4062w(SmartYieldAdWrapperType.TAG, "A smart yield request is already in progress for the given smart yield request ID: " + str);
                        z = false;
                    } else {
                        SmartYieldAdWrapperType.activeSmartYieldAdWrappers.put(str, smartYieldAdWrapper);
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        private SmartYieldStatus waitForSmartYieldResponse(long j) {
            try {
                if (this.latch.await(j, TimeUnit.MILLISECONDS)) {
                    return this.smartYieldStatus;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(SmartYieldAdWrapperType.TAG, "Smart yield processing timed out.");
                }
                return SmartYieldStatus.ERROR;
            } catch (InterruptedException e) {
                MMLog.m4068e(SmartYieldAdWrapperType.TAG, "Error during smart yield processing.");
                return SmartYieldStatus.ERROR;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0173  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x018a  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x01fc  */
        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.millennialmedia.internal.adadapters.AdAdapter getAdAdapter(com.millennialmedia.internal.AdPlacement r8, com.millennialmedia.internal.AdPlacementReporter.PlayListItemReporter r9, java.util.concurrent.atomic.AtomicInteger r10) {
            /*
                Method dump skipped, instructions count: 568
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.adwrapper.SmartYieldAdWrapperType.SmartYieldAdWrapper.getAdAdapter(com.millennialmedia.internal.AdPlacement, com.millennialmedia.internal.AdPlacementReporter$PlayListItemReporter, java.util.concurrent.atomic.AtomicInteger):com.millennialmedia.internal.adadapters.AdAdapter");
        }

        @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter.SmartYieldDecisionListener
        public void onBidLost() {
            if (this.latch == null || this.smartYieldStatus != SmartYieldStatus.UNDECIDED) {
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str = SmartYieldAdWrapperType.TAG;
                MMLog.m4070d(str, "Smart yield onBidLost for item ID: " + this.itemId);
            }
            this.smartYieldStatus = SmartYieldStatus.BID_LOST;
            this.latch.countDown();
        }

        @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter.SmartYieldDecisionListener
        public void onBidWin(InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
            if (this.latch == null || this.smartYieldStatus != SmartYieldStatus.UNDECIDED) {
                return;
            }
            if (interstitialAdapterListener == null) {
                MMLog.m4068e(SmartYieldAdWrapperType.TAG, "InterstitialAdapterListener is required.");
                this.smartYieldStatus = SmartYieldStatus.ERROR;
                this.latch.countDown();
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str = SmartYieldAdWrapperType.TAG;
                MMLog.m4070d(str, "Smart yield onBidWin for item ID: " + this.itemId);
            }
            this.smartYieldStatus = SmartYieldStatus.BID_WON;
            this.mediationInterstitialAdapterListener = interstitialAdapterListener;
            this.latch.countDown();
        }

        @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter.SmartYieldDecisionListener
        public void onBidWin(SmartYieldInlineAdapter.SmartYieldInlineAdapterListener smartYieldInlineAdapterListener, InlineAdapter.InlineAdapterListener inlineAdapterListener) {
            if (this.latch == null || this.smartYieldStatus != SmartYieldStatus.UNDECIDED) {
                return;
            }
            if (smartYieldInlineAdapterListener == null || inlineAdapterListener == null) {
                MMLog.m4068e(SmartYieldAdWrapperType.TAG, "SmartYieldInlineAdapterListener and inlineAdapterListener are both required.");
                this.smartYieldStatus = SmartYieldStatus.ERROR;
                this.latch.countDown();
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str = SmartYieldAdWrapperType.TAG;
                MMLog.m4070d(str, "Smart yield onBidWin for item ID: " + this.itemId);
            }
            this.smartYieldStatus = SmartYieldStatus.BID_WON;
            this.smartYieldInlineAdapterListener = smartYieldInlineAdapterListener;
            this.mediationInlineAdapterListener = inlineAdapterListener;
            this.latch.countDown();
        }

        @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter.SmartYieldDecisionListener
        public void onError() {
            if (this.latch == null || this.smartYieldStatus != SmartYieldStatus.UNDECIDED) {
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str = SmartYieldAdWrapperType.TAG;
                MMLog.m4070d(str, "Smart yield onError for item ID: " + this.itemId);
            }
            this.smartYieldStatus = SmartYieldStatus.ERROR;
            this.latch.countDown();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus.class */
    public enum SmartYieldStatus {
        BID_LOST,
        BID_WON,
        ERROR,
        UNDECIDED
    }

    static {
        registerPackagedDemandSourceTypes();
    }

    public static SmartYieldAdapter.SmartYieldDecisionListener getActiveSmartYieldDecisionListener(String str) {
        return activeSmartYieldAdWrappers.get(str);
    }

    private static JSONArray getBiddersArray(JSONObject jSONObject) {
        JSONArray jSONArray;
        try {
            jSONArray = jSONObject.getJSONArray("bidders");
        } catch (JSONException e) {
            MMLog.m4061w(TAG, "smart_yield playlist item does not contain a bidders array", e);
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
            MMLog.m4061w(TAG, "smart_yield playlist item does not contain a demand_sources array", e);
            jSONArray = null;
        }
        return jSONArray;
    }

    public static JSONObject getWinningBidderObject(JSONArray jSONArray, JSONArray jSONArray2, AdPlacementReporter.PlayListItemReporter playListItemReporter) {
        JSONException e;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        if (jSONArray != null && jSONArray.length() >= 1) {
            int i = 0;
            while (true) {
                jSONObject = jSONObject2;
                if (i >= jSONArray.length()) {
                    break;
                }
                try {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    if (!jSONObject3.getString("type").equals("server_bid") || jSONArray2 == null || jSONArray2.length() <= 0 || TextUtils.isEmpty(jSONObject3.optString("bidPrice"))) {
                        AdPlacementReporter.reportBidItem(jSONObject3, playListItemReporter, 0);
                    } else {
                        try {
                            AdPlacementReporter.reportBidItem(jSONObject3, playListItemReporter, 1);
                            jSONObject2 = jSONObject3;
                        } catch (JSONException e2) {
                            e = e2;
                            jSONObject2 = jSONObject3;
                            MMLog.m4067e(TAG, "Error processing bidder item.", e);
                            i++;
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                }
                i++;
            }
        } else {
            MMLog.m4068e(TAG, "Smart yield bidders array missing.");
        }
        return jSONObject;
    }

    public static void registerDemandSourceType(String str, AdWrapperType adWrapperType) {
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

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        String string = jSONObject.getString("adnet");
        JSONObject jSONObject2 = jSONObject.getJSONObject(AdWrapperType.REQ_KEY);
        String string2 = jSONObject2.getString("site");
        String string3 = jSONObject2.getString("posId");
        String string4 = jSONObject.getString(AdWrapperType.ITEM_KEY);
        JSONArray biddersArray = getBiddersArray(jSONObject);
        JSONArray demandSources = getDemandSources(jSONObject);
        SmartYieldAdWrapper smartYieldAdWrapper = new SmartYieldAdWrapper(string4, string, string2, string3, str);
        smartYieldAdWrapper.demandSources = demandSources;
        smartYieldAdWrapper.bidderItems = biddersArray;
        return smartYieldAdWrapper;
    }
}
