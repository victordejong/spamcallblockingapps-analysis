package p131c.p135b.p136a.p143d.p147e;

import android.text.TextUtils;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.d.e.c */
/* loaded from: classes-dex2jar.jar:c/b/a/d/e/c.class */
public class C2168c {

    /* renamed from: a */
    public static final List<String> f8257a;

    /* renamed from: b */
    public static C2170b f8258b;

    /* renamed from: c.b.a.d.e.c$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/e/c$b.class */
    public static class C2170b {

        /* renamed from: a */
        public final JSONArray f8259a;

        /* renamed from: b */
        public final JSONArray f8260b;

        public C2170b(JSONArray jSONArray, JSONArray jSONArray2) {
            this.f8259a = jSONArray;
            this.f8260b = jSONArray2;
        }

        /* renamed from: a */
        public JSONArray m30803a() {
            return this.f8259a;
        }

        /* renamed from: b */
        public JSONArray m30802b() {
            return this.f8260b;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f8257a = arrayList;
        arrayList.add("com.applovin.mediation.adapters.AdColonyMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.AmazonMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.AmazonBiddingMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.AppLovinMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.ByteDanceMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.ChartboostMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.FacebookMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.GoogleMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.GoogleAdManagerMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.HyperMXMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.IMobileMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.InMobiMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.InneractiveMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.IronSourceMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.LeadboltMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.MadvertiseMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.MaioMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.MintegralMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.MoPubMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.MyTargetMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.NendMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.OguryMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.OguryPresageMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.SmaatoMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.TapjoyMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.TencentMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.UnityAdsMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.VerizonAdsMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.VoodooAdsMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.VungleMediationAdapter");
        f8257a.add("com.applovin.mediation.adapters.YandexMediationAdapter");
    }

    /* renamed from: a */
    public static C2170b m30809a(C2341l lVar) {
        C2170b bVar;
        if (!(((Boolean) lVar.m30291a(C2251d.C2255d.f8499j5)).booleanValue() || (bVar = f8258b) == null)) {
            return bVar;
        }
        if (f8258b != null) {
            m30805b(lVar);
            return f8258b;
        }
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (String str : f8257a) {
            MaxAdapter a = m30806a(str, lVar);
            if (a != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("class", str);
                    jSONObject.put("sdk_version", a.getSdkVersion());
                    jSONObject.put("version", a.getAdapterVersion());
                } catch (Throwable th) {
                }
                jSONArray.put(jSONObject);
            } else {
                jSONArray2.put(str);
            }
        }
        C2170b bVar2 = new C2170b(jSONArray, jSONArray2);
        f8258b = bVar2;
        return bVar2;
    }

    /* renamed from: a */
    public static C7048s.EnumC7049a m30808a(MaxAdFormat maxAdFormat) {
        return maxAdFormat == MaxAdFormat.INTERSTITIAL ? C7048s.EnumC7049a.MEDIATION_INTERSTITIAL : maxAdFormat == MaxAdFormat.REWARDED ? C7048s.EnumC7049a.MEDIATION_INCENTIVIZED : C7048s.EnumC7049a.MEDIATION_BANNER;
    }

    /* renamed from: a */
    public static MaxAdapter m30806a(String str, C2341l lVar) {
        if (TextUtils.isEmpty(str)) {
            lVar.m30262d0().m30039e(AppLovinSdk.TAG, "Failed to create adapter instance. No class name provided");
            return null;
        }
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return (MaxAdapter) cls.getConstructor(AppLovinSdk.class).newInstance(lVar.m30242q());
            }
            C2374t d0 = lVar.m30262d0();
            d0.m30039e(AppLovinSdk.TAG, str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            C2374t d02 = lVar.m30262d0();
            d02.m30043b(AppLovinSdk.TAG, "Failed to load: " + str, th);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m30807a(Object obj) {
        return (obj instanceof AbstractC7036g) && C2422o.m29851b(((AbstractC7036g) obj).m18880p());
    }

    /* renamed from: b */
    public static String m30804b(MaxAdFormat maxAdFormat) {
        return maxAdFormat.getLabel();
    }

    /* renamed from: b */
    public static void m30805b(C2341l lVar) {
        MaxAdapter a;
        JSONArray a2 = f8258b.m30803a();
        for (int i = 0; i < a2.length(); i++) {
            JSONObject a3 = C2390i.m29934a(a2, i, (JSONObject) null, lVar);
            String b = C2390i.m29913b(a3, "class", "", lVar);
            if (!C2422o.m29851b(C2390i.m29913b(a3, "sdk_version", "", lVar)) && (a = m30806a(b, lVar)) != null) {
                C2390i.m29926a(a3, "sdk_version", a.getSdkVersion(), lVar);
            }
        }
    }
}
