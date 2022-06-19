package net.pubnative.lite.sdk.models;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import net.pubnative.lite.sdk.views.PNAPIContentInfoView;
import org.json.JSONObject;
/* renamed from: net.pubnative.lite.sdk.models.Ad */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/Ad.class */
public class C20576Ad extends JsonModel implements Serializable, Comparable<C20576Ad> {
    private static final String CONTENT_INFO_ICON_URL = "https://cdn.pubnative.net/static/adserver/contentinfo.png";
    private static final String CONTENT_INFO_LINK_URL = "https://pubnative.net/content-info";
    private static final String CONTENT_INFO_TEXT = "Learn about this ad";
    private static final String DATA_CONTENTINFO_ICON_KEY = "icon";
    private static final String DATA_CONTENTINFO_LINK_KEY = "link";
    private static final String DATA_POINTS_NUMBER_KEY = "number";
    private static final String DATA_TEXT_KEY = "text";
    private static final int MIN_POINTS = 10;
    private static final String PN_IMPRESSION_QUERY_PARAM = "t";
    private static final String PN_IMPRESSION_URL = "got.pubnative.net";
    private static final String TAG = "Ad";
    private String adSourceName;
    @BindField
    public int assetgroupid;
    @BindField
    public List<AdData> assets;
    @BindField
    public List<AdData> beacons;
    @BindField
    public String link;
    @BindField
    public List<AdData> meta;
    private String zoneId;

    /* renamed from: net.pubnative.lite.sdk.models.Ad$AdType */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/Ad$AdType.class */
    public enum AdType {
        HTML,
        VIDEO
    }

    /* renamed from: net.pubnative.lite.sdk.models.Ad$Beacon */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/Ad$Beacon.class */
    public interface Beacon {
        public static final String CLICK = "click";
        public static final String IMPRESSION = "impression";
    }

    public C20576Ad() {
    }

    public C20576Ad(int i, String str, AdType adType) {
        this.assetgroupid = i;
        this.assets = new ArrayList();
        this.assets.add(adType == AdType.VIDEO ? new AdData(APIAsset.VAST, APIAsset.VAST, str) : new AdData(com.mopub.common.AdType.HTML, APIAsset.HTML_BANNER, str));
    }

    public C20576Ad(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }

    private PNAPIContentInfoView getDefaultContentInfo(Context context, PNAPIContentInfoView pNAPIContentInfoView) {
        PNAPIContentInfoView pNAPIContentInfoView2 = new PNAPIContentInfoView(context);
        pNAPIContentInfoView2.setIconUrl(CONTENT_INFO_ICON_URL);
        pNAPIContentInfoView2.setIconClickUrl(CONTENT_INFO_LINK_URL);
        pNAPIContentInfoView2.setContextText(CONTENT_INFO_TEXT);
        pNAPIContentInfoView2.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.models.Ad.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((PNAPIContentInfoView) view).openLayout();
            }
        });
        return pNAPIContentInfoView2;
    }

    public int compareTo(C20576Ad c20576Ad) {
        int i = 0;
        int intValue = c20576Ad.getECPM() != null ? c20576Ad.getECPM().intValue() : 0;
        if (getECPM() != null) {
            i = getECPM().intValue();
        }
        return intValue - i;
    }

    protected AdData find(String str, List<AdData> list) {
        AdData adData;
        if (list != null) {
            for (AdData adData2 : list) {
                if (str.equals(adData2.type)) {
                    adData = adData2;
                    break;
                }
            }
        }
        adData = null;
        return adData;
    }

    protected List<AdData> findAll(String str, List<AdData> list) {
        ArrayList arrayList = null;
        if (list != null) {
            Iterator<AdData> it2 = list.iterator();
            ArrayList arrayList2 = null;
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                AdData next = it2.next();
                if (str.equals(next.type)) {
                    ArrayList arrayList3 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(next);
                    arrayList2 = arrayList3;
                }
            }
        }
        return arrayList;
    }

    public String getAdSourceName() {
        return this.adSourceName;
    }

    public AdData getAsset(String str) {
        return find(str, this.assets);
    }

    public int getAssetHeight(String str) {
        AdData asset = getAsset(str);
        return asset != null ? asset.getHeight() : -1;
    }

    public String getAssetHtml(String str) {
        AdData asset = getAsset(str);
        return asset != null ? asset.getHtml() : null;
    }

    public String getAssetUrl(String str) {
        AdData asset = getAsset(str);
        return asset != null ? asset.getURL() : null;
    }

    public int getAssetWidth(String str) {
        AdData asset = getAsset(str);
        return asset != null ? asset.getWidth() : -1;
    }

    public List<AdData> getBeacons(String str) {
        return findAll(str, this.beacons);
    }

    public View getContentInfo(Context context) {
        PNAPIContentInfoView pNAPIContentInfoView;
        AdData meta = getMeta(APIMeta.CONTENT_INFO);
        if (meta == null) {
            Log.e(TAG, "getContentInfo - contentInfo data not found");
            return getDefaultContentInfo(context, null);
        }
        if (TextUtils.isEmpty(meta.getStringField("icon"))) {
            Log.e(TAG, "getContentInfo - contentInfo icon not found");
            pNAPIContentInfoView = null;
        } else if (TextUtils.isEmpty(meta.getStringField(DATA_CONTENTINFO_LINK_KEY))) {
            Log.e(TAG, "getContentInfo - contentInfo link not found");
            pNAPIContentInfoView = null;
        } else if (TextUtils.isEmpty(meta.getText())) {
            Log.e(TAG, "getContentInfo - contentInfo text not found");
            pNAPIContentInfoView = null;
        } else {
            pNAPIContentInfoView = new PNAPIContentInfoView(context);
            pNAPIContentInfoView.setIconUrl(meta.getStringField("icon"));
            pNAPIContentInfoView.setIconClickUrl(meta.getStringField(DATA_CONTENTINFO_LINK_KEY));
            pNAPIContentInfoView.setContextText(meta.getText());
            pNAPIContentInfoView.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.models.Ad.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((PNAPIContentInfoView) view).openLayout();
                }
            });
        }
        return pNAPIContentInfoView;
    }

    public String getContentInfoClickUrl() {
        return getMeta(APIMeta.CONTENT_INFO).getStringField(DATA_CONTENTINFO_LINK_KEY);
    }

    public RelativeLayout getContentInfoContainer(Context context) {
        View contentInfo = getContentInfo(context);
        if (contentInfo != null) {
            RelativeLayout relativeLayout = new RelativeLayout(context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            relativeLayout.setLayoutParams(layoutParams);
            relativeLayout.addView(contentInfo);
            return relativeLayout;
        }
        return null;
    }

    public String getContentInfoIconUrl() {
        return getMeta(APIMeta.CONTENT_INFO).getStringField("icon");
    }

    public String getCreativeId() {
        AdData meta = getMeta(APIMeta.CREATIVE_ID);
        if (meta == null) {
            return "";
        }
        String stringField = meta.getStringField(DATA_TEXT_KEY);
        return TextUtils.isEmpty(stringField) ? "" : stringField;
    }

    public Integer getECPM() {
        AdData meta = getMeta(APIMeta.POINTS);
        int i = 10;
        if (meta == null) {
            return 10;
        }
        Integer intField = meta.getIntField(DATA_POINTS_NUMBER_KEY);
        if (intField != null) {
            i = intField.intValue();
        }
        return Integer.valueOf(i);
    }

    public String getImpressionId() {
        List<AdData> beacons = getBeacons("impression");
        int i = 0;
        String str = "";
        boolean z = false;
        while (i < beacons.size() && !z) {
            AdData adData = beacons.get(i);
            boolean z2 = z;
            String str2 = str;
            if (!TextUtils.isEmpty(adData.getURL())) {
                Uri parse = Uri.parse(adData.getURL());
                z2 = z;
                str2 = str;
                if (parse.getAuthority().equals(PN_IMPRESSION_URL)) {
                    String queryParameter = parse.getQueryParameter(PN_IMPRESSION_QUERY_PARAM);
                    z2 = z;
                    str2 = str;
                    if (!TextUtils.isEmpty(queryParameter)) {
                        z2 = true;
                        str2 = queryParameter;
                    }
                }
            }
            i++;
            z = z2;
            str = str2;
        }
        return str;
    }

    public AdData getMeta(String str) {
        return find(str, this.meta);
    }

    public String getVast() {
        AdData asset = getAsset(APIAsset.VAST);
        return asset != null ? asset.getStringField(APIAsset.VAST) : null;
    }

    public String getZoneId() {
        return this.zoneId;
    }

    public void setAdSourceName(String str) {
        this.adSourceName = str;
    }

    public void setZoneId(String str) {
        this.zoneId = str;
    }
}
