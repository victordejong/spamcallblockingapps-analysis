package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.nativeAd.C1433a;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p057e.AbstractC1371r;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.nativeAd.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/e.class */
public class C1438e extends AbstractRunnableC1331a implements C1433a.AbstractC1434a, AppLovinAdLoadListener {

    /* renamed from: a */
    private final JSONObject f5393a;

    /* renamed from: c */
    private final JSONObject f5394c;

    /* renamed from: d */
    private final AppLovinNativeAdLoadListener f5395d;

    /* renamed from: m */
    private C0875a f5404m;

    /* renamed from: e */
    private String f5396e = "";

    /* renamed from: f */
    private String f5397f = "";

    /* renamed from: g */
    private String f5398g = "";

    /* renamed from: h */
    private String f5399h = "";

    /* renamed from: i */
    private Uri f5400i = null;

    /* renamed from: j */
    private Uri f5401j = null;

    /* renamed from: k */
    private Uri f5402k = null;

    /* renamed from: l */
    private Uri f5403l = null;

    /* renamed from: n */
    private Uri f5405n = null;

    /* renamed from: o */
    private Uri f5406o = null;

    /* renamed from: p */
    private final List<String> f5407p = new ArrayList();

    /* renamed from: q */
    private final List<String> f5408q = new ArrayList();

    /* renamed from: r */
    private final List<String> f5409r = new ArrayList();

    /* renamed from: s */
    private final List<String> f5410s = new ArrayList();

    /* renamed from: t */
    private final List<String> f5411t = new ArrayList();

    public C1438e(JSONObject jSONObject, JSONObject jSONObject2, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, C1408l c1408l) {
        super("TaskRenderNativeAd", c1408l);
        this.f5393a = jSONObject;
        this.f5394c = jSONObject2;
        this.f5395d = appLovinNativeAdLoadListener;
    }

    /* renamed from: a */
    private void m5365a() {
        AppLovinNativeAdImpl build = new AppLovinNativeAdImpl.Builder(JsonUtils.shallowCopy(this.f5393a), JsonUtils.shallowCopy(this.f5394c), this.f5113b).setTitle(this.f5396e).setAdvertiser(this.f5397f).setBody(this.f5398g).setCallToAction(this.f5399h).setIconUri(this.f5400i).setMainImageUri(this.f5401j).setPrivacyIconUri(this.f5402k).setVastAd(this.f5404m).setPrivacyDestinationUri(this.f5403l).setClickDestinationUri(this.f5405n).setClickDestinationBackupUri(this.f5406o).setClickTrackingUrls(this.f5407p).setImpressionUrls(this.f5408q).setViewableMRC50Urls(this.f5409r).setViewableMRC100Urls(this.f5410s).setViewableVideo50Urls(this.f5411t).build();
        build.getAdEventTracker().m6062b();
        m5733a("Starting cache task for type: " + build.getType() + "...");
        this.f5113b.m5525R().m5653a(new C1433a(build, this.f5113b, this), C1362o.EnumC1364a.MAIN);
    }

    /* renamed from: a */
    private void m5360a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String string = JsonUtils.getString(jSONObject, ImagesContract.URL, null);
        if (StringUtils.isValidString(string)) {
            this.f5405n = Uri.parse(string);
            StringBuilder m8752j = C0082b.m8752j("Processed click destination URL: ");
            m8752j.append(this.f5405n);
            m5733a(m8752j.toString());
        }
        String string2 = JsonUtils.getString(jSONObject, "fallback", null);
        if (StringUtils.isValidString(string2)) {
            this.f5406o = Uri.parse(string2);
            StringBuilder m8752j2 = C0082b.m8752j("Processed click destination backup URL: ");
            m8752j2.append(this.f5406o);
            m5733a(m8752j2.toString());
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "clicktrackers", null);
        if (jSONArray == null) {
            return;
        }
        try {
            this.f5407p.addAll(JsonUtils.toList(jSONArray));
            m5733a("Processed click tracking URLs: " + this.f5407p);
        } catch (Throwable th) {
            m5732a("Failed to render click tracking URLs", th);
        }
    }

    /* renamed from: b */
    public void m5359b() {
        this.f5395d.onNativeAdLoadFailed(-6);
    }

    /* renamed from: b */
    private void m5358b(final AppLovinNativeAdImpl appLovinNativeAdImpl) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.e.1
            @Override // java.lang.Runnable
            public void run() {
                C1438e.this.m5733a("Preparing native ad view components...");
                try {
                    appLovinNativeAdImpl.setUpNativeAdViewComponents();
                    C1438e.this.m5733a("Successfully prepared native ad view components");
                    appLovinNativeAdImpl.getAdEventTracker().mo6039c();
                    C1438e.this.f5395d.onNativeAdLoaded(appLovinNativeAdImpl);
                } catch (Throwable th) {
                    C1438e.this.m5732a("Failed to prepare native ad view components", th);
                    C1438e.this.m5359b();
                }
            }
        });
    }

    @Override // com.applovin.impl.sdk.nativeAd.C1433a.AbstractC1434a
    /* renamed from: a */
    public void mo5364a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        m5733a("Successfully cached and loaded ad");
        m5358b(appLovinNativeAdImpl);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        m5733a("VAST ad rendered successfully");
        this.f5404m = (C0875a) appLovinAd;
        m5365a();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        m5728d("VAST ad failed to render");
        m5365a();
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder sb;
        String str;
        String str2;
        StringBuilder sb2;
        String str3;
        StringBuilder sb3;
        String str4;
        String str5;
        StringBuilder sb4;
        String str6;
        Uri uri;
        String string = JsonUtils.getString(this.f5393a, "privacy_icon_url", null);
        if (URLUtil.isValidUrl(string)) {
            this.f5402k = Uri.parse(string);
        }
        String string2 = JsonUtils.getString(this.f5393a, "privacy_url", null);
        if (!URLUtil.isValidUrl(string2)) {
            string2 = "https://www.applovin.com/privacy/";
        }
        this.f5403l = Uri.parse(string2);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f5393a, "ortb_response", (JSONObject) null);
        if (jSONObject == null || jSONObject.length() == 0) {
            sb = new StringBuilder();
            str = "No oRtb response provided: ";
        } else {
            String string3 = JsonUtils.getString(jSONObject, "version", null);
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, AppMeasurementSdk.ConditionalUserProperty.VALUE, (JSONObject) null);
            m5733a("Rendering native ad for oRTB version: " + string3);
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "native", jSONObject2);
            m5360a(JsonUtils.getJSONObject(jSONObject3, "link", (JSONObject) null));
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject3, "assets", null);
            if (jSONArray != null && jSONArray.length() != 0) {
                String str7 = "";
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
                    if (jSONObject4.has("title")) {
                        this.f5396e = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "title", (JSONObject) null), "text", null);
                        StringBuilder m8752j = C0082b.m8752j("Processed title: ");
                        m8752j.append(this.f5396e);
                        m5733a(m8752j.toString());
                    } else if (jSONObject4.has("link")) {
                        m5360a(JsonUtils.getJSONObject(jSONObject4, "link", (JSONObject) null));
                    } else {
                        if (jSONObject4.has("img")) {
                            int i2 = JsonUtils.getInt(jSONObject4, FacebookAdapter.KEY_ID, -1);
                            JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "img", (JSONObject) null);
                            int i3 = JsonUtils.getInt(jSONObject5, "type", -1);
                            String string4 = JsonUtils.getString(jSONObject5, ImagesContract.URL, null);
                            if (i3 == 1 || 3 == i2) {
                                this.f5400i = Uri.parse(string4);
                                sb3 = C0082b.m8752j("Processed icon URL: ");
                                uri = this.f5400i;
                            } else if (i3 == 3 || 2 == i2) {
                                this.f5401j = Uri.parse(string4);
                                sb3 = C0082b.m8752j("Processed main image URL: ");
                                uri = this.f5401j;
                            } else {
                                m5730c("Unrecognized image: " + jSONObject4);
                                int i4 = JsonUtils.getInt(jSONObject5, "w", -1);
                                int i5 = JsonUtils.getInt(jSONObject5, "h", -1);
                                if (i4 <= 0 || i5 <= 0) {
                                    str4 = "Skipping...";
                                    m5730c(str4);
                                } else {
                                    double d = i4 / i5;
                                    StringBuilder sb5 = new StringBuilder();
                                    if (d > 1.0d) {
                                        sb5.append("Inferring main image from ");
                                        sb5.append(i4);
                                        sb5.append("x");
                                        sb5.append(i5);
                                        sb5.append("...");
                                        m5733a(sb5.toString());
                                        this.f5401j = Uri.parse(string4);
                                    } else {
                                        sb5.append("Inferring icon image from ");
                                        sb5.append(i4);
                                        sb5.append("x");
                                        sb5.append(i5);
                                        sb5.append("...");
                                        m5733a(sb5.toString());
                                        this.f5400i = Uri.parse(string4);
                                    }
                                }
                            }
                            sb3.append(uri);
                            str3 = sb3.toString();
                        } else {
                            if (jSONObject4.has("video")) {
                                str7 = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "video", (JSONObject) null), "vasttag", null);
                                if (StringUtils.isValidString(str7)) {
                                    str3 = "Processed VAST video";
                                } else {
                                    sb4 = new StringBuilder();
                                    str5 = "Ignoring invalid \"vasttag\" for video: ";
                                }
                            } else if (jSONObject4.has("data")) {
                                int i6 = JsonUtils.getInt(jSONObject4, FacebookAdapter.KEY_ID, -1);
                                JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject4, "data", (JSONObject) null);
                                int i7 = JsonUtils.getInt(jSONObject6, "type", -1);
                                String string5 = JsonUtils.getString(jSONObject6, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
                                if (i7 == 1 || i6 == 8) {
                                    this.f5397f = string5;
                                    sb3 = C0082b.m8752j("Processed advertiser: ");
                                    str6 = this.f5397f;
                                } else if (i7 == 2 || i6 == 4) {
                                    this.f5398g = string5;
                                    sb3 = C0082b.m8752j("Processed body: ");
                                    str6 = this.f5398g;
                                } else if (i7 == 12 || i6 == 5) {
                                    this.f5399h = string5;
                                    sb3 = C0082b.m8752j("Processed cta: ");
                                    str6 = this.f5399h;
                                } else {
                                    sb4 = new StringBuilder();
                                    str5 = "Skipping unsupported data: ";
                                }
                                sb3.append(str6);
                                str3 = sb3.toString();
                            } else {
                                m5728d("Unsupported asset object: " + jSONObject4);
                            }
                            sb4.append(str5);
                            sb4.append(jSONObject4);
                            str4 = sb4.toString();
                            m5730c(str4);
                        }
                        m5733a(str3);
                    }
                }
                JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject3, "imptrackers", null);
                if (jSONArray2 != null) {
                    for (int i8 = 0; i8 < jSONArray2.length(); i8++) {
                        Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray2, i8, null);
                        if (objectAtIndex instanceof String) {
                            String str8 = (String) objectAtIndex;
                            if (!TextUtils.isEmpty(str8)) {
                                this.f5408q.add(str8);
                                m5733a("Processed imptracker URL: " + str8);
                            }
                        }
                    }
                }
                if (jSONObject3.has("jstracker")) {
                    m5728d("Ignoring \"jstracker\" field - it is deprecated in lieu of \"eventtrackers\"");
                }
                JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject3, "eventtrackers", null);
                if (jSONArray3 != null) {
                    for (int i9 = 0; i9 < jSONArray3.length(); i9++) {
                        JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONArray3, i9, (JSONObject) null);
                        int i10 = JsonUtils.getInt(jSONObject7, "event", -1);
                        int i11 = JsonUtils.getInt(jSONObject7, "method", -1);
                        String string6 = JsonUtils.getString(jSONObject7, ImagesContract.URL, null);
                        if (!TextUtils.isEmpty(string6)) {
                            if (i11 != 1) {
                                m5728d("Unsupported method for event tracker: " + jSONObject7);
                            } else if (i10 == 1) {
                                this.f5408q.add(string6);
                                m5733a("Processed impression URL: " + string6);
                            } else {
                                if (i10 == 2) {
                                    this.f5409r.add(string6);
                                    sb2 = new StringBuilder();
                                    str2 = "Processed viewable MRC50 URL: ";
                                } else if (i10 == 3) {
                                    this.f5410s.add(string6);
                                    sb2 = new StringBuilder();
                                    str2 = "Processed viewable MRC100 URL: ";
                                } else if (i10 == 4) {
                                    this.f5411t.add(string6);
                                    sb2 = new StringBuilder();
                                    str2 = "Processed viewable video 50 URL: ";
                                } else {
                                    m5728d("Unsupported event tracker: " + jSONObject7);
                                }
                                sb2.append(str2);
                                sb2.append(string6);
                                m5733a(sb2.toString());
                            }
                        }
                    }
                }
                if (!StringUtils.isValidString(str7)) {
                    m5365a();
                    return;
                }
                m5733a("Processing VAST video...");
                this.f5113b.m5525R().m5654a(AbstractC1371r.m5631a(str7, JsonUtils.shallowCopy(this.f5393a), JsonUtils.shallowCopy(this.f5394c), EnumC1282b.UNKNOWN, this, this.f5113b));
                return;
            }
            sb = new StringBuilder();
            str = "Unable to retrieve assets - failing ad load: ";
        }
        sb.append(str);
        sb.append(this.f5393a);
        m5728d(sb.toString());
        m5359b();
    }
}
