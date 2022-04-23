package com.verizon.ads.verizonsspwaterfallprovider;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.NetworkInfo;
import android.os.Build;
import android.webkit.URLUtil;
import com.explorestack.iab.mraid.h;
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

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35777b = Logger.getInstance(VerizonSSPWaterfallProvider.class);

    /* renamed from: c  reason: collision with root package name */
    private static final String f35778c = VerizonSSPWaterfallProvider.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    private final Context f35779d;
    private final EnvironmentInfo e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem.class */
    public static class AdContentWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a  reason: collision with root package name */
        final String f35786a;

        /* renamed from: b  reason: collision with root package name */
        final String f35787b;

        /* renamed from: c  reason: collision with root package name */
        final String f35788c;

        AdContentWaterfallItem(String str, String str2, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            this.f35786a = jSONObject.getString(str2);
            this.f35787b = jSONObject.optString(APIMeta.CREATIVE_ID, null);
            this.f35788c = jSONObject.optString("adnet", null);
        }

        AdContentWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            this(str, "value", jSONObject);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = VerizonSSPWaterfallProvider.f35777b;
                logger.d("Processing ad content playlist item ID: " + this.g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f35777b.e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad Session cannot be null", -3));
            } else if (TextUtils.isEmpty(this.f35786a)) {
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad content is empty", -3));
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put(APIMeta.CREATIVE_ID, this.f35787b);
                hashMap.put("adnet", this.f35788c);
                if (this.l != null) {
                    hashMap.put(Reporting.Key.AD_SIZE, this.l);
                }
                if (this.m != null) {
                    hashMap.put("creative_info", this.m);
                }
                return new Waterfall.WaterfallItem.FetchResult(new AdContent(this.f35786a, hashMap));
            }
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("AdContentWaterfallItem{creativeId: %s, adnet: %s, %s}", this.f35787b, this.f35788c, super.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem.class */
    public static class ExchangeWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a  reason: collision with root package name */
        final String f35789a;

        /* renamed from: b  reason: collision with root package name */
        final String f35790b;

        /* renamed from: c  reason: collision with root package name */
        final String f35791c;

        ExchangeWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject("req");
            this.f35789a = jSONObject2.getString("url");
            this.f35790b = jSONObject2.optString("postBody", null);
            this.f35791c = jSONObject2.optString("postType", null);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = VerizonSSPWaterfallProvider.f35777b;
                logger.d("Processing exchange mediation playlist item ID: " + this.g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f35777b.e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad Session cannot be null", -3));
            }
            int i = Configuration.getInt("com.verizon.ads.verizonssp", "exchangeRequestTimeout", 10000);
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.f35790b) ? HttpUtils.getContentFromPostRequest(this.f35789a, this.f35790b, this.f35791c, i) : HttpUtils.getContentFromPostRequest(this.f35789a, i);
            if (contentFromPostRequest.code != 200) {
                Logger logger2 = VerizonSSPWaterfallProvider.f35777b;
                logger2.e("Unable to retrieve content for exchange mediation playlist item, placement ID <" + this.h + ">");
                return new Waterfall.WaterfallItem.FetchResult(VerizonSSPWaterfallProvider.a(contentFromPostRequest));
            } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                Logger logger3 = VerizonSSPWaterfallProvider.f35777b;
                logger3.e("Ad content is empty for exchange mediation playlist item, placement ID <" + this.h + ">");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "No ad response", -1));
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(contentFromPostRequest.content);
                    String string = jSONObject.getString("ad");
                    this.j = jSONObject.optString("ad_buyer", null);
                    this.k = jSONObject.optString("ad_pru", null);
                    CreativeInfo creativeInfo = new CreativeInfo(jSONObject.optString("ad_crid", null), jSONObject.optString("ad_bidder_id", null));
                    if (Logger.isLogLevelEnabled(3)) {
                        VerizonSSPWaterfallProvider.f35777b.d("Exchange waterfall item creative info: ".concat(String.valueOf(creativeInfo)));
                    }
                    HashMap hashMap = new HashMap();
                    if (contentFromPostRequest.adMetadata != null) {
                        hashMap.put("response_headers", contentFromPostRequest.adMetadata);
                    }
                    hashMap.put("creative_info", creativeInfo);
                    if (this.l != null) {
                        hashMap.put(Reporting.Key.AD_SIZE, this.l);
                    }
                    return new Waterfall.WaterfallItem.FetchResult(new AdContent(string, hashMap));
                } catch (JSONException e) {
                    VerizonSSPWaterfallProvider.f35777b.e("Error occurred when trying to parse ad content from exchange response", e);
                    return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Error parsing ad content", -3));
                }
            }
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("ExchangeWaterfallItem{url: %s, postContentType: %s, %s}", this.f35789a, this.f35791c, super.toString());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            return new VerizonSSPWaterfallProvider(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener.class */
    public static class PlayListRequestListener {

        /* renamed from: a  reason: collision with root package name */
        final BidRequestListener f35792a;

        /* renamed from: b  reason: collision with root package name */
        final WaterfallProvider.WaterfallListener f35793b;

        /* renamed from: c  reason: collision with root package name */
        final RequestMetadata f35794c;

        PlayListRequestListener(BidRequestListener bidRequestListener, RequestMetadata requestMetadata) {
            this(bidRequestListener, null, requestMetadata);
        }

        PlayListRequestListener(BidRequestListener bidRequestListener, WaterfallProvider.WaterfallListener waterfallListener, RequestMetadata requestMetadata) {
            this.f35792a = bidRequestListener;
            this.f35793b = waterfallListener;
            this.f35794c = requestMetadata;
        }

        PlayListRequestListener(WaterfallProvider.WaterfallListener waterfallListener, RequestMetadata requestMetadata) {
            this(null, waterfallListener, requestMetadata);
        }

        final void a(ErrorInfo errorInfo) {
            WaterfallProvider.WaterfallListener waterfallListener = this.f35793b;
            if (waterfallListener != null) {
                waterfallListener.onAdSessionsReceived(null, errorInfo);
                return;
            }
            BidRequestListener bidRequestListener = this.f35792a;
            if (bidRequestListener != null) {
                bidRequestListener.onComplete(null, errorInfo);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x015c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void a(java.util.List<com.verizon.ads.Waterfall> r14) {
            /*
                Method dump skipped, instructions count: 391
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.PlayListRequestListener.a(java.util.List):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem.class */
    public static class ServerMediationWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a  reason: collision with root package name */
        final String f35795a;

        /* renamed from: b  reason: collision with root package name */
        final String f35796b;

        /* renamed from: c  reason: collision with root package name */
        final String f35797c;

        /* renamed from: d  reason: collision with root package name */
        final String f35798d;
        final String e;
        final String f;

        ServerMediationWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            super(str, jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject("req");
            this.f35795a = jSONObject2.getString("url");
            this.f35796b = jSONObject2.optString("validRegex", null);
            this.f35797c = jSONObject2.optString("postBody", null);
            this.f35798d = jSONObject2.optString("postType", null);
            this.e = jSONObject.optString("cridHeaderField", null);
            this.f = jSONObject.optString("adnet", null);
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = VerizonSSPWaterfallProvider.f35777b;
                logger.d("Processing server mediation playlist item ID: " + this.g);
            }
            if (adSession == null) {
                VerizonSSPWaterfallProvider.f35777b.e("Ad session cannot be null");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad Session cannot be null", -3));
            }
            int i = Configuration.getInt("com.verizon.ads.verizonssp", "serverMediationRequestTimeout", 10000);
            HttpUtils.Response contentFromPostRequest = !TextUtils.isEmpty(this.f35797c) ? HttpUtils.getContentFromPostRequest(this.f35795a, this.f35797c, this.f35798d, i) : HttpUtils.getContentFromPostRequest(this.f35795a, i);
            if (contentFromPostRequest.code != 200) {
                Logger logger2 = VerizonSSPWaterfallProvider.f35777b;
                logger2.e("Unable to retrieve content for server mediation playlist item, placement ID <" + this.h + ">");
                return new Waterfall.WaterfallItem.FetchResult(VerizonSSPWaterfallProvider.a(contentFromPostRequest));
            } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                Logger logger3 = VerizonSSPWaterfallProvider.f35777b;
                logger3.e("Ad content is empty for server mediation playlist item, placement ID <" + this.h + ">");
                return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad content is empty", -1));
            } else {
                if (!TextUtils.isEmpty(this.f35796b)) {
                    String str = contentFromPostRequest.content;
                    if (str.matches("(?s)" + this.f35796b)) {
                        Logger logger4 = VerizonSSPWaterfallProvider.f35777b;
                        logger4.e("Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <" + this.h + "> and content <" + contentFromPostRequest.content + ">");
                        return new Waterfall.WaterfallItem.FetchResult(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "No ad response", -1));
                    }
                }
                HashMap hashMap = new HashMap();
                if (contentFromPostRequest.adMetadata != null) {
                    hashMap.put("response_headers", contentFromPostRequest.adMetadata);
                }
                if (!TextUtils.isEmpty(this.e)) {
                    hashMap.put("CREATIVE_ID_HEADER", this.e);
                }
                if (this.l != null) {
                    hashMap.put(Reporting.Key.AD_SIZE, this.l);
                }
                if (this.m != null) {
                    hashMap.put("creative_info", this.m);
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
            return String.format("ServerMediationWaterfallItem{url: %s, validateRegEx: %s, postContentType: %s, cridHeaderField: %s, adNet: %s, %s}", this.f35795a, this.f35796b, this.f35798d, this.e, this.f, super.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem.class */
    public static class SuperAuctionWaterfallItem extends VerizonSSPWaterfallItem {

        /* renamed from: a  reason: collision with root package name */
        final VerizonSSPWaterfall f35799a;

        /* renamed from: b  reason: collision with root package name */
        final JSONArray f35800b;

        /* renamed from: c  reason: collision with root package name */
        final JSONArray f35801c;

        /* renamed from: d  reason: collision with root package name */
        JSONObject f35802d;
        String e;
        String f;

        SuperAuctionWaterfallItem(VerizonSSPWaterfall verizonSSPWaterfall, JSONObject jSONObject) throws JSONException {
            super(verizonSSPWaterfall.f35806d, jSONObject);
            JSONArray jSONArray;
            this.f35799a = verizonSSPWaterfall;
            this.f35800b = jSONObject.getJSONArray("demandSources");
            this.f35801c = jSONObject.getJSONArray("bidders");
            int i = 0;
            while (true) {
                if (i >= this.f35801c.length()) {
                    break;
                }
                JSONObject jSONObject2 = this.f35801c.getJSONObject(i);
                if (jSONObject2.getString("type").equals("server_bid") && (jSONArray = this.f35800b) != null && jSONArray.length() > 0) {
                    this.f35802d = jSONObject2;
                    break;
                }
                i++;
            }
            JSONObject jSONObject3 = this.f35802d;
            if (jSONObject3 != null) {
                this.e = jSONObject3.optString("bidPrice");
                this.f = this.f35802d.optString("winUrl");
            }
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            return null;
        }

        @Override // com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.VerizonSSPWaterfallItem
        public String toString() {
            return String.format("SuperAuctionWaterfallItem{bidPrice: %s, winUrl: %s, demandSources: %s, bidderItems: %s, bidderItem: %s, %s}", this.e, this.f, this.f35800b, this.f35801c, this.f35802d, super.toString());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall.class */
    public static class VerizonSSPWaterfall implements Waterfall {
        private static final Logger j = Logger.getInstance(VerizonSSPWaterfall.class);

        /* renamed from: a  reason: collision with root package name */
        String f35803a;

        /* renamed from: b  reason: collision with root package name */
        String f35804b;

        /* renamed from: c  reason: collision with root package name */
        String f35805c;

        /* renamed from: d  reason: collision with root package name */
        String f35806d;
        String e;
        String f;
        String g;
        boolean h = false;
        List<Waterfall.WaterfallItem> i = new ArrayList();

        VerizonSSPWaterfall() {
        }

        final void a(Waterfall.WaterfallItem waterfallItem) {
            if (waterfallItem != null) {
                this.i.add(waterfallItem);
            }
        }

        public void enableReporting() {
            if (Logger.isLogLevelEnabled(3)) {
                j.d(String.format("Enabling reporting for placement id <%s> and playlist <%s>.", this.f35806d, this));
            }
            this.h = true;
        }

        @Override // com.verizon.ads.Waterfall
        public Map<String, Object> getMetadata() {
            HashMap hashMap = new HashMap();
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID, this.f35805c);
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME, this.e);
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED, Boolean.valueOf(this.h));
            String str = this.f;
            if (str != null) {
                hashMap.put("impressionGroup", str);
            }
            return hashMap;
        }

        @Override // com.verizon.ads.Waterfall
        public Waterfall.WaterfallItem[] getWaterfallItems() {
            return (Waterfall.WaterfallItem[]) this.i.toArray(new Waterfall.WaterfallItem[0]);
        }

        public String toString() {
            return String.format("VerizonSSPWaterfall{version: %s, handshakeId: %s, responseId: %s, placementId: %s, placementName: %s, impressionGroup: %s, siteId: %s, reportingEnabled: %s, waterfallItems: %s}", this.f35803a, this.f35804b, this.f35805c, this.f35806d, this.e, this.f, this.g, Boolean.valueOf(this.h), this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem.class */
    public static abstract class VerizonSSPWaterfallItem implements Waterfall.WaterfallItem {
        final String g;
        final String h;
        final boolean i;
        String j;
        String k;
        Map<String, Integer> l;
        CreativeInfo m;

        VerizonSSPWaterfallItem(String str, String str2) {
            this.h = str;
            this.g = str2;
            this.i = false;
        }

        VerizonSSPWaterfallItem(String str, JSONObject jSONObject) throws JSONException, IllegalArgumentException {
            JSONObject optJSONObject;
            this.h = str;
            if (jSONObject != null) {
                this.g = jSONObject.getString("item");
                this.i = jSONObject.optBoolean("enableEnhancedAdControl", false);
                this.j = jSONObject.optString(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, null);
                this.k = jSONObject.optString("price", null);
                String optString = jSONObject.optString("ad_crid", null);
                String optString2 = jSONObject.optString("ad_bidder_id", null);
                if (!TextUtils.isEmpty(optString) || !TextUtils.isEmpty(optString2)) {
                    this.m = new CreativeInfo(optString, optString2);
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("adMetaData");
                if (optJSONObject2 != null && (optJSONObject = optJSONObject2.optJSONObject("adSize")) != null) {
                    HashMap hashMap = new HashMap();
                    this.l = hashMap;
                    try {
                        hashMap.put("w", Integer.valueOf(optJSONObject.getInt("w")));
                        this.l.put(h.f19142a, Integer.valueOf(optJSONObject.getInt(h.f19142a)));
                    } catch (JSONException e) {
                        VerizonSSPWaterfallProvider.f35777b.w("Error occurred when trying to parse ad size from response", e);
                        this.l = null;
                    }
                }
            } else {
                throw new IllegalArgumentException("jsonObject cannot be null.");
            }
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Map<String, Object> getMetadata() {
            HashMap hashMap = new HashMap();
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, this.g);
            String str = this.j;
            if (str != null) {
                hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, str);
            }
            String str2 = this.k;
            if (str2 != null) {
                hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_PRU, str2);
            }
            return hashMap;
        }

        public String toString() {
            return String.format("placementId: %s, itemId: %s, enhancedAdControlEnabled: %s, buyer: %s, pru: %s, creativeInfo: %s", this.h, this.g, Boolean.valueOf(this.i), this.j, this.k, this.m);
        }
    }

    private VerizonSSPWaterfallProvider(Context context) {
        super(context);
        this.f35779d = context;
        this.e = new EnvironmentInfo(context);
    }

    static /* synthetic */ ErrorInfo a(HttpUtils.Response response) {
        int i = response.code;
        return i != 200 ? (i == 408 || i == 504) ? new ErrorInfo(f35778c, "Timeout occurred retrieving ad content", -2) : new ErrorInfo(f35778c, String.format("HTTP error code %d retrieving ad content", Integer.valueOf(response.code)), -3) : new ErrorInfo(f35778c, "Empty content returned when retrieving ad content", -3);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0156 A[Catch: Exception -> 0x015e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x015e, blocks: (B:22:0x00c9, B:26:0x00e2, B:28:0x00ec, B:29:0x00fc, B:31:0x0106, B:32:0x0116, B:34:0x0120, B:35:0x0130, B:37:0x013a, B:38:0x0147, B:43:0x0156), top: B:52:0x00c9, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0188 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.verizon.ads.Waterfall a(org.json.JSONObject r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.a(org.json.JSONObject, java.lang.String):com.verizon.ads.Waterfall");
    }

    static /* synthetic */ HttpUtils.Response a(String str, String str2, String str3, Map map, int i, PlayListRequestListener playListRequestListener) {
        HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(str, str2, str3, map, i);
        if (contentFromPostRequest.code != 200) {
            playListRequestListener.a(new ErrorInfo(f35778c, String.format("PlayList request failed with HTTP Status: %d", Integer.valueOf(contentFromPostRequest.code)), 2));
            return null;
        } else if (TextUtils.isEmpty(contentFromPostRequest.content)) {
            playListRequestListener.a(new ErrorInfo(f35778c, "PlayList request returned no content", 4));
            return null;
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f35777b;
                logger.d("Response content:\n" + contentFromPostRequest.content);
            }
            return contentFromPostRequest;
        }
    }

    static String a() {
        return Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", "https://ads.nexage.com");
    }

    private JSONObject a(RequestMetadata requestMetadata) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        a(jSONObject2, "gdpr", Boolean.valueOf(VASAds.isAnonymous()));
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
        jSONObject2.put("curOrient", this.e.getDeviceInfo().getConfigurationOrientation());
        return jSONObject2;
    }

    static JSONObject a(String str) {
        JSONObject jSONObject;
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("playlist");
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    jSONObject = jSONArray.getJSONObject(i);
                } catch (Exception e) {
                    Logger logger = f35777b;
                    logger.e("Unable to parse play list item<" + i + ">", e);
                }
                if ("redirect".equalsIgnoreCase(jSONObject.getString("adnet"))) {
                    return jSONObject;
                }
            }
            return null;
        } catch (JSONException e2) {
            f35777b.e("Unable to parse redirect play list", e2);
            return null;
        }
    }

    private JSONObject a(boolean z) throws JSONException {
        EnvironmentInfo.CameraType[] cameras;
        Object id;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("os", Constants.ANDROID_PLATFORM);
        jSONObject.put("osv", Build.VERSION.RELEASE);
        EnvironmentInfo.DeviceInfo deviceInfo = this.e.getDeviceInfo();
        EnvironmentInfo.NetworkOperatorInfo networkOperatorInfo = this.e.getNetworkOperatorInfo();
        a(jSONObject, "model", deviceInfo.getModel());
        a(jSONObject, "manufacturer", deviceInfo.getManufacturer());
        a(jSONObject, "name", deviceInfo.getName());
        a(jSONObject, JsonPOJOBuilder.DEFAULT_BUILD_METHOD, deviceInfo.getOSBuildNumber());
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("coreVer", VASAds.getSDKInfo().version);
        String str = null;
        String string = Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "editionName", null);
        String string2 = Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "editionVersion", null);
        if (!(string == null || string2 == null)) {
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
            a(jSONObject, "mcc", networkOperatorInfo.getMCC());
            a(jSONObject, "mnc", networkOperatorInfo.getMNC());
            a(jSONObject, "cellSignalDbm", networkOperatorInfo.getCellSignalDbm());
            a(jSONObject, "carrier", networkOperatorInfo.getNetworkOperatorName());
        }
        jSONObject.put("lang", deviceInfo.getLanguage());
        jSONObject.put("country", deviceInfo.getCountryCode());
        jSONObject.put("ua", deviceInfo.getUserAgent());
        if (z) {
            jSONObject.put("secureContent", true);
        }
        EnvironmentInfo.AdvertisingIdInfo advertisingIdInfo = this.e.getAdvertisingIdInfo();
        if (!(advertisingIdInfo == null || (id = advertisingIdInfo.getId()) == null)) {
            jSONObject.put("ifa", id);
            jSONObject.put("lmt", advertisingIdInfo.isLimitAdTrackingEnabled());
        }
        EnvironmentInfo.ScreenInfo screenInfo = this.e.getDeviceInfo().getScreenInfo();
        jSONObject.put("w", screenInfo.getWidth());
        jSONObject.put(h.f19142a, screenInfo.getHeight());
        jSONObject.put("screenScale", screenInfo.getDensity());
        jSONObject.put("ppi", screenInfo.getDensityDpi());
        jSONObject.put("natOrient", deviceInfo.getNaturalOrientation());
        a(jSONObject, "storage", deviceInfo.getAvailableStorage());
        a(jSONObject, "vol", deviceInfo.getVolume(3));
        a(jSONObject, "headphones", deviceInfo.hasHeadphonesPluggedIn());
        a(jSONObject, "charging", deviceInfo.isCharging());
        a(jSONObject, "charge", deviceInfo.getBatteryLevel());
        NetworkInfo networkInfo = deviceInfo.getNetworkInfo();
        if (networkInfo != null) {
            if (networkInfo.isConnected()) {
                int type = networkInfo.getType();
                if (type == 1) {
                    str = "wifi";
                } else {
                    if (type == 0) {
                        switch (networkInfo.getSubtype()) {
                            case 1:
                                str = "gprs";
                                break;
                            case 2:
                                str = "edge";
                                break;
                            case 3:
                                str = "umts";
                                break;
                            case 4:
                                str = "cdma";
                                break;
                            case 5:
                                str = "evdo_0";
                                break;
                            case 6:
                                str = "evdo_a";
                                break;
                            case 7:
                                str = "1xrtt";
                                break;
                            case 8:
                                str = "hsdpa";
                                break;
                            case 9:
                                str = "hsupa";
                                break;
                            case 10:
                                str = "hspa";
                                break;
                            case 11:
                                str = "iden";
                                break;
                            case 12:
                                str = "evdo_b";
                                break;
                            case 13:
                                str = "lte";
                                break;
                            case 14:
                                str = "ehrpd";
                                break;
                            case 15:
                                str = "hspap";
                                break;
                        }
                    }
                    str = "unknown";
                }
            } else {
                str = "offline";
            }
        }
        a(jSONObject, "connectionType", str);
        a(jSONObject, "ip", deviceInfo.getIP());
        Location location = this.e.getLocation();
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

    private void a(final RequestMetadata requestMetadata, final PlayListRequestListener playListRequestListener, final int i) {
        ErrorInfo errorInfo = !Configuration.getBoolean(VASAds.DOMAIN, VASAds.SDK_ENABLED_KEY, true) ? new ErrorInfo(VerizonSSPWaterfallProvider.class.getName(), "Verizon Ads SDK is disabled.", -3) : requestMetadata == null ? new ErrorInfo(VerizonSSPWaterfallProvider.class.getName(), "No request metadata provided for request", -3) : null;
        if (errorInfo != null) {
            f35777b.e(errorInfo.toString());
            playListRequestListener.a(errorInfo);
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.1
            @Override // java.lang.Runnable
            public void run() {
                if (requestMetadata == null) {
                    playListRequestListener.a(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Ad session cannot be null", 5));
                    return;
                }
                String concat = VerizonSSPWaterfallProvider.a().concat("/admax/sdk/playlist/3");
                String a2 = VerizonSSPWaterfallProvider.this.a(requestMetadata, URLUtil.isHttpsUrl(concat));
                if (a2 == null) {
                    playListRequestListener.a(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Failed to build a playlist request object.", 5));
                    return;
                }
                if (Logger.isLogLevelEnabled(3)) {
                    VerizonSSPWaterfallProvider.f35777b.d(String.format("Request\n\turl: %s\n\tpost data: %s", concat, a2));
                }
                HttpUtils.Response a3 = VerizonSSPWaterfallProvider.a(concat, a2, "application/json", null, i, playListRequestListener);
                if (a3 != null) {
                    HttpUtils.Response response = a3;
                    if (VerizonSSPWaterfallProvider.b(a3.content)) {
                        try {
                            JSONObject jSONObject = VerizonSSPWaterfallProvider.a(a3.content).getJSONObject("req");
                            String string = jSONObject.getString("url");
                            String string2 = jSONObject.getString("postBody");
                            String string3 = jSONObject.getString("postType");
                            if (TextUtils.isEmpty(string)) {
                                playListRequestListener.a(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "PlayList redirect response did not contain a redirect URL", 9));
                                return;
                            }
                            if (Logger.isLogLevelEnabled(3)) {
                                VerizonSSPWaterfallProvider.f35777b.d(String.format("Playlist redirect url provided = %s", string));
                            }
                            HashMap hashMap = new HashMap();
                            hashMap.put("X-VAS-RESPONSE-FORMAT", "waterfall");
                            HttpUtils.Response a4 = VerizonSSPWaterfallProvider.a(string, string2, string3, hashMap, i, playListRequestListener);
                            response = a4;
                            if (a4 == null) {
                                return;
                            }
                        } catch (Exception e) {
                            ErrorInfo errorInfo2 = new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Malformed playlist item for adnet: redirect.", 9);
                            VerizonSSPWaterfallProvider.f35777b.d(errorInfo2.toString(), e);
                            playListRequestListener.a(errorInfo2);
                            return;
                        }
                    }
                    List<Waterfall> b2 = VerizonSSPWaterfallProvider.b(response.content, requestMetadata);
                    if (b2.isEmpty()) {
                        playListRequestListener.a(new ErrorInfo(VerizonSSPWaterfallProvider.f35778c, "Playlist response did not return a valid waterfall.", 3));
                    } else {
                        playListRequestListener.a(b2);
                    }
                }
            }
        });
    }

    private static void a(JSONObject jSONObject, String str, Object obj) {
        if (str == null) {
            f35777b.e("Unable to put value, specified key is null");
        } else if (obj != null) {
            try {
                jSONObject.put(str, obj);
            } catch (Exception e) {
                Logger logger = f35777b;
                logger.e("Error adding " + str + ":" + obj + " to JSON", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Waterfall> b(String str, RequestMetadata requestMetadata) {
        ArrayList arrayList = new ArrayList();
        if ("[".equals(String.valueOf(str.charAt(0)))) {
            try {
                f35777b.d("Parsing playlist array resopnse");
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    Waterfall a2 = a(jSONArray.getJSONObject(i), (String) requestMetadata.getPlacementData().get("impressionGroup"));
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                }
            } catch (Exception e) {
                f35777b.e("Unable to parse playlist array response", e);
            }
        } else {
            f35777b.d("Parsing single playlist resopnse");
            try {
                Waterfall a3 = a(new JSONObject(str), (String) requestMetadata.getPlacementData().get("impressionGroup"));
                if (a3 != null) {
                    arrayList.add(a3);
                }
            } catch (Exception e2) {
                f35777b.e("Unable to parse single playlist response", e2);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        if (r0 != null) goto L_0x002f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.json.JSONObject b(com.verizon.ads.RequestMetadata r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            java.util.Map r0 = r0.getExtras()
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
            r0 = r6
            java.lang.String r1 = "testBidderID"
            java.lang.Object r0 = r0.get(r1)
            r7 = r0
            r0 = r6
            java.lang.String r1 = "testCreativeID"
            java.lang.Object r0 = r0.get(r1)
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x002f
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
        L_0x002f:
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "bidder"
            r2 = r7
            a(r0, r1, r2)
            r0 = r4
            java.lang.String r1 = "creativeId"
            r2 = r6
            a(r0, r1, r2)
        L_0x0047:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider.b(com.verizon.ads.RequestMetadata):org.json.JSONObject");
    }

    private JSONObject b(RequestMetadata requestMetadata, boolean z) {
        JSONObject jSONObject;
        Map<String, Object> userData;
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ver", "3");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("appId", this.f35779d.getPackageName());
            jSONObject3.put("name", d());
            jSONObject3.put("ver", e());
            jSONObject2.put("app", jSONObject3);
            jSONObject2.put("env", a(z));
            jSONObject2.put("req", a(requestMetadata));
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
            a(jSONObject2, "testing", b(requestMetadata));
            return jSONObject2;
        } catch (Exception e) {
            f35777b.e("Error creating JSON request", e);
            return null;
        }
    }

    static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.replaceAll("\\s+", "").contains("\"adnet\":\"redirect\"");
    }

    public static Object buildFromObject(Object obj) {
        if (obj instanceof Map) {
            return toJSONObject((Map) obj);
        }
        Object obj2 = obj;
        if (obj instanceof List) {
            obj2 = toJSONArray((List) obj);
        }
        return obj2;
    }

    private String d() {
        try {
            PackageManager packageManager = this.f35779d.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.f35779d.getPackageName(), 0)).toString();
        } catch (Throwable th) {
            f35777b.e("Unable to determine package name", th);
            return null;
        }
    }

    private String e() {
        try {
            PackageInfo packageInfo = this.f35779d.getPackageManager().getPackageInfo(this.f35779d.getPackageName(), 0);
            return (packageInfo == null || packageInfo.versionName == null) ? "unknown" : packageInfo.versionName;
        } catch (Throwable th) {
            f35777b.e("Unable to determine application version", th);
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
        if (obj != null) {
            a(jSONObject, str, String.valueOf(obj));
        }
    }

    public static void putIfTrue(JSONObject jSONObject, String str, Object obj, Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            a(jSONObject, str, obj);
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
            f35777b.e("Error building JSON from Map", e);
        }
        return jSONObject;
    }

    final String a(RequestMetadata requestMetadata, boolean z) {
        JSONObject b2 = b(requestMetadata, z);
        if (b2 == null) {
            return null;
        }
        if (requestMetadata == null) {
            return b2.toString();
        }
        try {
            JSONObject jSONObject = b2.getJSONObject("req");
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
            return b2.toString();
        } catch (Exception e) {
            f35777b.e("Error building JSON request", e);
            return null;
        }
    }

    @Override // com.verizon.ads.WaterfallProvider
    public String getBiddingToken(RequestMetadata requestMetadata) {
        JSONObject b2 = b(requestMetadata, URLUtil.isHttpsUrl(((String) Configuration.get(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", String.class, "https://ads.nexage.com")).concat("/admax/sdk/playlist/3")));
        if (b2 == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("waterfallRequest", b2);
            return jSONObject.toString();
        } catch (Exception e) {
            f35777b.e("Error creating JSON bidding token", e);
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
        a(requestMetadata, new PlayListRequestListener(waterfallListener, requestMetadata), i);
    }

    @Override // com.verizon.ads.Component
    public void release() {
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void requestBid(RequestMetadata requestMetadata, int i, BidRequestListener bidRequestListener) {
        a(requestMetadata, new PlayListRequestListener(bidRequestListener, requestMetadata), i);
    }
}
