package com.verizon.ads.sideloadingwaterfallprovider;

import android.content.Context;
import com.explorestack.iab.mraid.h;
import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.Waterfall;
import com.verizon.ads.WaterfallProvider;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider.class */
public class SideloadingWaterfallProvider extends WaterfallProvider implements Component {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35586b = Logger.getInstance(SideloadingWaterfallProvider.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            return new SideloadingWaterfallProvider(context);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall.class */
    static class SideloadingWaterfall implements Waterfall {

        /* renamed from: a  reason: collision with root package name */
        List<Waterfall.WaterfallItem> f35587a = new ArrayList();

        SideloadingWaterfall() {
        }

        @Override // com.verizon.ads.Waterfall
        public Map<String, Object> getMetadata() {
            HashMap hashMap = new HashMap();
            hashMap.put(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED, Boolean.FALSE);
            return hashMap;
        }

        @Override // com.verizon.ads.Waterfall
        public Waterfall.WaterfallItem[] getWaterfallItems() {
            return (Waterfall.WaterfallItem[]) this.f35587a.toArray(new Waterfall.WaterfallItem[0]);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem.class */
    static class SideloadingWaterfallItem implements Waterfall.WaterfallItem {

        /* renamed from: a  reason: collision with root package name */
        final String f35588a;

        /* renamed from: b  reason: collision with root package name */
        final Map<String, Object> f35589b;

        SideloadingWaterfallItem(String str, Map<String, Object> map) {
            this.f35588a = str;
            this.f35589b = map;
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Waterfall.WaterfallItem.FetchResult fetch(AdSession adSession) {
            HashMap hashMap = new HashMap();
            Object obj = this.f35589b.get(VerizonSSPWaterfallProvider.PLACEMENT_DATA_AD_SIZES_KEY);
            if (obj instanceof ArrayList) {
                ArrayList arrayList = (ArrayList) obj;
                if (!arrayList.isEmpty()) {
                    Object obj2 = arrayList.get(0);
                    if (obj2 instanceof Map) {
                        Map map = (Map) obj2;
                        hashMap.put("w", map.get("w"));
                        hashMap.put(h.f19142a, map.get(h.f19142a));
                    }
                }
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put(Reporting.Key.AD_SIZE, hashMap);
            return new Waterfall.WaterfallItem.FetchResult(new AdContent(this.f35588a, hashMap2));
        }

        @Override // com.verizon.ads.Waterfall.WaterfallItem
        public Map<String, Object> getMetadata() {
            return null;
        }
    }

    private SideloadingWaterfallProvider(Context context) {
        super(context);
    }

    @Override // com.verizon.ads.WaterfallProvider
    public boolean isSuperAuctionSupported() {
        return false;
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void load(Bid bid, int i, WaterfallProvider.WaterfallListener waterfallListener) {
        f35586b.e("Super Auction not supported.");
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void load(RequestMetadata requestMetadata, int i, WaterfallProvider.WaterfallListener waterfallListener) {
        if (!Configuration.getBoolean(VASAds.DOMAIN, VASAds.SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo = new ErrorInfo(SideloadingWaterfallProvider.class.getName(), "Verizon Ads SDK is disabled.", -3);
            f35586b.e(errorInfo.toString());
            waterfallListener.onAdSessionsReceived(null, errorInfo);
        } else if (requestMetadata == null || requestMetadata.getPlacementData() == null) {
            ErrorInfo errorInfo2 = new ErrorInfo(SideloadingWaterfallProvider.class.getName(), "No RequestMetadata present.", -3);
            f35586b.e(errorInfo2.toString());
            waterfallListener.onAdSessionsReceived(null, errorInfo2);
        } else {
            Object obj = requestMetadata.getPlacementData().get("adContent");
            if (obj == null) {
                ErrorInfo errorInfo3 = new ErrorInfo(SideloadingWaterfallProvider.class.getName(), "No content present in the RequestMetadata.", -3);
                f35586b.e(errorInfo3.toString());
                waterfallListener.onAdSessionsReceived(null, errorInfo3);
                return;
            }
            f35586b.d("SideloadingWaterfallProvider adContent: ".concat(String.valueOf(obj)));
            SideloadingWaterfall sideloadingWaterfall = new SideloadingWaterfall();
            sideloadingWaterfall.f35587a.add(new SideloadingWaterfallItem((String) obj, requestMetadata.getPlacementData()));
            AdSession adSession = new AdSession();
            adSession.put(VASAds.REQUEST_REQUEST_METADATA, (Object) requestMetadata);
            adSession.put(VASAds.RESPONSE_WATERFALL, (Object) sideloadingWaterfall);
            waterfallListener.onAdSessionsReceived(Collections.singletonList(adSession), null);
        }
    }

    @Override // com.verizon.ads.Component
    public void release() {
    }

    @Override // com.verizon.ads.WaterfallProvider
    public void requestBid(RequestMetadata requestMetadata, int i, BidRequestListener bidRequestListener) {
        f35586b.e("Super Auction not supported.");
    }
}
