package com.applovin.impl.mediation.p040c;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.c.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/c/c.class */
public class C1107c {

    /* renamed from: a */
    private static final TreeMap<String, String> f3977a;

    /* renamed from: b */
    private static final List<String> f3978b;

    /* renamed from: c */
    private static JSONArray f3979c;

    static {
        TreeMap<String, String> treeMap = new TreeMap<>();
        f3977a = treeMap;
        treeMap.put("com.applovin.mediation.adapters.AdColonyMediationAdapter", "AdColony");
        treeMap.put("com.applovin.mediation.adapters.AmazonMediationAdapter", "Amazon");
        treeMap.put("com.applovin.mediation.adapters.AmazonPublisherServicesMediationAdapter", "Amazon Publisher Services");
        treeMap.put("com.applovin.mediation.adapters.AmazonAdMarketplaceMediationAdapter", "Amazon Publisher Services");
        treeMap.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", "AppLovin");
        treeMap.put("com.applovin.mediation.adapters.ByteDanceMediationAdapter", "Pangle");
        treeMap.put("com.applovin.mediation.adapters.ChartboostMediationAdapter", "Chartboost");
        treeMap.put("com.applovin.mediation.adapters.CriteoMediationAdapter", "Criteo");
        treeMap.put("com.applovin.mediation.adapters.DataseatMediationAdapter", "Dataseat");
        treeMap.put("com.applovin.mediation.adapters.FacebookMediationAdapter", "Facebook");
        treeMap.put("com.applovin.mediation.adapters.GoogleMediationAdapter", "AdMob");
        treeMap.put("com.applovin.mediation.adapters.GoogleAdManagerMediationAdapter", "Google Ad Manager");
        treeMap.put("com.applovin.mediation.adapters.HyprMXMediationAdapter", "HyprMX");
        treeMap.put("com.applovin.mediation.adapters.IMobileMediationAdapter", "i-mobile");
        treeMap.put("com.applovin.mediation.adapters.InMobiMediationAdapter", "InMobi");
        treeMap.put("com.applovin.mediation.adapters.InneractiveMediationAdapter", "Fyber");
        treeMap.put("com.applovin.mediation.adapters.IronSourceMediationAdapter", "ironSource");
        treeMap.put("com.applovin.mediation.adapters.LeadboltMediationAdapter", "Leadbolt");
        treeMap.put("com.applovin.mediation.adapters.LineMediationAdapter", "LINE");
        treeMap.put("com.applovin.mediation.adapters.MadvertiseMediationAdapter", "madvertise");
        treeMap.put("com.applovin.mediation.adapters.MaioMediationAdapter", "Maio");
        treeMap.put("com.applovin.mediation.adapters.MintegralMediationAdapter", "Mintegral");
        treeMap.put("com.applovin.mediation.adapters.MoPubMediationAdapter", "MoPub");
        treeMap.put("com.applovin.mediation.adapters.MyTargetMediationAdapter", "myTarget");
        treeMap.put("com.applovin.mediation.adapters.NendMediationAdapter", "Nend");
        treeMap.put("com.applovin.mediation.adapters.OguryMediationAdapter", "Ogury");
        treeMap.put("com.applovin.mediation.adapters.OguryPresageMediationAdapter", "Ogury Presage");
        treeMap.put("com.applovin.mediation.adapters.SayGamesMediationAdapter", "SayGames");
        treeMap.put("com.applovin.mediation.adapters.SmaatoMediationAdapter", "Smaato");
        treeMap.put("com.applovin.mediation.adapters.SnapMediationAdapter", "Snap");
        treeMap.put("com.applovin.mediation.adapters.TapjoyMediationAdapter", "Tapjoy");
        treeMap.put("com.applovin.mediation.adapters.TencentMediationAdapter", "Tencent");
        treeMap.put("com.applovin.mediation.adapters.UnityAdsMediationAdapter", "Unity Ads");
        treeMap.put("com.applovin.mediation.adapters.VerizonAdsMediationAdapter", "Verizon");
        treeMap.put("com.applovin.mediation.adapters.VerveMediationAdapter", "Verve");
        treeMap.put("com.applovin.mediation.adapters.VungleMediationAdapter", "Vungle");
        treeMap.put("com.applovin.mediation.adapters.YandexMediationAdapter", "Yandex");
        f3978b = new ArrayList(treeMap.keySet());
    }

    /* renamed from: a */
    public static C1362o.EnumC1364a m6456a(MaxAdFormat maxAdFormat) {
        return maxAdFormat == MaxAdFormat.INTERSTITIAL ? C1362o.EnumC1364a.MEDIATION_INTERSTITIAL : maxAdFormat == MaxAdFormat.REWARDED ? C1362o.EnumC1364a.MEDIATION_INCENTIVIZED : maxAdFormat == MaxAdFormat.REWARDED_INTERSTITIAL ? C1362o.EnumC1364a.MEDIATION_REWARDED_INTERSTITIAL : C1362o.EnumC1364a.MEDIATION_BANNER;
    }

    /* renamed from: a */
    public static AppLovinSdkUtils.Size m6458a(int i, MaxAdFormat maxAdFormat, Context context) {
        int i2 = i;
        if (i < 0) {
            try {
                Display defaultDisplay = (context instanceof Activity ? ((Activity) context).getWindowManager() : (WindowManager) context.getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                i2 = AppLovinSdkUtils.pxToDp(context, displayMetrics.widthPixels);
            } catch (Throwable th) {
                C1479t.m5113c("MediationUtils", "Failed to get adaptive banner size. Will fallback to using format specific ad view ad size.", th);
                return maxAdFormat.getSize();
            }
        }
        int i3 = AdSize.FULL_WIDTH;
        Method method = AdSize.class.getMethod("getCurrentOrientationAnchoredAdaptiveBannerAdSize", Context.class, Integer.TYPE);
        Method method2 = AdSize.class.getMethod("getWidth", new Class[0]);
        Method method3 = AdSize.class.getMethod("getHeight", new Class[0]);
        Object invoke = method.invoke(null, context, Integer.valueOf(i2));
        return new AppLovinSdkUtils.Size(((Integer) method2.invoke(invoke, new Object[0])).intValue(), ((Integer) method3.invoke(invoke, new Object[0])).intValue());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00a7 -> B:19:0x0098). Please submit an issue!!! */
    /* renamed from: a */
    public static JSONArray m6457a(C1408l c1408l) {
        JSONArray jSONArray;
        if (((Boolean) c1408l.m5511a(C1313a.f4676K)).booleanValue() || (jSONArray = f3979c) == null) {
            if (f3979c != null) {
                m6453b(c1408l);
                return f3979c;
            }
            f3979c = new JSONArray();
            for (String str : f3978b) {
                MaxAdapter m6451b = m6451b(str, c1408l);
                if (m6451b != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, f3977a.get(str));
                        jSONObject.put("class", str);
                        jSONObject.put("sdk_version", m6451b.getSdkVersion());
                        jSONObject.put("version", m6451b.getAdapterVersion());
                    } catch (Throwable th) {
                    }
                    f3979c.put(jSONObject);
                }
            }
            return f3979c;
        }
        return jSONArray;
    }

    /* renamed from: a */
    public static JSONObject m6454a(String str, C1408l c1408l) {
        JSONArray m6457a = m6457a(c1408l);
        for (int i = 0; i < m6457a.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(m6457a, i, (JSONObject) null);
            if (jSONObject != null && str.equals(JsonUtils.getString(jSONObject, "class", null))) {
                return jSONObject;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m6455a(Object obj) {
        return (obj instanceof AbstractC1286e) && StringUtils.isValidString(((AbstractC1286e) obj).m5984I());
    }

    /* renamed from: b */
    public static MaxAdapter m6451b(String str, C1408l c1408l) {
        if (TextUtils.isEmpty(str)) {
            c1408l.m5542A().m5111e("AppLovinSdk", "Failed to create adapter instance. No class name provided");
            return null;
        }
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return (MaxAdapter) cls.getConstructor(AppLovinSdk.class).newInstance(c1408l.m5519X());
            }
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5111e("AppLovinSdk", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            C1479t m5542A2 = c1408l.m5542A();
            m5542A2.m5115b("AppLovinSdk", "Failed to load: " + str, th);
            return null;
        }
    }

    /* renamed from: b */
    private static void m6453b(C1408l c1408l) {
        MaxAdapter m6451b;
        for (int i = 0; i < f3979c.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(f3979c, i, (JSONObject) null);
            String string = JsonUtils.getString(jSONObject, "class", "");
            if (!StringUtils.isValidString(JsonUtils.getString(jSONObject, "sdk_version", "")) && (m6451b = m6451b(string, c1408l)) != null) {
                JsonUtils.putString(jSONObject, "sdk_version", m6451b.getSdkVersion());
            }
        }
    }

    /* renamed from: b */
    public static boolean m6452b(Object obj) {
        return (obj instanceof AbstractC1044a) && "APPLOVIN".equals(((AbstractC1044a) obj).m6652P());
    }
}
