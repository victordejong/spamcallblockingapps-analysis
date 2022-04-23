package p131c.p135b.p136a.p148e.p150c;

import android.text.TextUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.c.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/c/b.class */
public final class C2246b {

    /* renamed from: g */
    public static final Map<String, C2246b> f8436g = new HashMap();

    /* renamed from: h */
    public static final Object f8437h = new Object();

    /* renamed from: a */
    public C2341l f8438a;

    /* renamed from: b */
    public JSONObject f8439b;

    /* renamed from: c */
    public final String f8440c;

    /* renamed from: d */
    public String f8441d;

    /* renamed from: e */
    public AppLovinAdSize f8442e;

    /* renamed from: f */
    public AppLovinAdType f8443f;

    public C2246b(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, C2341l lVar) {
        if (!TextUtils.isEmpty(str) || !(appLovinAdType == null || appLovinAdSize == null)) {
            this.f8438a = lVar;
            if (lVar != null) {
                lVar.m30262d0();
            }
            this.f8442e = appLovinAdSize;
            this.f8443f = appLovinAdType;
            if (!TextUtils.isEmpty(str)) {
                this.f8440c = str.toLowerCase(Locale.ENGLISH);
                this.f8441d = str.toLowerCase(Locale.ENGLISH);
                return;
            }
            this.f8440c = (appLovinAdSize.getLabel() + "_" + appLovinAdType.getLabel()).toLowerCase(Locale.ENGLISH);
            return;
        }
        throw new IllegalArgumentException("No zone identifier or type or size specified");
    }

    /* renamed from: a */
    public static C2246b m30647a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, C2341l lVar) {
        return m30646a(appLovinAdSize, appLovinAdType, null, lVar);
    }

    /* renamed from: a */
    public static C2246b m30646a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, C2341l lVar) {
        C2246b bVar = new C2246b(appLovinAdSize, appLovinAdType, str, lVar);
        synchronized (f8437h) {
            String str2 = bVar.f8440c;
            if (f8436g.containsKey(str2)) {
                bVar = f8436g.get(str2);
            } else {
                f8436g.put(str2, bVar);
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public static C2246b m30644a(String str, C2341l lVar) {
        return m30646a(null, null, str, lVar);
    }

    /* renamed from: a */
    public static C2246b m30643a(String str, JSONObject jSONObject, C2341l lVar) {
        C2246b a = m30644a(str, lVar);
        a.f8439b = jSONObject;
        return a;
    }

    /* renamed from: a */
    public static void m30642a(JSONObject jSONObject, C2341l lVar) {
        if (jSONObject != null && jSONObject.has("ad_size") && jSONObject.has("ad_type")) {
            synchronized (f8437h) {
                C2246b bVar = f8436g.get(C2390i.m29913b(jSONObject, "zone_id", "", lVar));
                if (bVar != null) {
                    bVar.f8442e = AppLovinAdSize.fromString(C2390i.m29913b(jSONObject, "ad_size", "", lVar));
                    bVar.f8443f = AppLovinAdType.fromString(C2390i.m29913b(jSONObject, "ad_type", "", lVar));
                }
            }
        }
    }

    /* renamed from: b */
    public static C2246b m30639b(String str, C2341l lVar) {
        return m30646a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, str, lVar);
    }

    /* renamed from: b */
    public static Collection<C2246b> m30640b(C2341l lVar) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(8);
        Collections.addAll(linkedHashSet, m30637c(lVar), m30635d(lVar), m30633e(lVar), m30631f(lVar), m30629g(lVar), m30627h(lVar));
        return Collections.unmodifiableSet(linkedHashSet);
    }

    /* renamed from: c */
    public static C2246b m30637c(C2341l lVar) {
        return m30647a(AppLovinAdSize.BANNER, AppLovinAdType.REGULAR, lVar);
    }

    /* renamed from: d */
    public static C2246b m30635d(C2341l lVar) {
        return m30647a(AppLovinAdSize.MREC, AppLovinAdType.REGULAR, lVar);
    }

    /* renamed from: e */
    public static C2246b m30633e(C2341l lVar) {
        return m30647a(AppLovinAdSize.LEADER, AppLovinAdType.REGULAR, lVar);
    }

    /* renamed from: f */
    public static C2246b m30631f(C2341l lVar) {
        return m30647a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR, lVar);
    }

    /* renamed from: g */
    public static C2246b m30629g(C2341l lVar) {
        return m30647a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, lVar);
    }

    /* renamed from: h */
    public static C2246b m30627h(C2341l lVar) {
        return m30647a(AppLovinAdSize.NATIVE, AppLovinAdType.NATIVE, lVar);
    }

    /* renamed from: a */
    public final <ST> C2251d.C2256e<ST> m30645a(String str, C2251d.C2256e<ST> eVar) {
        return this.f8438a.m30283a(str + this.f8440c, eVar);
    }

    /* renamed from: a */
    public String m30650a() {
        return this.f8440c;
    }

    /* renamed from: a */
    public void m30648a(C2341l lVar) {
        this.f8438a = lVar;
        lVar.m30262d0();
    }

    /* renamed from: a */
    public final boolean m30649a(C2251d.C2256e<String> eVar, AppLovinAdSize appLovinAdSize) {
        return ((String) this.f8438a.m30291a(eVar)).toUpperCase(Locale.ENGLISH).contains(appLovinAdSize.getLabel());
    }

    /* renamed from: b */
    public MaxAdFormat m30641b() {
        AppLovinAdSize c = m30638c();
        if (c == AppLovinAdSize.BANNER) {
            return MaxAdFormat.BANNER;
        }
        if (c == AppLovinAdSize.LEADER) {
            return MaxAdFormat.LEADER;
        }
        if (c == AppLovinAdSize.MREC) {
            return MaxAdFormat.MREC;
        }
        if (c == AppLovinAdSize.NATIVE) {
            return MaxAdFormat.NATIVE;
        }
        if (c != AppLovinAdSize.INTERSTITIAL) {
            return null;
        }
        if (m30636d() == AppLovinAdType.REGULAR) {
            return MaxAdFormat.INTERSTITIAL;
        }
        if (m30636d() == AppLovinAdType.INCENTIVIZED) {
            return MaxAdFormat.REWARDED;
        }
        return null;
    }

    /* renamed from: c */
    public AppLovinAdSize m30638c() {
        if (this.f8442e == null && C2390i.m29932a(this.f8439b, "ad_size")) {
            this.f8442e = AppLovinAdSize.fromString(C2390i.m29913b(this.f8439b, "ad_size", (String) null, this.f8438a));
        }
        return this.f8442e;
    }

    /* renamed from: d */
    public AppLovinAdType m30636d() {
        if (this.f8443f == null && C2390i.m29932a(this.f8439b, "ad_type")) {
            this.f8443f = AppLovinAdType.fromString(C2390i.m29913b(this.f8439b, "ad_type", (String) null, this.f8438a));
        }
        return this.f8443f;
    }

    /* renamed from: e */
    public boolean m30634e() {
        return AppLovinAdSize.NATIVE.equals(m30638c()) && AppLovinAdType.NATIVE.equals(m30636d());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2246b.class != obj.getClass()) {
            return false;
        }
        return this.f8440c.equalsIgnoreCase(((C2246b) obj).f8440c);
    }

    /* renamed from: f */
    public int m30632f() {
        if (C2390i.m29932a(this.f8439b, "capacity")) {
            return C2390i.m29916b(this.f8439b, "capacity", 0, this.f8438a);
        }
        if (!TextUtils.isEmpty(this.f8441d)) {
            return m30634e() ? ((Integer) this.f8438a.m30291a(C2251d.C2256e.f8778z0)).intValue() : ((Integer) this.f8438a.m30291a(C2251d.C2256e.f8773y0)).intValue();
        }
        return ((Integer) this.f8438a.m30291a(m30645a("preload_capacity_", C2251d.C2256e.f8758v0))).intValue();
    }

    /* renamed from: g */
    public int m30630g() {
        if (C2390i.m29932a(this.f8439b, "extended_capacity")) {
            return C2390i.m29916b(this.f8439b, "extended_capacity", 0, this.f8438a);
        }
        if (TextUtils.isEmpty(this.f8441d)) {
            return ((Integer) this.f8438a.m30291a(m30645a("extended_preload_capacity_", C2251d.C2256e.f8768x0))).intValue();
        } else if (m30634e()) {
            return 0;
        } else {
            return ((Integer) this.f8438a.m30291a(C2251d.C2256e.f8508A0)).intValue();
        }
    }

    /* renamed from: h */
    public int m30628h() {
        return C2390i.m29916b(this.f8439b, "preload_count", 0, this.f8438a);
    }

    public int hashCode() {
        return this.f8440c.hashCode();
    }

    /* renamed from: i */
    public boolean m30626i() {
        if (!((Boolean) this.f8438a.m30291a(C2251d.C2256e.f8730q0)).booleanValue() || !m30624k()) {
            return false;
        }
        if (TextUtils.isEmpty(this.f8441d)) {
            C2251d.C2256e a = m30645a("preload_merge_init_tasks_", (C2251d.C2256e) null);
            boolean z = false;
            if (a != null) {
                z = false;
                if (((Boolean) this.f8438a.m30291a(a)).booleanValue()) {
                    z = false;
                    if (m30632f() > 0) {
                        z = true;
                    }
                }
            }
            return z;
        } else if (this.f8439b != null && m30628h() == 0) {
            return false;
        } else {
            String upperCase = ((String) this.f8438a.m30291a(C2251d.C2256e.f8736r0)).toUpperCase(Locale.ENGLISH);
            return (upperCase.contains(AppLovinAdSize.INTERSTITIAL.getLabel()) || upperCase.contains(AppLovinAdSize.BANNER.getLabel()) || upperCase.contains(AppLovinAdSize.MREC.getLabel()) || upperCase.contains(AppLovinAdSize.LEADER.getLabel())) ? ((Boolean) this.f8438a.m30291a(C2251d.C2256e.f8513B0)).booleanValue() : this.f8438a.m30238u().m30622a(this) && m30628h() > 0 && ((Boolean) this.f8438a.m30291a(C2251d.C2256e.f8540G2)).booleanValue();
        }
    }

    /* renamed from: j */
    public boolean m30625j() {
        return m30640b(this.f8438a).contains(this);
    }

    /* renamed from: k */
    public final boolean m30624k() {
        if (C2422o.m29851b(this.f8441d)) {
            return true;
        }
        return AppLovinAdType.INCENTIVIZED.equals(m30636d()) ? ((Boolean) this.f8438a.m30291a(C2251d.C2256e.f8742s0)).booleanValue() : m30649a(C2251d.C2256e.f8736r0, m30638c());
    }

    public String toString() {
        return "AdZone{id=" + this.f8440c + ", zoneObject=" + this.f8439b + '}';
    }
}
