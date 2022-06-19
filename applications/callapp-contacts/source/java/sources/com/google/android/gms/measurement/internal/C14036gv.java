package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12114r;
import com.google.android.gms.internal.measurement.C13620jy;
import com.google.android.gms.internal.measurement.C13627ke;
import com.google.android.gms.internal.measurement.C13639kq;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gv.class */
public final class C14036gv extends AbstractC13962ec {

    /* renamed from: a */
    protected C14035gu f51738a;

    /* renamed from: b */
    final C14125kc f51739b;

    /* renamed from: d */
    private AbstractC14007ft f51741d;

    /* renamed from: f */
    private boolean f51743f;

    /* renamed from: e */
    private final Set<AbstractC14008fu> f51742e = new CopyOnWriteArraySet();

    /* renamed from: h */
    private final Object f51745h = new Object();

    /* renamed from: c */
    protected boolean f51740c = true;

    /* renamed from: n */
    private final AbstractC14115jt f51751n = new C14025gk(this);

    /* renamed from: g */
    private final AtomicReference<String> f51744g = new AtomicReference<>();

    /* renamed from: i */
    private C13987f f51746i = new C13987f(null, null);

    /* renamed from: j */
    private int f51747j = 100;

    /* renamed from: l */
    private long f51749l = -1;

    /* renamed from: m */
    private int f51750m = 100;

    /* renamed from: k */
    private final AtomicLong f51748k = new AtomicLong(0);

    public C14036gv(C13979es c13979es) {
        super(c13979es);
        this.f51739b = new C14125kc(c13979es);
    }

    /* renamed from: a */
    public static /* synthetic */ void m11865a(C14036gv c14036gv, C13987f c13987f, int i, long j, boolean z, boolean z2) {
        c14036gv.mo11884S_();
        c14036gv.m12046k();
        if (j <= c14036gv.f51749l && C13987f.m11968a(c14036gv.f51750m, i)) {
            c14036gv.f51637t.mo11661c().f51401i.m12091a("Dropped out-of-date consent setting, proposed settings", c13987f);
            return;
        }
        C13964ee m11991b = c14036gv.f51637t.m11991b();
        C13620jy.m12411b();
        if (m11991b.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
            m11991b.mo11884S_();
            if (m11991b.m12041a(i)) {
                SharedPreferences.Editor edit = m11991b.ah_().edit();
                edit.putString("consent_settings", c13987f.m11970a());
                edit.putInt("consent_source", i);
                edit.apply();
                c14036gv.f51749l = j;
                c14036gv.f51750m = i;
                c14036gv.f51637t.m11984m().m11742a(z);
                if (!z2) {
                    return;
                }
                c14036gv.f51637t.m11984m().m11745a(new AtomicReference<>());
                return;
            }
        }
        c14036gv.f51637t.mo11661c().f51401i.m12091a("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
    }

    /* renamed from: a */
    private void m11857a(String str, String str2, long j, Object obj) {
        this.f51637t.mo11658d().m12011a(new RunnableC14017gc(this, str, str2, obj, j));
    }

    /* renamed from: a */
    public final ArrayList<Bundle> m11860a(String str, String str2) {
        ArrayList<Bundle> arrayList;
        if (this.f51637t.mo11658d().aj_()) {
            this.f51637t.mo11661c().f51395c.m12092a("Cannot get conditional user properties from analytics worker thread");
            arrayList = new ArrayList<>(0);
        } else if (C14133kk.m11527a()) {
            this.f51637t.mo11661c().f51395c.m12092a("Cannot get conditional user properties from main thread");
            arrayList = new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f51637t.mo11658d().m12009a(atomicReference, 5000L, "get conditional user properties", new RunnableC14023gi(this, atomicReference, null, str, str2));
            List list = (List) atomicReference.get();
            if (list == null) {
                this.f51637t.mo11661c().f51395c.m12091a("Timed out waiting for get conditional user properties", null);
                arrayList = new ArrayList<>();
            } else {
                arrayList = C14116ju.m11574a((List<zzaa>) list);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final Map<String, Object> m11852a(String str, String str2, boolean z) {
        C0428a c0428a;
        if (this.f51637t.mo11658d().aj_()) {
            this.f51637t.mo11661c().f51395c.m12092a("Cannot get user properties from analytics worker thread");
            c0428a = Collections.emptyMap();
        } else if (C14133kk.m11527a()) {
            this.f51637t.mo11661c().f51395c.m12092a("Cannot get user properties from main thread");
            c0428a = Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f51637t.mo11658d().m12009a(atomicReference, 5000L, "get user properties", new RunnableC14024gj(this, atomicReference, null, str, str2, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list == null) {
                this.f51637t.mo11661c().f51395c.m12091a("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                c0428a = Collections.emptyMap();
            } else {
                c0428a = new C0428a(list.size());
                for (zzkl zzklVar : list) {
                    Object zza = zzklVar.zza();
                    if (zza != null) {
                        c0428a.put(zzklVar.zzb, zza);
                    }
                }
            }
        }
        return c0428a;
    }

    /* renamed from: a */
    public final void m11874a(long j) {
        this.f51744g.set(null);
        this.f51637t.mo11658d().m12011a(new RunnableC14019ge(this, j));
    }

    /* renamed from: a */
    public final void m11873a(long j, boolean z) {
        mo11884S_();
        m12046k();
        this.f51637t.mo11661c().f51402j.m12092a("Resetting analytics data (FE)");
        C14094iz m11990e = this.f51637t.m11990e();
        m11990e.mo11884S_();
        m11990e.f51932c.m11716a();
        boolean m11979r = this.f51637t.m11979r();
        C13964ee m11991b = this.f51637t.m11991b();
        m11991b.f51458d.m12052a(j);
        if (!TextUtils.isEmpty(m11991b.f51637t.m11991b().f51470p.m12043a())) {
            m11991b.f51470p.m12042a(null);
        }
        C13639kq.m12378b();
        if (m11991b.f51637t.f51529g.m12061d(null, C13935dc.f51326an)) {
            m11991b.f51465k.m12052a(0L);
        }
        if (!m11991b.f51637t.f51529g.m12071R_()) {
            m11991b.m12037a(!m11979r);
        }
        m11991b.f51471q.m12042a(null);
        m11991b.f51472r.m12052a(0L);
        m11991b.f51473s.m12074a(null);
        if (z) {
            this.f51637t.m11984m().m11738g();
        }
        C13639kq.m12378b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51326an)) {
            this.f51637t.m11990e().f51931b.m11713a();
        }
        this.f51740c = !m11979r;
    }

    /* renamed from: a */
    public final void m11872a(Bundle bundle) {
        m11870a(bundle, this.f51637t.f51532j.mo19039a());
    }

    /* renamed from: a */
    public final void m11871a(Bundle bundle, int i, long j) {
        C13620jy.m12411b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
            m12046k();
            String m11967a = C13987f.m11967a(bundle);
            if (m11967a != null) {
                this.f51637t.mo11661c().f51400h.m12091a("Ignoring invalid consent setting", m11967a);
                this.f51637t.mo11661c().f51400h.m12092a("Valid consent values are 'granted', 'denied'");
            }
            m11868a(C13987f.m11961b(bundle), i, j);
        }
    }

    /* renamed from: a */
    public final void m11870a(Bundle bundle, long j) {
        C12045o.m19162a(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY))) {
            this.f51637t.mo11661c().f51398f.m12092a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(PangleAdapterConfiguration.APP_ID_EXTRA_KEY);
        C12045o.m19162a(bundle2);
        C14003fp.m11877a(bundle2, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, String.class, null);
        C14003fp.m11877a(bundle2, "origin", String.class, null);
        C14003fp.m11877a(bundle2, "name", String.class, null);
        C14003fp.m11877a(bundle2, "value", Object.class, null);
        C14003fp.m11877a(bundle2, "trigger_event_name", String.class, null);
        C14003fp.m11877a(bundle2, "trigger_timeout", Long.class, 0L);
        C14003fp.m11877a(bundle2, "timed_out_event_name", String.class, null);
        C14003fp.m11877a(bundle2, "timed_out_event_params", Bundle.class, null);
        C14003fp.m11877a(bundle2, "triggered_event_name", String.class, null);
        C14003fp.m11877a(bundle2, "triggered_event_params", Bundle.class, null);
        C14003fp.m11877a(bundle2, "time_to_live", Long.class, 0L);
        C14003fp.m11877a(bundle2, "expired_event_name", String.class, null);
        C14003fp.m11877a(bundle2, "expired_event_params", Bundle.class, null);
        C12045o.m19160a(bundle2.getString("name"));
        C12045o.m19160a(bundle2.getString("origin"));
        C12045o.m19162a(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.f51637t.m11988g().m11566c(string) != 0) {
            this.f51637t.mo11661c().f51395c.m12091a("Invalid conditional user property name", this.f51637t.m11987h().m12093c(string));
        } else if (this.f51637t.m11988g().m11568b(string, obj) != 0) {
            this.f51637t.mo11661c().f51395c.m12090a("Invalid conditional user property value", this.f51637t.m11987h().m12093c(string), obj);
        } else {
            Object m11565c = this.f51637t.m11988g().m11565c(string, obj);
            if (m11565c == null) {
                this.f51637t.mo11661c().f51395c.m12090a("Unable to normalize conditional user property value", this.f51637t.m11987h().m12093c(string), obj);
                return;
            }
            C14003fp.m11878a(bundle2, m11565c);
            long j2 = bundle2.getLong("trigger_timeout");
            if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
                this.f51637t.mo11661c().f51395c.m12090a("Invalid conditional user property timeout", this.f51637t.m11987h().m12093c(string), Long.valueOf(j2));
                return;
            }
            long j3 = bundle2.getLong("time_to_live");
            if (j3 > 15552000000L || j3 < 1) {
                this.f51637t.mo11661c().f51395c.m12090a("Invalid conditional user property time to live", this.f51637t.m11987h().m12093c(string), Long.valueOf(j3));
            } else {
                this.f51637t.mo11658d().m12011a(new RunnableC14020gf(this, bundle2));
            }
        }
    }

    /* renamed from: a */
    public final void m11869a(C13987f c13987f) {
        mo11884S_();
        boolean z = (c13987f.m11957c() && c13987f.m11962b()) || this.f51637t.m11984m().m11731r();
        if (z != this.f51637t.m11977t()) {
            C13979es c13979es = this.f51637t;
            c13979es.mo11658d().mo11884S_();
            c13979es.f51538p = z;
            C13964ee m11991b = this.f51637t.m11991b();
            C13620jy.m12411b();
            Boolean bool = null;
            if (m11991b.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
                m11991b.mo11884S_();
                bool = null;
                if (m11991b.ah_().contains("measurement_enabled_from_api")) {
                    bool = Boolean.valueOf(m11991b.ah_().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (z && bool != null && !bool.booleanValue()) {
                return;
            }
            m11863a(Boolean.valueOf(z), false);
        }
    }

    /* renamed from: a */
    public final void m11868a(C13987f c13987f, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        C13620jy.m12411b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
            m12046k();
            if (this.f51637t.f51529g.m12061d(null, C13935dc.f51334av) && i == -10) {
                i = -10;
            } else if (c13987f.f51573b == null && c13987f.f51574c == null) {
                this.f51637t.mo11661c().f51400h.m12092a("Discarding empty consent settings");
                return;
            }
            synchronized (this.f51745h) {
                z = true;
                z2 = false;
                if (C13987f.m11968a(i, this.f51747j)) {
                    z2 = c13987f.m11966a(this.f51746i);
                    z3 = false;
                    if (c13987f.m11957c()) {
                        z3 = false;
                        if (!this.f51746i.m11957c()) {
                            z3 = true;
                        }
                    }
                    c13987f = c13987f.m11956c(this.f51746i);
                    this.f51746i = c13987f;
                    this.f51747j = i;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (!z) {
                this.f51637t.mo11661c().f51401i.m12091a("Ignoring lower-priority consent settings, proposed settings", c13987f);
                return;
            }
            long andIncrement = this.f51748k.getAndIncrement();
            if (z2) {
                this.f51744g.set(null);
                this.f51637t.mo11658d().m12007b(new RunnableC14031gq(this, c13987f, j, i, andIncrement, z3));
                return;
            }
            if (this.f51637t.f51529g.m12061d(null, C13935dc.f51334av)) {
                if (i != 30) {
                    if (i == -10) {
                        i = -10;
                    }
                }
                this.f51637t.mo11658d().m12007b(new RunnableC14032gr(this, c13987f, i, andIncrement, z3));
                return;
            }
            this.f51637t.mo11658d().m12011a(new RunnableC14033gs(this, c13987f, i, andIncrement, z3));
        }
    }

    /* renamed from: a */
    public final void m11867a(AbstractC14007ft abstractC14007ft) {
        AbstractC14007ft abstractC14007ft2;
        mo11884S_();
        m12046k();
        if (abstractC14007ft != null && abstractC14007ft != (abstractC14007ft2 = this.f51741d)) {
            C12045o.m19157a(abstractC14007ft2 == null, "EventInterceptor already set.");
        }
        this.f51741d = abstractC14007ft;
    }

    /* renamed from: a */
    public final void m11866a(AbstractC14008fu abstractC14008fu) {
        m12046k();
        C12045o.m19162a(abstractC14008fu);
        if (!this.f51742e.add(abstractC14008fu)) {
            this.f51637t.mo11661c().f51398f.m12092a("OnEventListener already registered");
        }
    }

    /* renamed from: a */
    public final void m11864a(Boolean bool) {
        m12046k();
        this.f51637t.mo11658d().m12011a(new RunnableC14030gp(this, bool));
    }

    /* renamed from: a */
    public final void m11863a(Boolean bool, boolean z) {
        mo11884S_();
        m12046k();
        this.f51637t.mo11661c().f51402j.m12091a("Setting app measurement enabled (FE)", bool);
        this.f51637t.m11991b().m12039a(bool);
        C13620jy.m12411b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51333au) && z) {
            C13964ee m11991b = this.f51637t.m11991b();
            C13620jy.m12411b();
            if (m11991b.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
                m11991b.mo11884S_();
                SharedPreferences.Editor edit = m11991b.ah_().edit();
                if (bool != null) {
                    edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    edit.remove("measurement_enabled_from_api");
                }
                edit.apply();
            }
        }
        C13620jy.m12411b();
        if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51333au) || this.f51637t.m11977t() || (bool != null && !bool.booleanValue())) {
            m11841o();
        }
    }

    /* renamed from: a */
    public final void m11862a(String str) {
        this.f51744g.set(str);
    }

    /* renamed from: a */
    public final void m11861a(String str, Object obj) {
        m11853a("auto", str, obj, true, this.f51637t.f51532j.mo19039a());
    }

    /* renamed from: a */
    public final void m11859a(String str, String str2, long j, Bundle bundle) {
        mo11884S_();
        m11858a(str, str2, j, bundle, true, this.f51741d == null || C14116ju.m11561e(str2), false, null);
    }

    /* renamed from: a */
    public final void m11858a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        String str4;
        C12045o.m19160a(str);
        C12045o.m19162a(bundle);
        mo11884S_();
        m12046k();
        if (!this.f51637t.m11979r()) {
            this.f51637t.mo11661c().f51402j.m12092a("Event not sent since app measurement is disabled");
            return;
        }
        List<String> list = this.f51637t.m11982o().f51364a;
        if (list != null && !list.contains(str2)) {
            this.f51637t.mo11661c().f51402j.m12090a("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f51743f) {
            this.f51743f = true;
            try {
                try {
                    (!this.f51637t.f51527e ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.f51637t.f51523a.getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.f51637t.f51523a);
                } catch (Exception e) {
                    this.f51637t.mo11661c().f51398f.m12091a("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException e2) {
                this.f51637t.mo11661c().f51401i.m12092a("Tag Manager is not found and thus will not be used");
            }
        }
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51314ab) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            m11854a("auto", "_lgclid", bundle.getString("gclid"), this.f51637t.f51532j.mo19039a());
        }
        if (z && C14116ju.m11559g(str2)) {
            this.f51637t.m11988g().m11602a(bundle, this.f51637t.m11991b().f51473s.m12075a());
        }
        if (z3 && !"_iap".equals(str2)) {
            C14116ju m11988g = this.f51637t.m11988g();
            int i = 2;
            if (m11988g.m11585a("event", str2)) {
                if (!m11988g.m11575a("event", C14004fq.f51639a, C14004fq.f51640b, str2)) {
                    i = 13;
                } else if (m11988g.m11588a("event", 40, str2)) {
                    i = 0;
                }
            }
            if (i != 0) {
                this.f51637t.mo11661c().f51397e.m12091a("Invalid public event name. Event will not be logged (FE)", this.f51637t.m11987h().m12097a(str2));
                this.f51637t.m11988g();
                String m11587a = C14116ju.m11587a(str2, 40, true);
                int i2 = 0;
                if (str2 != null) {
                    i2 = str2.length();
                }
                this.f51637t.m11988g().m11591a(this.f51751n, null, i, "_ev", m11587a, i2, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
                return;
            }
        }
        C14044hc m11819a = this.f51637t.m11985l().m11819a(false);
        if (m11819a != null && !bundle.containsKey("_sc")) {
            m11819a.f51766d = true;
        }
        C14052hk.m11825a(m11819a, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean m11561e = C14116ju.m11561e(str2);
        if (!z || this.f51741d == null || m11561e) {
            z4 = equals;
        } else if (!equals) {
            this.f51637t.mo11661c().f51402j.m12090a("Passing event to registered event handler (FE)", this.f51637t.m11987h().m12097a(str2), this.f51637t.m11987h().m12098a(bundle));
            C12045o.m19162a(this.f51741d);
            this.f51741d.mo11550a(str, str2, bundle, j);
            return;
        } else {
            z4 = true;
        }
        if (!this.f51637t.m11974w()) {
            return;
        }
        int m11569b = this.f51637t.m11988g().m11569b(str2);
        if (m11569b != 0) {
            this.f51637t.mo11661c().f51397e.m12091a("Invalid event name. Event will not be logged (FE)", this.f51637t.m11987h().m12097a(str2));
            this.f51637t.m11988g();
            String m11587a2 = C14116ju.m11587a(str2, 40, true);
            int i3 = 0;
            if (str2 != null) {
                i3 = str2.length();
            }
            this.f51637t.m11988g().m11591a(this.f51751n, str3, m11569b, "_ev", m11587a2, i3, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
            return;
        }
        Bundle m11581a = this.f51637t.m11988g().m11581a(str3, str2, bundle, Collections.unmodifiableList(Arrays.asList("_o", "_sn", "_sc", "_si")), z3);
        C12045o.m19162a(m11581a);
        if (m11581a.containsKey("_sc") && m11581a.containsKey("_si")) {
            new C14044hc(m11581a.getString("_sn"), m11581a.getString("_sc"), m11581a.getLong("_si"));
        }
        if (this.f51637t.m11985l().m11819a(false) != null && "_ae".equals(str2)) {
            C14092ix c14092ix = this.f51637t.m11990e().f51932c;
            long mo19038b = c14092ix.f51928d.f51637t.f51532j.mo19038b();
            long j2 = mo19038b - c14092ix.f51926b;
            c14092ix.f51926b = mo19038b;
            if (j2 > 0) {
                this.f51637t.m11988g().m11603a(m11581a, j2);
            }
        }
        C13627ke.m12398b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51325am)) {
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                C14116ju m11988g2 = this.f51637t.m11988g();
                String string = m11581a.getString("_ffr");
                if (C12114r.m19007a(string)) {
                    str4 = null;
                } else {
                    str4 = string;
                    if (string != null) {
                        str4 = string.trim();
                    }
                }
                if (C14116ju.m11564c(str4, m11988g2.f51637t.m11991b().f51470p.m12043a())) {
                    m11988g2.f51637t.mo11661c().f51402j.m12092a("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                m11988g2.f51637t.m11991b().f51470p.m12042a(str4);
            } else if ("_ae".equals(str2)) {
                String m12043a = this.f51637t.m11988g().f51637t.m11991b().f51470p.m12043a();
                if (!TextUtils.isEmpty(m12043a)) {
                    m11581a.putString("_ffr", m12043a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m11581a);
        if (this.f51637t.m11991b().f51465k.m12053a() > 0 && this.f51637t.m11991b().m12040a(j) && this.f51637t.m11991b().f51467m.m12077a()) {
            this.f51637t.mo11661c().f51403k.m12092a("Current session is expired, remove the session number, ID, and engagement time");
            m11854a("auto", "_sid", (Object) null, this.f51637t.f51532j.mo19039a());
            m11854a("auto", "_sno", (Object) null, this.f51637t.f51532j.mo19039a());
            m11854a("auto", "_se", (Object) null, this.f51637t.f51532j.mo19039a());
        }
        if (m11581a.getLong("extend_session", 0L) == 1) {
            this.f51637t.mo11661c().f51403k.m12092a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
            this.f51637t.m11990e().f51931b.m11712a(j, true);
        }
        ArrayList arrayList2 = new ArrayList(m11581a.keySet());
        Collections.sort(arrayList2);
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str5 = (String) arrayList2.get(i4);
            if (str5 != null) {
                this.f51637t.m11988g();
                Object obj = m11581a.get(str5);
                if (obj instanceof Bundle) {
                    bundleArr = new Bundle[]{(Bundle) obj};
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList3 = (ArrayList) obj;
                    bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                } else {
                    bundleArr = null;
                }
                if (bundleArr != null) {
                    m11581a.putParcelableArray(str5, bundleArr);
                }
            }
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            Bundle bundle2 = (Bundle) arrayList.get(i5);
            String str6 = i5 != 0 ? "_ep" : str2;
            bundle2.putString("_o", str);
            Bundle bundle3 = bundle2;
            if (z2) {
                bundle3 = this.f51637t.m11988g().m11606a(bundle2);
            }
            this.f51637t.m11984m().m11748a(new zzas(str6, new zzaq(bundle3), str, j), str3);
            if (!z4) {
                for (AbstractC14008fu abstractC14008fu : this.f51742e) {
                    abstractC14008fu.mo8584a(str, str2, new Bundle(bundle3), j);
                }
            }
            i5++;
        }
        if (this.f51637t.m11985l().m11819a(false) == null || !"_ae".equals(str2)) {
            return;
        }
        this.f51637t.m11990e().f51932c.m11714a(true, true, this.f51637t.f51532j.mo19038b());
    }

    /* renamed from: a */
    public final void m11856a(String str, String str2, Bundle bundle) {
        m11855a(str, str2, bundle, true, true, this.f51637t.f51532j.mo19039a());
    }

    /* renamed from: a */
    public final void m11855a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51330ar) || !C14116ju.m11564c(str2, "screen_view")) {
            m11849b(str, str2, j, bundle, z2, !z2 || this.f51741d == null || C14116ju.m11561e(str2), !z, null);
        } else {
            this.f51637t.m11985l().m11826a(bundle, j);
        }
    }

    /* renamed from: a */
    public final void m11854a(String str, String str2, Object obj, long j) {
        Long l;
        C12045o.m19160a(str);
        C12045o.m19160a(str2);
        mo11884S_();
        m12046k();
        Object obj2 = obj;
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String str4 = "false";
                    Long valueOf = Long.valueOf(true == "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    C13963ed c13963ed = this.f51637t.m11991b().f51463i;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    c13963ed.m12042a(str4);
                    l = valueOf;
                    str2 = "_npa";
                    obj2 = l;
                }
            }
            obj2 = obj;
            if (obj == null) {
                this.f51637t.m11991b().f51463i.m12042a("unset");
                l = obj;
                str2 = "_npa";
                obj2 = l;
            }
        }
        if (!this.f51637t.m11979r()) {
            this.f51637t.mo11661c().f51403k.m12092a("User property not set since app measurement is disabled");
        } else if (!this.f51637t.m11974w()) {
        } else {
            this.f51637t.m11984m().m11747a(new zzkl(str2, j, obj2, str));
        }
    }

    /* renamed from: a */
    public final void m11853a(String str, String str2, Object obj, boolean z, long j) {
        int i;
        if (str == null) {
            str = "app";
        }
        if (z) {
            i = this.f51637t.m11988g().m11566c(str2);
        } else {
            C14116ju m11988g = this.f51637t.m11988g();
            if (m11988g.m11585a("user property", str2)) {
                if (!m11988g.m11575a("user property", C14006fs.f51647a, (String[]) null, str2)) {
                    i = 15;
                } else if (m11988g.m11588a("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            this.f51637t.m11988g();
            this.f51637t.m11988g().m11591a(this.f51751n, null, i, "_ev", C14116ju.m11587a(str2, 24, true), str2 != null ? str2.length() : 0, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
        } else if (obj == null) {
            m11857a(str, str2, j, (Object) null);
        } else {
            int m11568b = this.f51637t.m11988g().m11568b(str2, obj);
            if (m11568b != 0) {
                this.f51637t.m11988g();
                this.f51637t.m11988g().m11591a(this.f51751n, null, m11568b, "_ev", C14116ju.m11587a(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
                return;
            }
            Object m11565c = this.f51637t.m11988g().m11565c(str2, obj);
            if (m11565c == null) {
                return;
            }
            m11857a(str, str2, j, m11565c);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m11851b(Bundle bundle) {
        if (bundle == null) {
            this.f51637t.m11991b().f51473s.m12074a(new Bundle());
            return;
        }
        Bundle m12075a = this.f51637t.m11991b().f51473s.m12075a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                this.f51637t.m11988g();
                if (C14116ju.m11590a(obj)) {
                    this.f51637t.m11988g().m11591a(this.f51751n, null, 27, null, null, 0, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
                }
                this.f51637t.mo11661c().f51400h.m12090a("Invalid default event parameter type. Name, value", str, obj);
            } else if (C14116ju.m11561e(str)) {
                this.f51637t.mo11661c().f51400h.m12091a("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                m12075a.remove(str);
            } else if (this.f51637t.m11988g().m11584a("param", str, 100, obj)) {
                this.f51637t.m11988g().m11601a(m12075a, str, obj);
            }
        }
        this.f51637t.m11988g();
        int m12073P_ = this.f51637t.f51529g.m12073P_();
        if (m12075a.size() > m12073P_) {
            int i = 0;
            for (String str2 : new TreeSet(m12075a.keySet())) {
                int i2 = i + 1;
                i = i2;
                if (i2 > m12073P_) {
                    m12075a.remove(str2);
                    i = i2;
                }
            }
            this.f51637t.m11988g().m11591a(this.f51751n, null, 26, null, null, 0, this.f51637t.f51529g.m12061d(null, C13935dc.f51338az));
            this.f51637t.mo11661c().f51400h.m12092a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.f51637t.m11991b().f51473s.m12074a(m12075a);
        this.f51637t.m11984m().m11758a(m12075a);
    }

    /* renamed from: b */
    public final void m11850b(AbstractC14008fu abstractC14008fu) {
        m12046k();
        C12045o.m19162a(abstractC14008fu);
        if (!this.f51742e.remove(abstractC14008fu)) {
            this.f51637t.mo11661c().f51398f.m12092a("OnEventListener had not been registered");
        }
    }

    /* renamed from: b */
    public final void m11849b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
        }
        this.f51637t.mo11658d().m12011a(new RunnableC14016gb(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    /* renamed from: b */
    public final void m11848b(String str, String str2, Bundle bundle) {
        long mo19039a = this.f51637t.f51532j.mo19039a();
        C12045o.m19160a(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", mo19039a);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.f51637t.mo11658d().m12011a(new RunnableC14021gg(this, bundle2));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13962ec
    /* renamed from: b */
    protected final boolean mo11709b() {
        return false;
    }

    /* renamed from: e */
    public final void m11847e() {
        if (!(this.f51637t.f51523a.getApplicationContext() instanceof Application) || this.f51738a == null) {
            return;
        }
        ((Application) this.f51637t.f51523a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f51738a);
    }

    /* renamed from: f */
    public final Boolean m11846f() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f51637t.mo11658d().m12009a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "boolean test flag value", new RunnableC14022gh(this, atomicReference));
    }

    /* renamed from: g */
    public final String m11845g() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f51637t.mo11658d().m12009a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "String test flag value", new RunnableC14026gl(this, atomicReference));
    }

    /* renamed from: h */
    public final Long m11844h() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f51637t.mo11658d().m12009a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "long test flag value", new RunnableC14027gm(this, atomicReference));
    }

    /* renamed from: i */
    public final Integer m11843i() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f51637t.mo11658d().m12009a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "int test flag value", new RunnableC14028gn(this, atomicReference));
    }

    /* renamed from: n */
    public final Double m11842n() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f51637t.mo11658d().m12009a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "double test flag value", new RunnableC14029go(this, atomicReference));
    }

    /* renamed from: o */
    public final void m11841o() {
        mo11884S_();
        String m12043a = this.f51637t.m11991b().f51463i.m12043a();
        if (m12043a != null) {
            if ("unset".equals(m12043a)) {
                m11854a("app", "_npa", (Object) null, this.f51637t.f51532j.mo19039a());
            } else {
                m11854a("app", "_npa", Long.valueOf((true != "true".equals(m12043a) ? null : 1) == 1 ? 1L : 0L), this.f51637t.f51532j.mo19039a());
            }
        }
        if (!this.f51637t.m11979r() || !this.f51740c) {
            this.f51637t.mo11661c().f51402j.m12092a("Updating Scion state (FE)");
            this.f51637t.m11984m().m11739f();
            return;
        }
        this.f51637t.mo11661c().f51402j.m12092a("Recording app launch after enabling measurement for the first time (FE)");
        m11839q();
        C13639kq.m12378b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51326an)) {
            this.f51637t.m11990e().f51931b.m11713a();
        }
        this.f51637t.mo11658d().m12011a(new RunnableC14013fz(this));
    }

    /* renamed from: p */
    public final String m11840p() {
        return this.f51744g.get();
    }

    /* renamed from: q */
    public final void m11839q() {
        Boolean m12064c;
        mo11884S_();
        m12046k();
        if (this.f51637t.m11974w()) {
            if (this.f51637t.f51529g.m12061d(null, C13935dc.f51313aa) && (m12064c = this.f51637t.f51529g.m12064c("google_analytics_deferred_deep_link_enabled")) != null && m12064c.booleanValue()) {
                this.f51637t.mo11661c().f51402j.m12092a("Deferred Deep Link feature enabled.");
                this.f51637t.mo11658d().m12011a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.fx

                    /* renamed from: a */
                    private final C14036gv f51661a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f51661a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C14036gv c14036gv = this.f51661a;
                        c14036gv.mo11884S_();
                        if (c14036gv.f51637t.m11991b().f51468n.m12077a()) {
                            c14036gv.f51637t.mo11661c().f51402j.m12092a("Deferred Deep Link already retrieved. Not fetching again.");
                            return;
                        }
                        long m12053a = c14036gv.f51637t.m11991b().f51469o.m12053a();
                        c14036gv.f51637t.m11991b().f51469o.m12052a(1 + m12053a);
                        if (m12053a < 5) {
                            c14036gv.f51637t.m11973x();
                            return;
                        }
                        c14036gv.f51637t.mo11661c().f51398f.m12092a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        c14036gv.f51637t.m11991b().f51468n.m12076a(true);
                    }
                });
            }
            this.f51637t.m11984m().m11737h();
            this.f51740c = false;
            C13964ee m11991b = this.f51637t.m11991b();
            m11991b.mo11884S_();
            String string = m11991b.ah_().getString("previous_os_version", null);
            m11991b.f51637t.m11983n().m11881g();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = m11991b.ah_().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.f51637t.m11983n().m11881g();
            if (string.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            m11856a("auto", "_ou", bundle);
        }
    }

    /* renamed from: r */
    public final String m11838r() {
        C14044hc c14044hc = this.f51637t.m11985l().f51790a;
        if (c14044hc != null) {
            return c14044hc.f51763a;
        }
        return null;
    }

    /* renamed from: s */
    public final String m11837s() {
        C14044hc c14044hc = this.f51637t.m11985l().f51790a;
        if (c14044hc != null) {
            return c14044hc.f51764b;
        }
        return null;
    }

    /* renamed from: t */
    public final String m11836t() {
        if (this.f51637t.f51524b == null) {
            try {
                return C14043hb.m11833a(this.f51637t.f51523a, this.f51637t.f51533k);
            } catch (IllegalStateException e) {
                this.f51637t.mo11661c().f51395c.m12091a("getGoogleAppId failed with exception", e);
                return null;
            }
        }
        return this.f51637t.f51524b;
    }
}
