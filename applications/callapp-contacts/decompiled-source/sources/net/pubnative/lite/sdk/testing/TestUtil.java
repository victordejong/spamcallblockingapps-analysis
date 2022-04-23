package net.pubnative.lite.sdk.testing;

import com.explorestack.iab.mraid.h;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.pubnative.lite.sdk.models.APIAsset;
import net.pubnative.lite.sdk.models.APIMeta;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdData;
import net.pubnative.lite.sdk.models.AdRequest;
import net.pubnative.lite.sdk.models.AdResponse;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/testing/TestUtil.class */
public class TestUtil {
    private static List<AdData> createMockAssets() {
        ArrayList arrayList = new ArrayList(1);
        AdData adData = new AdData();
        adData.type = APIAsset.HTML_BANNER;
        adData.data = new HashMap(3);
        adData.data.put("w", 320);
        adData.data.put(h.f19142a, 50);
        adData.data.put(AdType.HTML, "<a href=\"https://ads.com/click/112770_1386565997\"><img src=\"https://cdn.pubnative.net/widget/v3/assets/320x50.jpg\" width=\"320\" height=\"50\" border=\"0\" alt=\"Advertisement\" /></a>");
        arrayList.add(adData);
        return arrayList;
    }

    private static List<AdData> createMockBeacons() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(createMockImpressionBeacons());
        arrayList.addAll(createMockClickBeacons());
        return arrayList;
    }

    public static List<AdData> createMockClickBeacons() {
        ArrayList arrayList = new ArrayList(1);
        AdData adData = new AdData();
        adData.type = "click";
        adData.data = new HashMap(1);
        adData.data.put("url", "https://got.pubnative.net/click/rtb?aid=1036637");
        arrayList.add(adData);
        return arrayList;
    }

    public static List<AdData> createMockImpressionBeacons() {
        ArrayList arrayList = new ArrayList(1);
        AdData adData = new AdData();
        adData.type = "impression";
        adData.data = new HashMap(1);
        adData.data.put("url", "https://mock-dsp.pubnative.net/tracker/nurl?app_id=1036637&p=0.01");
        arrayList.add(adData);
        return arrayList;
    }

    private static List<AdData> createMockMeta() {
        ArrayList arrayList = new ArrayList(3);
        AdData adData = new AdData();
        adData.type = APIMeta.POINTS;
        adData.data = new HashMap(1);
        adData.data.put("number", 9);
        AdData adData2 = new AdData();
        adData2.type = APIMeta.REVENUE_MODEL;
        adData2.data = new HashMap(1);
        adData2.data.put("text", "cpm");
        AdData adData3 = new AdData();
        adData3.type = APIMeta.CONTENT_INFO;
        adData3.data = new HashMap(3);
        adData3.data.put("link", "https://pubnative.net/content-info");
        adData3.data.put(APIAsset.ICON, "https://cdn.pubnative.net/static/adserver/contentinfo.png");
        adData3.data.put("text", "Learn about this ad");
        arrayList.add(adData);
        arrayList.add(adData2);
        arrayList.add(adData3);
        return arrayList;
    }

    public static Ad createTestAd(int i) {
        Ad ad = new Ad();
        ad.assetgroupid = i;
        ad.assets = createMockAssets();
        ad.meta = createMockMeta();
        ad.beacons = createMockBeacons();
        return ad;
    }

    public static AdRequest createTestAdRequest() {
        AdRequest adRequest = new AdRequest();
        adRequest.apptoken = "dde3c298b47648459f8ada4a982fa92d";
        adRequest.os = Constants.ANDROID_PLATFORM;
        adRequest.osver = "8.1.0";
        adRequest.dnt = "0";
        adRequest.mf = "points,revenuemodel,contentinfo";
        adRequest.al = "s";
        adRequest.gid = "d98374d3-3b69-4a4b-a2c1-9dcb4c588849";
        adRequest.zoneid = "2";
        adRequest.bundleid = "net.pubnative.lite.demo";
        adRequest.testMode = "0";
        adRequest.locale = "en";
        adRequest.gidmd5 = "e74483c4b5e6dc78e088d9fb0243ae66";
        adRequest.gidsha1 = "96e380195959b8e7e05d6c6029154dc99e7fe954";
        return adRequest;
    }

    public static AdResponse createTestAdResponse() {
        AdResponse adResponse = new AdResponse();
        adResponse.ads = new ArrayList(1);
        adResponse.ads.add(createTestBannerAd());
        adResponse.status = "ok";
        return adResponse;
    }

    public static Ad createTestBannerAd() {
        return createTestAd(10);
    }

    public static Ad createTestInterstitialAd() {
        return createTestAd(21);
    }

    public static Ad createTestLeaderboardAd() {
        return createTestAd(24);
    }

    public static Ad createTestMRectAd() {
        return createTestAd(8);
    }

    public static Ad createTestVideoInterstitialAd() {
        return createTestAd(15);
    }

    public static Ad createTestVideoMRectAd() {
        return createTestAd(4);
    }
}
