package com.verizon.ads.verizonsspwaterfallprovider;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.NetworkInfo;
import android.os.Build;
import android.webkit.URLUtil;
import com.explorestack.iab.mraid.C9568h;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.Constants;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Configuration;
import com.verizon.ads.CreativeInfo;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.PrivacyDataHelper;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.Waterfall;
import com.verizon.ads.WaterfallProvider;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.models.APIMeta;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider.class */
public class VerizonSSPWaterfallProvider extends WaterfallProvider implements Component {
    public static final String APP_DATA_COPPA_KEY = "coppa";
    public static final String APP_DATA_MEDIATOR_KEY = "mediator";
    public static final int ERROR_WATERFALL_ITEM_ERROR = -3;
    public static final int ERROR_WATERFALL_ITEM_NO_AD_CONTENT = -1;
    public static final int ERROR_WATERFALL_ITEM_SUPER_AUCTION_BID_EXPIRED = 113;
    public static final int ERROR_WATERFALL_ITEM_SUPER_AUCTION_INVALID_BID = 110;
    public static final int ERROR_WATERFALL_ITEM_TIMEOUT = -2;
    public static final String EXTRAS_TEST_BIDDER_ID_KEY = "testBidderID";
    public static final String EXTRAS_TEST_CREATIVE_ID_KEY = "testCreativeID";
    public static final String METADATA_KEY_BUYER = "buyer";
    public static final String METADATA_KEY_IMPRESSION_GROUP = "impressionGroup";
    public static final String METADATA_KEY_ITEM_ID = "itemId";
    public static final String METADATA_KEY_PLACEMENT_NAME = "placementName";
    public static final String METADATA_KEY_PRU = "pru";
    public static final String METADATA_KEY_REPORTING_ENABLED = "reportingEnabled";
    public static final String METADATA_KEY_RESPONSE_ID = "responseId";
    public static final String PLACEMENT_DATA_AD_SIZES_KEY = "adSizes";
    public static final String PLACEMENT_DATA_HEIGHT_KEY = "height";
    public static final String PLACEMENT_DATA_ID_KEY = "id";
    public static final String PLACEMENT_DATA_IMP_GROUP_KEY = "impressionGroup";
    public static final String PLACEMENT_DATA_NATIVE_TYPES_KEY = "nativeTypes";
    public static final String PLACEMENT_DATA_REFRESH_RATE_KEY = "refreshRate";
    public static final String PLACEMENT_DATA_TYPE_KEY = "type";
    public static final String PLACEMENT_DATA_WIDTH_KEY = "width";
    public static final String USER_DATA_AGE_KEY = "age";
    public static final String USER_DATA_CHILDREN_KEY = "children";
    public static final String USER_DATA_COUNTRY_KEY = "country";
    public static final String USER_DATA_DMA_KEY = "dma";
    public static final String USER_DATA_DOB_KEY = "dob";
    public static final String USER_DATA_EDUCATION_KEY = "education";
    public static final String USER_DATA_ETHNICITY_KEY = "ethnicity";
    public static final String USER_DATA_GENDER_KEY = "gender";
    public static final String USER_DATA_INCOME_KEY = "income";
    public static final String USER_DATA_KEYWORDS_KEY = "keywords";
    public static final String USER_DATA_MARITAL_STATUS_KEY = "marital";
    public static final String USER_DATA_POLITICS_KEY = "politics";
    public static final String USER_DATA_POSTAL_CODE_KEY = "postalCode";
    public static final String USER_DATA_STATE_KEY = "state";

    /* renamed from: b */
    private static final Logger f61992b = Logger.getInstance(VerizonSSPWaterfallProvider.class);

    /* renamed from: c */
    private static final String f61993c = VerizonSSPWaterfallProvider.class.getSimpleName();

    /* renamed from: d */
    private final Context f61994d;

    /* renamed from: e */
    private final EnvironmentInfo f61995e;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem.class */
    public static class AdContentWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a */
        final String f62002a;

        /* renamed from: b */
        final String f62003b;

        /* renamed from: c */
        final String f62004c;

        AdContentWaterfallItem(String str, String str2, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            this.f62002a = jSONObject.getString(str2);
            this.f62003b = jSONObject.optString(APIMeta.CREATIVE_ID, null);
            this.f62004c = jSONObject.optString("adnet", null);
        }

        AdContentWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            this(str, "value", jSONObject);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = VerizonSSPWaterfallProvider.f61992b;
                logger.m5567d("Processing ad content playlist item ID: " + this.f62033g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f61992b.m5565e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad Session cannot be null", -3));
            } else if (TextUtils.isEmpty(this.f62002a)) {
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad content is empty", -3));
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put(APIMeta.CREATIVE_ID, this.f62003b);
                hashMap.put("adnet", this.f62004c);
                if (this.f62038l != null) {
                    hashMap.put(Reporting.Key.AD_SIZE, this.f62038l);
                }
                if (this.f62039m != null) {
                    hashMap.put("creative_info", this.f62039m);
                }
                return new Waterfall.WaterfallItem.FetchResult(new AdContent(this.f62002a, hashMap));
            }
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("AdContentWaterfallItem{creativeId: %s, adnet: %s, %s}", this.f62003b, this.f62004c, super.toString());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem.class */
    public static class ExchangeWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a */
        final String f62005a;

        /* renamed from: b */
        final String f62006b;

        /* renamed from: c */
        final String f62007c;

        ExchangeWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject("req");
            this.f62005a = jSONObject2.getString("url");
            this.f62006b = jSONObject2.optString("postBody", null);
            this.f62007c = jSONObject2.optString("postType", null);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = VerizonSSPWaterfallProvider.f61992b;
                logger.m5567d("Processing exchange mediation playlist item ID: " + this.f62033g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f61992b.m5565e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad Session cannot be null", -3));
            }
            int i = Configuration.getInt("com.verizon.ads.verizonssp", "exchangeRequestTimeout", 10000);
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.f62006b) ? HttpUtils.getContentFromPostRequest(this.f62005a, this.f62006b, this.f62007c, i) : HttpUtils.getContentFromPostRequest(this.f62005a, i);
            if (contentFromPostRequest.code != 200) {
                Logger logger2 = VerizonSSPWaterfallProvider.f61992b;
                logger2.m5565e("Unable to retrieve content for exchange mediation playlist item, placement ID <" + this.f62034h + ">");
                return new Waterfall.WaterfallItem.FetchResult(VerizonSSPWaterfallProvider.m5067a(contentFromPostRequest));
            } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                Logger logger3 = VerizonSSPWaterfallProvider.f61992b;
                logger3.m5565e("Ad content is empty for exchange mediation playlist item, placement ID <" + this.f62034h + ">");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "No ad response", -1));
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(contentFromPostRequest.content);
                    String string = jSONObject.getString("ad");
                    this.f62036j = jSONObject.optString("ad_buyer", null);
                    this.f62037k = jSONObject.optString("ad_pru", null);
                    CreativeInfo creativeInfo = new CreativeInfo(jSONObject.optString("ad_crid", null), jSONObject.optString("ad_bidder_id", null));
                    if (Logger.isLogLevelEnabled(3)) {
                        VerizonSSPWaterfallProvider.f61992b.m5567d("Exchange waterfall item creative info: ".concat(String.valueOf(creativeInfo)));
                    }
                    HashMap hashMap = new HashMap();
                    if (contentFromPostRequest.adMetadata != null) {
                        hashMap.put("response_headers", contentFromPostRequest.adMetadata);
                    }
                    hashMap.put("creative_info", creativeInfo);
                    if (this.f62038l != null) {
                        hashMap.put(Reporting.Key.AD_SIZE, this.f62038l);
                    }
                    return new Waterfall.WaterfallItem.FetchResult(new AdContent(string, hashMap));
                } catch (JSONException e) {
                    VerizonSSPWaterfallProvider.f61992b.m5564e("Error occurred when trying to parse ad content from exchange response", e);
                    return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Error parsing ad content", -3));
                }
            }
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("ExchangeWaterfallItem{url: %s, postContentType: %s, %s}", this.f62005a, this.f62007c, super.toString());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            return new VerizonSSPWaterfallProvider(context);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener.class */
    public static class PlayListRequestListener {

        /* renamed from: a */
        final BidRequestListener f62008a;

        /* renamed from: b */
        final WaterfallProvider.WaterfallListener f62009b;

        /* renamed from: c */
        final RequestMetadata f62010c;

        PlayListRequestListener(BidRequestListener bidRequestListener, RequestMetadata requestMetadata) {
            this(bidRequestListener, null, requestMetadata);
        }

        PlayListRequestListener(BidRequestListener bidRequestListener, WaterfallProvider.WaterfallListener waterfallListener, RequestMetadata requestMetadata) {
            this.f62008a = bidRequestListener;
            this.f62009b = waterfallListener;
            this.f62010c = requestMetadata;
        }

        PlayListRequestListener(WaterfallProvider.WaterfallListener waterfallListener, RequestMetadata requestMetadata) {
            this(null, waterfallListener, requestMetadata);
        }

        /* renamed from: a */
        final void m5052a(ErrorInfo errorInfo) {
            WaterfallProvider.WaterfallListener waterfallListener = this.f62009b;
            if (waterfallListener != null) {
                waterfallListener.onAdSessionsReceived(null, errorInfo);
                return;
            }
            BidRequestListener bidRequestListener = this.f62008a;
            if (bidRequestListener == null) {
                return;
            }
            bidRequestListener.onComplete(null, errorInfo);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x015c  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void m5051a(java.util.List<com.verizon.ads.Waterfall> r14) {
            /*
                Method dump skipped, instructions count: 391
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.PlayListRequestListener.m5051a(java.util.List):void");
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem.class */
    public static class ServerMediationWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a */
        final String f62011a;

        /* renamed from: b */
        final String f62012b;

        /* renamed from: c */
        final String f62013c;

        /* renamed from: d */
        final String f62014d;

        /* renamed from: e */
        final String f62015e;

        /* renamed from: f */
        final String f62016f;

        ServerMediationWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject("req");
            this.f62011a = jSONObject2.getString("url");
            this.f62012b = jSONObject2.optString("validRegex", null);
            this.f62013c = jSONObject2.optString("postBody", null);
            this.f62014d = jSONObject2.optString("postType", null);
            this.f62015e = jSONObject.optString("cridHeaderField", null);
            this.f62016f = jSONObject.optString("adnet", null);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                VerizonSSPWaterfallProvider.f61992b.m5567d("Processing server mediation playlist item ID: " + this.f62033g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f61992b.m5565e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad Session cannot be null", -3));
            }
            int i = Configuration.getInt("com.verizon.ads.verizonssp", "serverMediationRequestTimeout", 10000);
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.f62013c) ? HttpUtils.getContentFromPostRequest(this.f62011a, this.f62013c, this.f62014d, i) : HttpUtils.getContentFromPostRequest(this.f62011a, i);
            if (contentFromPostRequest.code != 200) {
                VerizonSSPWaterfallProvider.f61992b.m5565e("Unable to retrieve content for server mediation playlist item, placement ID <" + this.f62034h + ">");
                return new Waterfall.WaterfallItem.FetchResult(VerizonSSPWaterfallProvider.m5067a(contentFromPostRequest));
            } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                VerizonSSPWaterfallProvider.f61992b.m5565e("Ad content is empty for server mediation playlist item, placement ID <" + this.f62034h + ">");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad content is empty", -1));
            } else {
                if (!TextUtils.isEmpty(this.f62012b)) {
                    if (contentFromPostRequest.content.matches("(?s)" + this.f62012b)) {
                        VerizonSSPWaterfallProvider.f61992b.m5565e("Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <" + this.f62034h + "> and content <" + contentFromPostRequest.content + ">");
                        return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "No ad response", -1));
                    }
                }
                HashMap hashMap = new HashMap();
                if (contentFromPostRequest.adMetadata != null) {
                    hashMap.put("response_headers", contentFromPostRequest.adMetadata);
                }
                if (!TextUtils.isEmpty(this.f62015e)) {
                    hashMap.put("CREATIVE_ID_HEADER", this.f62015e);
                }
                if (this.f62038l != null) {
                    hashMap.put(Reporting.Key.AD_SIZE, this.f62038l);
                }
                if (this.f62039m != null) {
                    hashMap.put("creative_info", this.f62039m);
                }
                HashMap hashMap2 = hashMap;
                if (hashMap.isEmpty()) {
                    hashMap2 = null;
                }
                return new Waterfall.WaterfallItem.FetchResult(new AdContent(contentFromPostRequest.content, hashMap2));
            }
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("ServerMediationWaterfallItem{url: %s, validateRegEx: %s, postContentType: %s, cridHeaderField: %s, adNet: %s, %s}", this.f62011a, this.f62012b, this.f62014d, this.f62015e, this.f62016f, super.toString());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem.class */
    public static class SuperAuctionWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a */
        final VerizonSSPWaterfall f62017a;

        /* renamed from: b */
        final JSONArray f62018b;

        /* renamed from: c */
        final JSONArray f62019c;

        /* renamed from: d */
        JSONObject f62020d;

        /* renamed from: e */
        String f62021e;

        /* renamed from: f */
        String f62022f;

        SuperAuctionWaterfallItem(VerizonSSPWaterfall verizonSSPWaterfall, JSONObject jSONObject) throws JSONException {
            super(verizonSSPWaterfall.f62027d, jSONObject);
            JSONArray jSONArray;
            this.f62017a = verizonSSPWaterfall;
            this.f62018b = jSONObject.getJSONArray("demandSources");
            this.f62019c = jSONObject.getJSONArray("bidders");
            int i = 0;
            while (true) {
                if (i >= this.f62019c.length()) {
                    break;
                }
                JSONObject jSONObject2 = this.f62019c.getJSONObject(i);
                if (jSONObject2.getString("type").equals("server_bid") && (jSONArray = this.f62018b) != null && jSONArray.length() > 0) {
                    this.f62020d = jSONObject2;
                    break;
                }
                i++;
            }
            JSONObject jSONObject3 = this.f62020d;
            if (jSONObject3 != null) {
                this.f62021e = jSONObject3.optString("bidPrice");
                this.f62022f = this.f62020d.optString("winUrl");
            }
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            return null;
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("SuperAuctionWaterfallItem{bidPrice: %s, winUrl: %s, demandSources: %s, bidderItems: %s, bidderItem: %s, %s}", this.f62021e, this.f62022f, this.f62018b, this.f62019c, this.f62020d, super.toString());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid.class */
    public static class VerizonSSPBid extends Bid {
        public Map<String, Integer> adSize;
        public final long bidCreationTime;
        public final JSONObject bidderItem;
        public final JSONArray demandSources;
        public final String itemId;
        public final VerizonSSPWaterfall waterfall;
        public final String winUrl;

        VerizonSSPBid(AdSession adSession, VerizonSSPWaterfall verizonSSPWaterfall, JSONArray jSONArray, JSONObject jSONObject, String str, String str2, long j, String str3, Map<String, Integer> map) {
            super(adSession, str);
            this.waterfall = verizonSSPWaterfall;
            this.demandSources = jSONArray;
            this.bidderItem = jSONObject;
            this.winUrl = str2;
            this.bidCreationTime = j;
            this.itemId = str3;
            this.adSize = map;
        }

        public String toString() {
            return String.format("VerizonSSPBid{waterfall: %s, demandSources: %s, bidderItem: %s, winUrl: %s, bidCreationTime: %d, itemId: %s, adSize: %s}", this.waterfall, this.demandSources, this.bidderItem, this.winUrl, Long.valueOf(this.bidCreationTime), this.itemId, this.adSize);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall.class */
    public static class VerizonSSPWaterfall implements Waterfall {

        /* renamed from: j */
        private static final Logger f62023j = Logger.getInstance(VerizonSSPWaterfall.class);

        /* renamed from: a */
        String f62024a;

        /* renamed from: b */
        String f62025b;

        /* renamed from: c */
        String f62026c;

        /* renamed from: d */
        String f62027d;

        /* renamed from: e */
        String f62028e;

        /* renamed from: f */
        String f62029f;

        /* renamed from: g */
        String f62030g;

        /* renamed from: h */
        boolean f62031h = false;

        /* renamed from: i */
        List<Waterfall.WaterfallItem> f62032i = new ArrayList();

        VerizonSSPWaterfall() {
        }

        /* renamed from: a */
        final void m5050a(Waterfall.WaterfallItem waterfallItem) {
            if (waterfallItem == null) {
                return;
            }
            this.f62032i.add(waterfallItem);
        }

        public void enableReporting() {
            if (Logger.isLogLevelEnabled(3)) {
                f62023j.m5567d(String.format("Enabling reporting for placement id <%s> and playlist <%s>.", this.f62027d, this));
            }
            this.f62031h = true;
        }

        @Override // com.verizon.ads.Waterfall
        public Map<String, Object> getMetadata() {
            HashMap hashMap = new HashMap();
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID, this.f62026c);
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME, this.f62028e);
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED, Boolean.valueOf(this.f62031h));
            String str = this.f62029f;
            if (str != null) {
                hashMap.put("impressionGroup", str);
            }
            return hashMap;
        }

        @Override // com.verizon.ads.Waterfall
        public Waterfall.WaterfallItem[] getWaterfallItems() {
            return (Waterfall.WaterfallItem[]) this.f62032i.toArray(new Waterfall.WaterfallItem[0]);
        }

        public String toString() {
            return String.format("VerizonSSPWaterfall{version: %s, handshakeId: %s, responseId: %s, placementId: %s, placementName: %s, impressionGroup: %s, siteId: %s, reportingEnabled: %s, waterfallItems: %s}", this.f62024a, this.f62025b, this.f62026c, this.f62027d, this.f62028e, this.f62029f, this.f62030g, Boolean.valueOf(this.f62031h), this.f62032i);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem.class */
    public static abstract class VerizonSSPWaterfallItem implements Waterfall.WaterfallItem {

        /* renamed from: g */
        final String f62033g;

        /* renamed from: h */
        final String f62034h;

        /* renamed from: i */
        final boolean f62035i;

        /* renamed from: j */
        String f62036j;

        /* renamed from: k */
        String f62037k;

        /* renamed from: l */
        Map<String, Integer> f62038l;

        /* renamed from: m */
        CreativeInfo f62039m;

        VerizonSSPWaterfallItem(String str, String str2) {
            this.f62034h = str;
            this.f62033g = str2;
            this.f62035i = false;
        }

        VerizonSSPWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            JSONObject optJSONObject;
            this.f62034h = str;
            if (jSONObject != null) {
                this.f62033g = jSONObject.getString("item");
                this.f62035i = jSONObject.optBoolean("enableEnhancedAdControl", false);
                this.f62036j = jSONObject.optString(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, null);
                this.f62037k = jSONObject.optString("price", null);
                String optString = jSONObject.optString("ad_crid", null);
                String optString2 = jSONObject.optString("ad_bidder_id", null);
                if (!TextUtils.isEmpty(optString) || !TextUtils.isEmpty(optString2)) {
                    this.f62039m = new CreativeInfo(optString, optString2);
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("adMetaData");
                if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("adSize")) == null) {
                    return;
                }
                HashMap hashMap = new HashMap();
                this.f62038l = hashMap;
                try {
                    hashMap.put("w", Integer.valueOf(optJSONObject.getInt("w")));
                    this.f62038l.put(C9568h.f32519a, Integer.valueOf(optJSONObject.getInt(C9568h.f32519a)));
                    return;
                } catch (JSONException e) {
                    VerizonSSPWaterfallProvider.f61992b.m5558w("Error occurred when trying to parse ad size from response", e);
                    this.f62038l = null;
                    return;
                }
            }
            throw new IllegalArgumentException("jsonObject cannot be null.");
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Map<String, Object> getMetadata() {
            HashMap hashMap = new HashMap();
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, this.f62033g);
            String str = this.f62036j;
            if (str != null) {
                hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, str);
            }
            String str2 = this.f62037k;
            if (str2 != null) {
                hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_PRU, str2);
            }
            return hashMap;
        }

        public String toString() {
            return String.format("placementId: %s, itemId: %s, enhancedAdControlEnabled: %s, buyer: %s, pru: %s, creativeInfo: %s", this.f62034h, this.f62033g, Boolean.valueOf(this.f62035i), this.f62036j, this.f62037k, this.f62039m);
        }
    }

    private VerizonSSPWaterfallProvider(Context context) {
        super(context);
        this.f61994d = context;
        this.f61995e = new EnvironmentInfo(context);
    }

    /* renamed from: a */
    static /* synthetic */ ErrorInfo m5067a(HttpUtils.Response response) {
        int i = response.code;
        return i != 200 ? (i == 408 || i == 504) ? new ErrorInfo(f61993c, "Timeout occurred retrieving ad content", -2) : new ErrorInfo(f61993c, String.format("HTTP error code %d retrieving ad content", Integer.valueOf(response.code)), -3) : new ErrorInfo(f61993c, "Empty content returned when retrieving ad content", -3);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0156 A[Catch: Exception -> 0x015e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x015e, blocks: (B:22:0x00c9, B:26:0x00e2, B:28:0x00ec, B:29:0x00fc, B:31:0x0106, B:32:0x0116, B:34:0x0120, B:35:0x0130, B:37:0x013a, B:38:0x0147, B:43:0x0156), top: B:52:0x00c9, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0188 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.verizon.ads.Waterfall m5063a(org.json.JSONObject r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.m5063a(org.json.JSONObject, java.lang.String):com.verizon.ads.Waterfall");
    }

    /* renamed from: a */
    static /* synthetic */ HttpUtils.Response m5064a(String str, String str2, String str3, Map map, int i, PlayListRequestListener playListRequestListener) {
        HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(str, str2, str3, map, i);
        if (contentFromPostRequest.code != 200) {
            playListRequestListener.m5052a(new ErrorInfo(f61993c, String.format("PlayList request failed with HTTP Status: %d", Integer.valueOf(contentFromPostRequest.code)), 2));
            return null;
        } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
            playListRequestListener.m5052a(new ErrorInfo(f61993c, "PlayList request returned no content", 4));
            return null;
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61992b;
                logger.m5567d("Response content:\n" + contentFromPostRequest.content);
            }
            return contentFromPostRequest;
        }
    }

    /* renamed from: a */
    static String m5071a() {
        return Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", "https://ads.nexage.com");
    }

    /* renamed from: a */
    private JSONObject m5070a(RequestMetadata requestMetadata) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        m5062a(jSONObject2, "gdpr", Boolean.valueOf(VASAds.isAnonymous()));
        if (requestMetadata == null) {
            return jSONObject2;
        }
        jSONObject2.put(APP_DATA_COPPA_KEY, VASAds.getCoppa());
        jSONObject2.put("dcn", VASAds.getSiteId());
        Map map = (Map) Configuration.get(VASAds.DOMAIN, VASAds.USER_PRIVACY_DATA_KEY, Map.class, null);
        JSONObject jSONObject3 = toJSONObject(new PrivacyDataHelper(map).getConsentStringsMap());
        if (jSONObject3 != null && jSONObject3.length() > 0) {
            jSONObject2.put("consentstrings", jSONObject3);
        }
        JSONObject jSONObject4 = toJSONObject(map);
        if (jSONObject4 != null && jSONObject4.length() > 0) {
            jSONObject2.put("privacymap", jSONObject4);
        }
        jSONObject2.put("orients", toJSONArray(requestMetadata.getSupportedOrientations()));
        Map<String, Object> appData = requestMetadata.getAppData();
        if (appData != null) {
            jSONObject2.put(APP_DATA_MEDIATOR_KEY, appData.get(APP_DATA_MEDIATOR_KEY));
        }
        Map<String, Object> placementData = requestMetadata.getPlacementData();
        if (placementData != null) {
            Object obj = placementData.get("impressionGroup");
            if (!TextUtils.isEmpty((String) obj)) {
                jSONObject2.put("grp", obj);
            }
            jSONObject2.put(PLACEMENT_DATA_REFRESH_RATE_KEY, placementData.get(PLACEMENT_DATA_REFRESH_RATE_KEY));
        }
        Map<String, Object> extras = requestMetadata.getExtras();
        if (extras != null) {
            Object obj2 = extras.get("customTargeting");
            if (obj2 instanceof Map) {
                Map map2 = (Map) obj2;
                if (!map2.isEmpty() && (jSONObject = toJSONObject(map2)) != null && jSONObject.length() > 0) {
                    jSONObject2.put("targeting", jSONObject);
                }
            }
            Object obj3 = extras.get(USER_DATA_KEYWORDS_KEY);
            if (obj3 instanceof List) {
                List list = (List) obj3;
                if (!list.isEmpty()) {
                    jSONObject2.put(USER_DATA_KEYWORDS_KEY, toJSONArray(list));
                }
            }
        }
        jSONObject2.put("curOrient", this.f61995e.getDeviceInfo().getConfigurationOrientation());
        return jSONObject2;
    }

    /* renamed from: a */
    static JSONObject m5066a(String str) {
        JSONObject jSONObject;
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("playlist");
            int i = 0;
            while (true) {
                if (i >= jSONArray.length()) {
                    return null;
                }
                try {
                    jSONObject = jSONArray.getJSONObject(i);
                } catch (Exception e) {
                    f61992b.m5564e("Unable to parse play list item<" + i + ">", e);
                }
                if ("redirect".equalsIgnoreCase(jSONObject.getString("adnet"))) {
                    return jSONObject;
                }
                i++;
            }
        } catch (JSONException e2) {
            f61992b.m5564e("Unable to parse redirect play list", e2);
            return null;
        }
    }

    /* renamed from: a */
    private JSONObject m5061a(boolean z) throws JSONException {
        EnvironmentInfo.CameraType[] cameras;
        Object id;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("os", Constants.ANDROID_PLATFORM);
        jSONObject.put("osv", Build.VERSION.RELEASE);
        EnvironmentInfo.DeviceInfo deviceInfo = this.f61995e.getDeviceInfo();
        EnvironmentInfo.NetworkOperatorInfo networkOperatorInfo = this.f61995e.getNetworkOperatorInfo();
        m5062a(jSONObject, "model", deviceInfo.getModel());
        m5062a(jSONObject, "manufacturer", deviceInfo.getManufacturer());
        m5062a(jSONObject, "name", deviceInfo.getName());
        m5062a(jSONObject, JsonPOJOBuilder.DEFAULT_BUILD_METHOD, deviceInfo.getOSBuildNumber());
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("coreVer", VASAds.getSDKInfo().version);
        Object obj = null;
        String string = Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "editionName", null);
        String string2 = Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "editionVersion", null);
        if (string != null && string2 != null) {
            jSONObject2.put("editionId", String.format("%s-%s", string, string2));
        }
        Set<Plugin> registeredPlugins = VASAds.getRegisteredPlugins();
        if (!registeredPlugins.isEmpty()) {
            JSONObject jSONObject3 = new JSONObject();
            for (Plugin plugin : registeredPlugins) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("name", plugin.getName());
                jSONObject4.put("version", plugin.getVersion());
                jSONObject4.put("author", plugin.getAuthor());
                jSONObject4.put("email", plugin.getEmail());
                jSONObject4.put("website", plugin.getWebsite());
                jSONObject4.put("minApiLevel", plugin.getMinApiLevel());
                jSONObject4.put("enabled", VASAds.isPluginEnabled(plugin.getId()));
                jSONObject3.put(plugin.getId(), jSONObject4);
            }
            jSONObject2.put("sdkPlugins", jSONObject3);
        }
        jSONObject.put("sdkInfo", jSONObject2);
        if (networkOperatorInfo != null) {
            m5062a(jSONObject, "mcc", networkOperatorInfo.getMCC());
            m5062a(jSONObject, "mnc", networkOperatorInfo.getMNC());
            m5062a(jSONObject, "cellSignalDbm", networkOperatorInfo.getCellSignalDbm());
            m5062a(jSONObject, "carrier", networkOperatorInfo.getNetworkOperatorName());
        }
        jSONObject.put("lang", deviceInfo.getLanguage());
        jSONObject.put("country", deviceInfo.getCountryCode());
        jSONObject.put("ua", deviceInfo.getUserAgent());
        if (z) {
            jSONObject.put("secureContent", true);
        }
        EnvironmentInfo.AdvertisingIdInfo advertisingIdInfo = this.f61995e.getAdvertisingIdInfo();
        if (advertisingIdInfo != null && (id = advertisingIdInfo.getId()) != null) {
            jSONObject.put("ifa", id);
            jSONObject.put("lmt", advertisingIdInfo.isLimitAdTrackingEnabled());
        }
        EnvironmentInfo.ScreenInfo screenInfo = this.f61995e.getDeviceInfo().getScreenInfo();
        jSONObject.put("w", screenInfo.getWidth());
        jSONObject.put(C9568h.f32519a, screenInfo.getHeight());
        jSONObject.put("screenScale", screenInfo.getDensity());
        jSONObject.put("ppi", screenInfo.getDensityDpi());
        jSONObject.put("natOrient", deviceInfo.getNaturalOrientation());
        m5062a(jSONObject, "storage", deviceInfo.getAvailableStorage());
        m5062a(jSONObject, "vol", deviceInfo.getVolume(3));
        m5062a(jSONObject, "headphones", deviceInfo.hasHeadphonesPluggedIn());
        m5062a(jSONObject, "charging", deviceInfo.isCharging());
        m5062a(jSONObject, "charge", deviceInfo.getBatteryLevel());
        NetworkInfo networkInfo = deviceInfo.getNetworkInfo();
        if (networkInfo != null) {
            if (networkInfo.isConnected()) {
                int type = networkInfo.getType();
                if (type == 1) {
                    obj = "wifi";
                } else {
                    if (type == 0) {
                        switch (networkInfo.getSubtype()) {
                            case 1:
                                obj = "gprs";
                                break;
                            case 2:
                                obj = "edge";
                                break;
                            case 3:
                                obj = "umts";
                                break;
                            case 4:
                                obj = "cdma";
                                break;
                            case 5:
                                obj = "evdo_0";
                                break;
                            case 6:
                                obj = "evdo_a";
                                break;
                            case 7:
                                obj = "1xrtt";
                                break;
                            case 8:
                                obj = "hsdpa";
                                break;
                            case 9:
                                obj = "hsupa";
                                break;
                            case 10:
                                obj = "hspa";
                                break;
                            case 11:
                                obj = "iden";
                                break;
                            case 12:
                                obj = "evdo_b";
                                break;
                            case 13:
                                obj = "lte";
                                break;
                            case 14:
                                obj = "ehrpd";
                                break;
                            case 15:
                                obj = "hspap";
                                break;
                        }
                    }
                    obj = "unknown";
                }
            } else {
                obj = "offline";
            }
        }
        m5062a(jSONObject, "connectionType", obj);
        m5062a(jSONObject, "ip", deviceInfo.getIP());
        Location location = this.f61995e.getLocation();
        if (location != null && VASAds.isLocationEnabled()) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("lat", location.getLatitude());
            jSONObject5.put("lon", location.getLongitude());
            jSONObject5.put("src", location.getProvider());
            jSONObject5.put("ts", location.getTime() / 1000);
            if (location.hasAccuracy()) {
                jSONObject5.put("horizAcc", location.getAccuracy());
            }
            if (location.hasSpeed()) {
                jSONObject5.put("speed", location.getSpeed());
            }
            if (location.hasBearing()) {
                jSONObject5.put("bearing", location.getBearing());
            }
            if (location.hasAltitude()) {
                jSONObject5.put("alt", location.getAltitude());
            }
            jSONObject.put("loc", jSONObject5);
        }
        JSONObject jSONObject6 = new JSONObject();
        for (EnvironmentInfo.CameraType cameraType : deviceInfo.getCameras()) {
            if (cameraType == EnvironmentInfo.CameraType.FRONT) {
                jSONObject6.put("cameraFront", "true");
            } else if (cameraType == EnvironmentInfo.CameraType.BACK) {
                jSONObject6.put("cameraRear", "true");
            }
        }
        putAsStringIfNotNull(jSONObject6, "nfc", deviceInfo.hasNFC());
        putAsStringIfNotNull(jSONObject6, "bt", deviceInfo.hasBluetooth());
        putAsStringIfNotNull(jSONObject6, "mic", deviceInfo.hasMicrophone());
        putAsStringIfNotNull(jSONObject6, "gps", deviceInfo.hasGPS());
        putIfTrue(jSONObject, "deviceFeatures", jSONObject6, Boolean.valueOf(!VASAds.isAnonymous()));
        return jSONObject;
    }

    /* renamed from: a */
    private void m5069a(final RequestMetadata requestMetadata, final PlayListRequestListener playListRequestListener, final int i) {
        ErrorInfo errorInfo = !Configuration.getBoolean(VASAds.DOMAIN, VASAds.SDK_ENABLED_KEY, true) ? new ErrorInfo(VerizonSSPWaterfallProvider.class.getName(), "Verizon Ads SDK is disabled.", -3) : requestMetadata == null ? new ErrorInfo(VerizonSSPWaterfallProvider.class.getName(), "No request metadata provided for request", -3) : null;
        if (errorInfo == null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    if (requestMetadata == null) {
                        playListRequestListener.m5052a(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Ad session cannot be null", 5));
                        return;
                    }
                    String concat = VerizonSSPWaterfallProvider.m5071a().concat("/admax/sdk/playlist/3");
                    String m5068a = VerizonSSPWaterfallProvider.this.m5068a(requestMetadata, URLUtil.isHttpsUrl(concat));
                    if (m5068a == null) {
                        playListRequestListener.m5052a(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Failed to build a playlist request object.", 5));
                        return;
                    }
                    if (Logger.isLogLevelEnabled(3)) {
                        VerizonSSPWaterfallProvider.f61992b.m5567d(String.format("Request\n\turl: %s\n\tpost data: %s", concat, m5068a));
                    }
                    HttpUtils.Response m5064a = VerizonSSPWaterfallProvider.m5064a(concat, m5068a, "application/json", null, i, playListRequestListener);
                    if (m5064a == null) {
                        return;
                    }
                    HttpUtils.Response response = m5064a;
                    if (VerizonSSPWaterfallProvider.m5057b(m5064a.content)) {
                        try {
                            JSONObject jSONObject = VerizonSSPWaterfallProvider.m5066a(m5064a.content).getJSONObject("req");
                            String string = jSONObject.getString("url");
                            String string2 = jSONObject.getString("postBody");
                            String string3 = jSONObject.getString("postType");
                            if (TextUtils.isEmpty(string)) {
                                playListRequestListener.m5052a(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "PlayList redirect response did not contain a redirect URL", 9));
                                return;
                            }
                            if (Logger.isLogLevelEnabled(3)) {
                                VerizonSSPWaterfallProvider.f61992b.m5567d(String.format("Playlist redirect url provided = %s", string));
                            }
                            HashMap hashMap = new HashMap();
                            hashMap.put("X-VAS-RESPONSE-FORMAT", "waterfall");
                            HttpUtils.Response m5064a2 = VerizonSSPWaterfallProvider.m5064a(string, string2, string3, hashMap, i, playListRequestListener);
                            response = m5064a2;
                            if (m5064a2 == null) {
                                return;
                            }
                        } catch (Exception e) {
                            ErrorInfo errorInfo2 = new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Malformed playlist item for adnet: redirect.", 9);
                            VerizonSSPWaterfallProvider.f61992b.m5566d(errorInfo2.toString(), e);
                            playListRequestListener.m5052a(errorInfo2);
                            return;
                        }
                    }
                    List<Waterfall> m5056b = VerizonSSPWaterfallProvider.m5056b(response.content, requestMetadata);
                    if (m5056b.isEmpty()) {
                        playListRequestListener.m5052a(new ErrorInfo(VerizonSSPWaterfallProvider.f61993c, "Playlist response did not return a valid waterfall.", 3));
                    } else {
                        playListRequestListener.m5051a(m5056b);
                    }
                }
            });
            return;
        }
        f61992b.m5565e(errorInfo.toString());
        playListRequestListener.m5052a(errorInfo);
    }

    /* renamed from: a */
    private static void m5062a(JSONObject jSONObject, String str, Object obj) {
        if (str == null) {
            f61992b.m5565e("Unable to put value, specified key is null");
        } else if (obj == null) {
        } else {
            try {
                jSONObject.put(str, obj);
            } catch (Exception e) {
                Logger logger = f61992b;
                logger.m5564e("Error adding " + str + ":" + obj + " to JSON", e);
            }
        }
    }

    /* renamed from: b */
    public static List<Waterfall> m5056b(String str, RequestMetadata requestMetadata) {
        ArrayList arrayList = new ArrayList();
        if ("[".equals(String.valueOf(str.charAt(0)))) {
            try {
                f61992b.m5567d("Parsing playlist array resopnse");
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    Waterfall m5063a = m5063a(jSONArray.getJSONObject(i), (String) requestMetadata.getPlacementData().get("impressionGroup"));
                    if (m5063a != null) {
                        arrayList.add(m5063a);
                    }
                }
            } catch (Exception e) {
                f61992b.m5564e("Unable to parse playlist array response", e);
            }
        } else {
            f61992b.m5567d("Parsing single playlist resopnse");
            try {
                Waterfall m5063a2 = m5063a(new JSONObject(str), (String) requestMetadata.getPlacementData().get("impressionGroup"));
                if (m5063a2 != null) {
                    arrayList.add(m5063a2);
                }
            } catch (Exception e2) {
                f61992b.m5564e("Unable to parse single playlist response", e2);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        if (r0 != null) goto L11;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.json.JSONObject m5059b(com.verizon.ads.RequestMetadata r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            java.util.Map r0 = r0.getExtras()
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L47
            r0 = r6
            java.lang.String r1 = "testBidderID"
            java.lang.Object r0 = r0.get(r1)
            r7 = r0
            r0 = r6
            java.lang.String r1 = "testCreativeID"
            java.lang.Object r0 = r0.get(r1)
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L2f
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L47
        L2f:
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "bidder"
            r2 = r7
            m5062a(r0, r1, r2)
            r0 = r4
            java.lang.String r1 = "creativeId"
            r2 = r6
            m5062a(r0, r1, r2)
        L47:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.m5059b(com.verizon.ads.RequestMetadata):org.json.JSONObject");
    }

    /* renamed from: b */
    private JSONObject m5058b(RequestMetadata requestMetadata, boolean z) {
        JSONObject jSONObject;
        Map<String, Object> userData;
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ver", "3");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("appId", this.f61994d.getPackageName());
            jSONObject3.put("name", m5054d());
            jSONObject3.put("ver", m5053e());
            jSONObject2.put("app", jSONObject3);
            jSONObject2.put("env", m5061a(z));
            jSONObject2.put("req", m5070a(requestMetadata));
            if (VASAds.isAnonymous() || requestMetadata == null || (userData = requestMetadata.getUserData()) == null) {
                jSONObject = null;
            } else {
                jSONObject = new JSONObject();
                jSONObject.put(USER_DATA_AGE_KEY, userData.get(USER_DATA_AGE_KEY));
                jSONObject.put("kids", userData.get(USER_DATA_CHILDREN_KEY));
                jSONObject.put("hhi", userData.get(USER_DATA_INCOME_KEY));
                jSONObject.put("edu", userData.get(USER_DATA_EDUCATION_KEY));
                jSONObject.put("eth", userData.get(USER_DATA_ETHNICITY_KEY));
                jSONObject.put(USER_DATA_GENDER_KEY, userData.get(USER_DATA_GENDER_KEY));
                Object obj = userData.get(USER_DATA_KEYWORDS_KEY);
                if ((obj instanceof List) && !((List) obj).isEmpty()) {
                    jSONObject.put(USER_DATA_KEYWORDS_KEY, toJSONArray((List) obj));
                }
                jSONObject.put(USER_DATA_MARITAL_STATUS_KEY, userData.get(USER_DATA_MARITAL_STATUS_KEY));
                jSONObject.put(USER_DATA_POLITICS_KEY, userData.get(USER_DATA_POLITICS_KEY));
                jSONObject.put("zip", userData.get(USER_DATA_POSTAL_CODE_KEY));
                Object obj2 = userData.get(USER_DATA_DOB_KEY);
                if (obj2 instanceof Date) {
                    jSONObject.put(USER_DATA_DOB_KEY, new SimpleDateFormat("yyyyMMdd").format(obj2));
                }
                jSONObject.put(USER_DATA_STATE_KEY, userData.get(USER_DATA_STATE_KEY));
                jSONObject.put("country", userData.get("country"));
                jSONObject.put(USER_DATA_DMA_KEY, userData.get(USER_DATA_DMA_KEY));
            }
            jSONObject2.put("user", jSONObject);
            m5062a(jSONObject2, "testing", m5059b(requestMetadata));
            return jSONObject2;
        } catch (Exception e) {
            f61992b.m5564e("Error creating JSON request", e);
            return null;
        }
    }

    /* renamed from: b */
    static boolean m5057b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.replaceAll("\\s+", "").contains("\"adnet\":\"redirect\"");
    }

    public static Object buildFromObject(Object obj) {
        if (obj instanceof Map) {
            return toJSONObject((Map) obj);
        }
        JSONArray jSONArray = obj;
        if (obj instanceof List) {
            jSONArray = toJSONArray((List) obj);
        }
        return jSONArray;
    }

    /* renamed from: d */
    private String m5054d() {
        try {
            PackageManager packageManager = this.f61994d.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.f61994d.getPackageName(), 0)).toString();
        } catch (Throwable th) {
            f61992b.m5564e("Unable to determine package name", th);
            return null;
        }
    }

    /* renamed from: e */
    private String m5053e() {
        try {
            PackageInfo packageInfo = this.f61994d.getPackageManager().getPackageInfo(this.f61994d.getPackageName(), 0);
            return (packageInfo == null || packageInfo.versionName == null) ? "unknown" : packageInfo.versionName;
        } catch (Throwable th) {
            f61992b.m5564e("Unable to determine application version", th);
            return "unknown";
        }
    }

    public static String getRequiredPropertyAsString(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject != null) {
            String string = jSONObject.getString(str);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            throw new JSONException("The value for key '" + str + "' is null or empty.");
        }
        throw new JSONException("The passed jsonObject is null.");
    }

    public static void putAsStringIfNotNull(JSONObject jSONObject, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m5062a(jSONObject, str, String.valueOf(obj));
    }

    public static void putIfTrue(JSONObject jSONObject, String str, Object obj, Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            m5062a(jSONObject, str, obj);
        }
    }

    public static JSONArray toJSONArray(Collection collection) {
        if (collection == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Object obj : collection) {
            jSONArray.put(buildFromObject(obj));
        }
        return jSONArray;
    }

    public static JSONObject toJSONObject(Map<?, ?> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                jSONObject.put(entry.getKey().toString(), buildFromObject(entry.getValue()));
            }
        } catch (Exception e) {
            f61992b.m5564e("Error building JSON from Map", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    final String m5068a(RequestMetadata requestMetadata, boolean z) {
        JSONObject m5058b = m5058b(requestMetadata, z);
        if (m5058b == null) {
            return null;
        }
        if (requestMetadata == null) {
            return m5058b.toString();
        }
        try {
            JSONObject jSONObject = m5058b.getJSONObject("req");
            Map<String, Object> placementData = requestMetadata.getPlacementData();
            if (placementData != null) {
                jSONObject.put("posType", placementData.get("type"));
                jSONObject.put("posId", placementData.get("id"));
                Object obj = placementData.get(PLACEMENT_DATA_AD_SIZES_KEY);
                if ((obj instanceof List) && !((List) obj).isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(PLACEMENT_DATA_AD_SIZES_KEY, toJSONArray((List) obj));
                    jSONObject.put("posTypeAttrs", jSONObject2);
                }
                if (placementData.containsKey(PLACEMENT_DATA_NATIVE_TYPES_KEY)) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("nativeType", toJSONArray((List) placementData.get(PLACEMENT_DATA_NATIVE_TYPES_KEY)));
                    jSONObject.put("posTypeAttrs", jSONObject3);
                }
            }
            return m5058b.toString();
        } catch (Exception e) {
            f61992b.m5564e("Error building JSON request", e);
            return null;
        }
    }

    @Override // com.verizon.ads.WaterfallProvider
    public String getBiddingToken(RequestMetadata requestMetadata) {
        JSONObject m5058b = m5058b(requestMetadata, URLUtil.isHttpsUrl(((String) Configuration.get(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", String.class, "https://ads.nexage.com")).concat("/admax/sdk/playlist/3")));
        if (m5058b == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("waterfallRequest", m5058b);
            return jSONObject.toString();
        } catch (Exception e) {
            f61992b.m5564e("Error creating JSON bidding token", e);
            return null;
        }
    }

    @Override // com.verizon.ads.WaterfallProvider
    public boolean isSuperAuctionSupported() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x01d8 A[Catch: Exception -> 0x01f7, TRY_ENTER, TryCatch #0 {Exception -> 0x01f7, blocks: (B:23:0x0159, B:27:0x018e, B:29:0x0199, B:30:0x01a9, B:32:0x01b4, B:33:0x01c7, B:38:0x01d8, B:40:0x01e0, B:42:0x01ef), top: B:53:0x0159 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0204 A[SYNTHETIC] */
    @Override // com.verizon.ads.WaterfallProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(com.verizon.ads.Bid r9, int r10, com.verizon.ads.WaterfallProvider.WaterfallListener r11) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.load(com.verizon.ads.Bid, int, com.verizon.ads.WaterfallProvider$WaterfallListener):void");
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void load(RequestMetadata requestMetadata, int i, WaterfallProvider.WaterfallListener waterfallListener) {
        m5069a(requestMetadata, new PlayListRequestListener(waterfallListener, requestMetadata), i);
    }

    @Override // com.verizon.ads.Component
    public void release() {
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void requestBid(RequestMetadata requestMetadata, int i, BidRequestListener bidRequestListener) {
        m5069a(requestMetadata, new PlayListRequestListener(bidRequestListener, requestMetadata), i);
    }
}
