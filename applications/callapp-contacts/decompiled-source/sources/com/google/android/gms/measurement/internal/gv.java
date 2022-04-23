package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.b.a;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.r;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.ke;
import com.google.android.gms.internal.measurement.kq;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gv.class */
public final class gv extends ec {

    /* renamed from: a  reason: collision with root package name */
    protected gu f29728a;

    /* renamed from: b  reason: collision with root package name */
    final kc f29729b;

    /* renamed from: d  reason: collision with root package name */
    private ft f29731d;
    private boolean f;
    private final Set<fu> e = new CopyOnWriteArraySet();
    private final Object h = new Object();

    /* renamed from: c  reason: collision with root package name */
    protected boolean f29730c = true;
    private final jt n = new gk(this);
    private final AtomicReference<String> g = new AtomicReference<>();
    private f i = new f(null, null);
    private int j = 100;
    private long l = -1;
    private int m = 100;
    private final AtomicLong k = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: protected */
    public gv(es esVar) {
        super(esVar);
        this.f29729b = new kc(esVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(gv gvVar, f fVar, int i, long j, boolean z, boolean z2) {
        gvVar.S_();
        gvVar.k();
        if (j > gvVar.l || !f.a(gvVar.m, i)) {
            ee b2 = gvVar.t.b();
            jy.b();
            if (b2.t.g.d(null, dc.au)) {
                b2.S_();
                if (b2.a(i)) {
                    SharedPreferences.Editor edit = b2.ah_().edit();
                    edit.putString("consent_settings", fVar.a());
                    edit.putInt("consent_source", i);
                    edit.apply();
                    gvVar.l = j;
                    gvVar.m = i;
                    gvVar.t.m().a(z);
                    if (z2) {
                        gvVar.t.m().a(new AtomicReference<>());
                        return;
                    }
                    return;
                }
            }
            gvVar.t.c().i.a("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
            return;
        }
        gvVar.t.c().i.a("Dropped out-of-date consent setting, proposed settings", fVar);
    }

    private void a(String str, String str2, long j, Object obj) {
        this.t.d().a(new gc(this, str, str2, obj, j));
    }

    public final ArrayList<Bundle> a(String str, String str2) {
        ArrayList<Bundle> arrayList;
        if (this.t.d().aj_()) {
            this.t.c().f29506c.a("Cannot get conditional user properties from analytics worker thread");
            arrayList = new ArrayList<>(0);
        } else if (kk.a()) {
            this.t.c().f29506c.a("Cannot get conditional user properties from main thread");
            arrayList = new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.t.d().a(atomicReference, 5000L, "get conditional user properties", new gi(this, atomicReference, null, str, str2));
            List list = (List) atomicReference.get();
            if (list == null) {
                this.t.c().f29506c.a("Timed out waiting for get conditional user properties", null);
                arrayList = new ArrayList<>();
            } else {
                arrayList = ju.a((List<zzaa>) list);
            }
        }
        return arrayList;
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        Map<String, Object> map;
        if (this.t.d().aj_()) {
            this.t.c().f29506c.a("Cannot get user properties from analytics worker thread");
            map = Collections.emptyMap();
        } else if (kk.a()) {
            this.t.c().f29506c.a("Cannot get user properties from main thread");
            map = Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.t.d().a(atomicReference, 5000L, "get user properties", new gj(this, atomicReference, null, str, str2, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list == null) {
                this.t.c().f29506c.a("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                map = Collections.emptyMap();
            } else {
                map = new a<>(list.size());
                for (zzkl zzklVar : list) {
                    Object zza = zzklVar.zza();
                    if (zza != null) {
                        map.put(zzklVar.zzb, zza);
                    }
                }
            }
        }
        return map;
    }

    public final void a(long j) {
        this.g.set(null);
        this.t.d().a(new ge(this, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, boolean z) {
        S_();
        k();
        this.t.c().j.a("Resetting analytics data (FE)");
        iz e = this.t.e();
        e.S_();
        e.f29877c.a();
        boolean r = this.t.r();
        ee b2 = this.t.b();
        b2.f29554d.a(j);
        if (!TextUtils.isEmpty(b2.t.b().p.a())) {
            b2.p.a(null);
        }
        kq.b();
        if (b2.t.g.d(null, dc.an)) {
            b2.k.a(0L);
        }
        if (!b2.t.g.R_()) {
            b2.a(!r);
        }
        b2.q.a(null);
        b2.r.a(0L);
        b2.s.a(null);
        if (z) {
            this.t.m().g();
        }
        kq.b();
        if (this.t.g.d(null, dc.an)) {
            this.t.e().f29876b.a();
        }
        this.f29730c = !r;
    }

    public final void a(Bundle bundle) {
        a(bundle, this.t.j.a());
    }

    public final void a(Bundle bundle, int i, long j) {
        jy.b();
        if (this.t.g.d(null, dc.au)) {
            k();
            String a2 = f.a(bundle);
            if (a2 != null) {
                this.t.c().h.a("Ignoring invalid consent setting", a2);
                this.t.c().h.a("Valid consent values are 'granted', 'denied'");
            }
            a(f.b(bundle), i, j);
        }
    }

    public final void a(Bundle bundle, long j) {
        o.a(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY))) {
            this.t.c().f.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(PangleAdapterConfiguration.APP_ID_EXTRA_KEY);
        o.a(bundle2);
        fp.a(bundle2, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, String.class, null);
        fp.a(bundle2, "origin", String.class, null);
        fp.a(bundle2, "name", String.class, null);
        fp.a(bundle2, "value", Object.class, null);
        fp.a(bundle2, "trigger_event_name", String.class, null);
        fp.a(bundle2, "trigger_timeout", Long.class, 0L);
        fp.a(bundle2, "timed_out_event_name", String.class, null);
        fp.a(bundle2, "timed_out_event_params", Bundle.class, null);
        fp.a(bundle2, "triggered_event_name", String.class, null);
        fp.a(bundle2, "triggered_event_params", Bundle.class, null);
        fp.a(bundle2, "time_to_live", Long.class, 0L);
        fp.a(bundle2, "expired_event_name", String.class, null);
        fp.a(bundle2, "expired_event_params", Bundle.class, null);
        o.a(bundle2.getString("name"));
        o.a(bundle2.getString("origin"));
        o.a(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.t.g().c(string) != 0) {
            this.t.c().f29506c.a("Invalid conditional user property name", this.t.h().c(string));
        } else if (this.t.g().b(string, obj) == 0) {
            Object c2 = this.t.g().c(string, obj);
            if (c2 == null) {
                this.t.c().f29506c.a("Unable to normalize conditional user property value", this.t.h().c(string), obj);
                return;
            }
            fp.a(bundle2, c2);
            long j2 = bundle2.getLong("trigger_timeout");
            if (TextUtils.isEmpty(bundle2.getString("trigger_event_name")) || (j2 <= 15552000000L && j2 >= 1)) {
                long j3 = bundle2.getLong("time_to_live");
                if (j3 > 15552000000L || j3 < 1) {
                    this.t.c().f29506c.a("Invalid conditional user property time to live", this.t.h().c(string), Long.valueOf(j3));
                } else {
                    this.t.d().a(new gf(this, bundle2));
                }
            } else {
                this.t.c().f29506c.a("Invalid conditional user property timeout", this.t.h().c(string), Long.valueOf(j2));
            }
        } else {
            this.t.c().f29506c.a("Invalid conditional user property value", this.t.h().c(string), obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar) {
        S_();
        boolean z = (fVar.c() && fVar.b()) || this.t.m().r();
        if (z != this.t.t()) {
            es esVar = this.t;
            esVar.d().S_();
            esVar.p = z;
            ee b2 = this.t.b();
            jy.b();
            Boolean bool = null;
            if (b2.t.g.d(null, dc.au)) {
                b2.S_();
                bool = null;
                if (b2.ah_().contains("measurement_enabled_from_api")) {
                    bool = Boolean.valueOf(b2.ah_().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (!z || bool == null || bool.booleanValue()) {
                a(Boolean.valueOf(z), false);
            }
        }
    }

    public final void a(f fVar, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        jy.b();
        if (this.t.g.d(null, dc.au)) {
            k();
            if (this.t.g.d(null, dc.av) && i == -10) {
                i = -10;
            } else if (fVar.f29612b == null && fVar.f29613c == null) {
                this.t.c().h.a("Discarding empty consent settings");
                return;
            }
            synchronized (this.h) {
                z = true;
                z2 = false;
                if (f.a(i, this.j)) {
                    z2 = fVar.a(this.i);
                    z3 = false;
                    if (fVar.c()) {
                        z3 = false;
                        if (!this.i.c()) {
                            z3 = true;
                        }
                    }
                    fVar = fVar.c(this.i);
                    this.i = fVar;
                    this.j = i;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (!z) {
                this.t.c().i.a("Ignoring lower-priority consent settings, proposed settings", fVar);
                return;
            }
            long andIncrement = this.k.getAndIncrement();
            if (!z2) {
                if (this.t.g.d(null, dc.av)) {
                    if (i != 30) {
                        if (i == -10) {
                            i = -10;
                        }
                    }
                    this.t.d().b(new gr(this, fVar, i, andIncrement, z3));
                    return;
                }
                this.t.d().a(new gs(this, fVar, i, andIncrement, z3));
                return;
            }
            this.g.set(null);
            this.t.d().b(new gq(this, fVar, j, i, andIncrement, z3));
        }
    }

    public final void a(ft ftVar) {
        ft ftVar2;
        S_();
        k();
        if (!(ftVar == null || ftVar == (ftVar2 = this.f29731d))) {
            o.a(ftVar2 == null, "EventInterceptor already set.");
        }
        this.f29731d = ftVar;
    }

    public final void a(fu fuVar) {
        k();
        o.a(fuVar);
        if (!this.e.add(fuVar)) {
            this.t.c().f.a("OnEventListener already registered");
        }
    }

    public final void a(Boolean bool) {
        k();
        this.t.d().a(new gp(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Boolean bool, boolean z) {
        S_();
        k();
        this.t.c().j.a("Setting app measurement enabled (FE)", bool);
        this.t.b().a(bool);
        jy.b();
        if (this.t.g.d(null, dc.au) && z) {
            ee b2 = this.t.b();
            jy.b();
            if (b2.t.g.d(null, dc.au)) {
                b2.S_();
                SharedPreferences.Editor edit = b2.ah_().edit();
                if (bool != null) {
                    edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    edit.remove("measurement_enabled_from_api");
                }
                edit.apply();
            }
        }
        jy.b();
        if (!this.t.g.d(null, dc.au) || this.t.t() || (bool != null && !bool.booleanValue())) {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.g.set(str);
    }

    public final void a(String str, Object obj) {
        a("auto", str, obj, true, this.t.j.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, long j, Bundle bundle) {
        S_();
        a(str, str2, j, bundle, true, this.f29731d == null || ju.e(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        String str4;
        o.a(str);
        o.a(bundle);
        S_();
        k();
        if (this.t.r()) {
            List<String> list = this.t.o().f29485a;
            if (list == null || list.contains(str2)) {
                int i = 0;
                int i2 = 0;
                if (!this.f) {
                    this.f = true;
                    try {
                        try {
                            (!this.t.e ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.t.f29583a.getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.t.f29583a);
                        } catch (Exception e) {
                            this.t.c().f.a("Failed to invoke Tag Manager's initialize() method", e);
                        }
                    } catch (ClassNotFoundException e2) {
                        this.t.c().i.a("Tag Manager is not found and thus will not be used");
                    }
                }
                if (this.t.g.d(null, dc.ab) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
                    a("auto", "_lgclid", bundle.getString("gclid"), this.t.j.a());
                }
                if (z && ju.g(str2)) {
                    this.t.g().a(bundle, this.t.b().s.a());
                }
                if (z3 && !"_iap".equals(str2)) {
                    ju g = this.t.g();
                    int i3 = 2;
                    if (g.a("event", str2)) {
                        if (!g.a("event", fq.f29648a, fq.f29649b, str2)) {
                            i3 = 13;
                        } else if (g.a("event", 40, str2)) {
                            i3 = 0;
                        }
                    }
                    if (i3 != 0) {
                        this.t.c().e.a("Invalid public event name. Event will not be logged (FE)", this.t.h().a(str2));
                        this.t.g();
                        String a2 = ju.a(str2, 40, true);
                        if (str2 != null) {
                            i2 = str2.length();
                        }
                        this.t.g().a(this.n, null, i3, "_ev", a2, i2, this.t.g.d(null, dc.az));
                        return;
                    }
                }
                hc a3 = this.t.l().a(false);
                if (a3 != null && !bundle.containsKey("_sc")) {
                    a3.f29745d = true;
                }
                hk.a(a3, bundle, z && z3);
                boolean equals = "am".equals(str);
                boolean e3 = ju.e(str2);
                if (!z || this.f29731d == null || e3) {
                    z4 = equals;
                } else if (equals) {
                    z4 = true;
                } else {
                    this.t.c().j.a("Passing event to registered event handler (FE)", this.t.h().a(str2), this.t.h().a(bundle));
                    o.a(this.f29731d);
                    this.f29731d.a(str, str2, bundle, j);
                    return;
                }
                if (this.t.w()) {
                    int b2 = this.t.g().b(str2);
                    if (b2 != 0) {
                        this.t.c().e.a("Invalid event name. Event will not be logged (FE)", this.t.h().a(str2));
                        this.t.g();
                        String a4 = ju.a(str2, 40, true);
                        if (str2 != null) {
                            i = str2.length();
                        }
                        this.t.g().a(this.n, str3, b2, "_ev", a4, i, this.t.g.d(null, dc.az));
                        return;
                    }
                    Bundle a5 = this.t.g().a(str3, str2, bundle, Collections.unmodifiableList(Arrays.asList("_o", "_sn", "_sc", "_si")), z3);
                    o.a(a5);
                    if (a5.containsKey("_sc") && a5.containsKey("_si")) {
                        new hc(a5.getString("_sn"), a5.getString("_sc"), a5.getLong("_si"));
                    }
                    if (this.t.l().a(false) != null && "_ae".equals(str2)) {
                        ix ixVar = this.t.e().f29877c;
                        long b3 = ixVar.f29873d.t.j.b();
                        long j2 = b3 - ixVar.f29871b;
                        ixVar.f29871b = b3;
                        if (j2 > 0) {
                            this.t.g().a(a5, j2);
                        }
                    }
                    ke.b();
                    if (this.t.g.d(null, dc.am)) {
                        if (!"auto".equals(str) && "_ssr".equals(str2)) {
                            ju g2 = this.t.g();
                            String string = a5.getString("_ffr");
                            if (r.a(string)) {
                                str4 = null;
                            } else {
                                str4 = string;
                                if (string != null) {
                                    str4 = string.trim();
                                }
                            }
                            if (!ju.c(str4, g2.t.b().p.a())) {
                                g2.t.b().p.a(str4);
                            } else {
                                g2.t.c().j.a("Not logging duplicate session_start_with_rollout event");
                                return;
                            }
                        } else if ("_ae".equals(str2)) {
                            String a6 = this.t.g().t.b().p.a();
                            if (!TextUtils.isEmpty(a6)) {
                                a5.putString("_ffr", a6);
                            }
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a5);
                    if (this.t.b().k.a() > 0 && this.t.b().a(j) && this.t.b().m.a()) {
                        this.t.c().k.a("Current session is expired, remove the session number, ID, and engagement time");
                        a("auto", "_sid", (Object) null, this.t.j.a());
                        a("auto", "_sno", (Object) null, this.t.j.a());
                        a("auto", "_se", (Object) null, this.t.j.a());
                    }
                    if (a5.getLong("extend_session", 0L) == 1) {
                        this.t.c().k.a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                        this.t.e().f29876b.a(j, true);
                    }
                    ArrayList arrayList2 = new ArrayList(a5.keySet());
                    Collections.sort(arrayList2);
                    int size = arrayList2.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        String str5 = (String) arrayList2.get(i4);
                        if (str5 != null) {
                            this.t.g();
                            Object obj = a5.get(str5);
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
                                a5.putParcelableArray(str5, bundleArr);
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
                            bundle3 = this.t.g().a(bundle2);
                        }
                        this.t.m().a(new zzas(str6, new zzaq(bundle3), str, j), str3);
                        if (!z4) {
                            for (fu fuVar : this.e) {
                                fuVar.a(str, str2, new Bundle(bundle3), j);
                            }
                        }
                        i5++;
                    }
                    if (this.t.l().a(false) != null && "_ae".equals(str2)) {
                        this.t.e().f29877c.a(true, true, this.t.j.b());
                        return;
                    }
                    return;
                }
                return;
            }
            this.t.c().j.a("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        this.t.c().j.a("Event not sent since app measurement is disabled");
    }

    public final void a(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, true, this.t.j.a());
    }

    public final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!this.t.g.d(null, dc.ar) || !ju.c(str2, "screen_view")) {
            b(str, str2, j, bundle, z2, !z2 || this.f29731d == null || ju.e(str2), !z, null);
        } else {
            this.t.l().a(bundle, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, Object obj, long j) {
        Long l;
        o.a(str);
        o.a(str2);
        S_();
        k();
        Object obj2 = obj;
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String str4 = "false";
                    Long valueOf = Long.valueOf(true != "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 0L : 1L);
                    ed edVar = this.t.b().i;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    edVar.a(str4);
                    l = valueOf;
                    str2 = "_npa";
                    obj2 = l;
                }
            }
            obj2 = obj;
            if (obj == null) {
                this.t.b().i.a("unset");
                l = obj;
                str2 = "_npa";
                obj2 = l;
            }
        }
        if (!this.t.r()) {
            this.t.c().k.a("User property not set since app measurement is disabled");
        } else if (this.t.w()) {
            this.t.m().a(new zzkl(str2, j, obj2, str));
        }
    }

    public final void a(String str, String str2, Object obj, boolean z, long j) {
        int i;
        if (str == null) {
            str = "app";
        }
        if (z) {
            i = this.t.g().c(str2);
        } else {
            ju g = this.t.g();
            if (g.a("user property", str2)) {
                if (!g.a("user property", fs.f29656a, (String[]) null, str2)) {
                    i = 15;
                } else if (g.a("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            this.t.g();
            this.t.g().a(this.n, null, i, "_ev", ju.a(str2, 24, true), str2 != null ? str2.length() : 0, this.t.g.d(null, dc.az));
        } else if (obj != null) {
            int b2 = this.t.g().b(str2, obj);
            if (b2 != 0) {
                this.t.g();
                this.t.g().a(this.n, null, b2, "_ev", ju.a(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0, this.t.g.d(null, dc.az));
                return;
            }
            Object c2 = this.t.g().c(str2, obj);
            if (c2 != null) {
                a(str, str2, j, c2);
            }
        } else {
            a(str, str2, j, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(Bundle bundle) {
        if (bundle == null) {
            this.t.b().s.a(new Bundle());
            return;
        }
        Bundle a2 = this.t.b().s.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                this.t.g();
                if (ju.a(obj)) {
                    this.t.g().a(this.n, null, 27, null, null, 0, this.t.g.d(null, dc.az));
                }
                this.t.c().h.a("Invalid default event parameter type. Name, value", str, obj);
            } else if (ju.e(str)) {
                this.t.c().h.a("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                a2.remove(str);
            } else if (this.t.g().a("param", str, 100, obj)) {
                this.t.g().a(a2, str, obj);
            }
        }
        this.t.g();
        int P_ = this.t.g.P_();
        if (a2.size() > P_) {
            int i = 0;
            for (String str2 : new TreeSet(a2.keySet())) {
                int i2 = i + 1;
                i = i2;
                if (i2 > P_) {
                    a2.remove(str2);
                    i = i2;
                }
            }
            this.t.g().a(this.n, null, 26, null, null, 0, this.t.g.d(null, dc.az));
            this.t.c().h.a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.t.b().s.a(a2);
        this.t.m().a(a2);
    }

    public final void b(fu fuVar) {
        k();
        o.a(fuVar);
        if (!this.e.remove(fuVar)) {
            this.t.c().f.a("OnEventListener had not been registered");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
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
        this.t.d().a(new gb(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    public final void b(String str, String str2, Bundle bundle) {
        long a2 = this.t.j.a();
        o.a(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", a2);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.t.d().a(new gg(this, bundle2));
    }

    @Override // com.google.android.gms.measurement.internal.ec
    protected final boolean b() {
        return false;
    }

    public final void e() {
        if ((this.t.f29583a.getApplicationContext() instanceof Application) && this.f29728a != null) {
            ((Application) this.t.f29583a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f29728a);
        }
    }

    public final Boolean f() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.t.d().a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "boolean test flag value", new gh(this, atomicReference));
    }

    public final String g() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.t.d().a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "String test flag value", new gl(this, atomicReference));
    }

    public final Long h() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.t.d().a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "long test flag value", new gm(this, atomicReference));
    }

    public final Integer i() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.t.d().a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "int test flag value", new gn(this, atomicReference));
    }

    public final Double n() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.t.d().a(atomicReference, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, "double test flag value", new go(this, atomicReference));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        S_();
        String a2 = this.t.b().i.a();
        if (a2 != null) {
            if ("unset".equals(a2)) {
                a("app", "_npa", (Object) null, this.t.j.a());
            } else {
                a("app", "_npa", Long.valueOf(true != "true".equals(a2) ? 0L : 1L), this.t.j.a());
            }
        }
        if (!this.t.r() || !this.f29730c) {
            this.t.c().j.a("Updating Scion state (FE)");
            this.t.m().f();
            return;
        }
        this.t.c().j.a("Recording app launch after enabling measurement for the first time (FE)");
        q();
        kq.b();
        if (this.t.g.d(null, dc.an)) {
            this.t.e().f29876b.a();
        }
        this.t.d().a(new fz(this));
    }

    public final String p() {
        return this.g.get();
    }

    public final void q() {
        Boolean c2;
        S_();
        k();
        if (this.t.w()) {
            if (this.t.g.d(null, dc.aa) && (c2 = this.t.g.c("google_analytics_deferred_deep_link_enabled")) != null && c2.booleanValue()) {
                this.t.c().j.a("Deferred Deep Link feature enabled.");
                this.t.d().a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.fx

                    /* renamed from: a  reason: collision with root package name */
                    private final gv f29664a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f29664a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        gv gvVar = this.f29664a;
                        gvVar.S_();
                        if (!gvVar.t.b().n.a()) {
                            long a2 = gvVar.t.b().o.a();
                            gvVar.t.b().o.a(1 + a2);
                            if (a2 >= 5) {
                                gvVar.t.c().f.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                gvVar.t.b().n.a(true);
                                return;
                            }
                            gvVar.t.x();
                            return;
                        }
                        gvVar.t.c().j.a("Deferred Deep Link already retrieved. Not fetching again.");
                    }
                });
            }
            this.t.m().h();
            this.f29730c = false;
            ee b2 = this.t.b();
            b2.S_();
            String string = b2.ah_().getString("previous_os_version", null);
            b2.t.n().g();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = b2.ah_().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                this.t.n().g();
                if (!string.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    a("auto", "_ou", bundle);
                }
            }
        }
    }

    public final String r() {
        hc hcVar = this.t.l().f29765a;
        if (hcVar != null) {
            return hcVar.f29742a;
        }
        return null;
    }

    public final String s() {
        hc hcVar = this.t.l().f29765a;
        if (hcVar != null) {
            return hcVar.f29743b;
        }
        return null;
    }

    public final String t() {
        if (this.t.f29584b != null) {
            return this.t.f29584b;
        }
        try {
            return hb.a(this.t.f29583a, this.t.k);
        } catch (IllegalStateException e) {
            this.t.c().f29506c.a("getGoogleAppId failed with exception", e);
            return null;
        }
    }
}
