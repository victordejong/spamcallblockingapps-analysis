package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzlq;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzmu;
import com.google.android.gms.internal.measurement.zzna;
import com.google.android.gms.internal.measurement.zznh;
import com.google.android.gms.internal.measurement.zzny;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgy.class */
public final class zzgy extends zzg {
    @VisibleForTesting

    /* renamed from: c */
    protected zzhz f9371c;

    /* renamed from: d */
    private zzgx f9372d;

    /* renamed from: f */
    private boolean f9374f;

    /* renamed from: n */
    final zzp f9382n;

    /* renamed from: e */
    private final Set<zzgw> f9373e = new CopyOnWriteArraySet();

    /* renamed from: h */
    private final Object f9376h = new Object();
    @VisibleForTesting

    /* renamed from: o */
    private boolean f9383o = true;

    /* renamed from: p */
    private final zzkv f9384p = new zzhr(this);

    /* renamed from: g */
    private final AtomicReference<String> f9375g = new AtomicReference<>();
    @GuardedBy

    /* renamed from: i */
    private zzad f9377i = new zzad(null, null);
    @GuardedBy

    /* renamed from: j */
    private int f9378j = 100;

    /* renamed from: l */
    private long f9380l = -1;

    /* renamed from: m */
    private int f9381m = 100;

    /* renamed from: k */
    private final AtomicLong f9379k = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgy(zzfv zzfvVar) {
        super(zzfvVar);
        this.f9382n = new zzp(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: B0 */
    public final void m11296B0(Bundle bundle) {
        mo11316e();
        m11321v();
        Preconditions.m14523k(bundle);
        Preconditions.m14527g(bundle.getString("name"));
        Preconditions.m14527g(bundle.getString(FirebaseAnalytics.Param.ORIGIN));
        Preconditions.m14523k(bundle.get(FirebaseAnalytics.Param.VALUE));
        if (!this.f9354a.m11357p()) {
            mo11081c().m11552L().m11540a("Conditional property not set since app measurement is disabled");
            return;
        }
        try {
            m11598q().m11195O(new zzw(bundle.getString("app_id"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), new zzkr(bundle.getString("name"), bundle.getLong("triggered_timestamp"), bundle.get(FirebaseAnalytics.Param.VALUE), bundle.getString(FirebaseAnalytics.Param.ORIGIN)), bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), m11313j().m10997D(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), 0L, true, false, zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0)), bundle.getLong("trigger_timeout"), m11313j().m10997D(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), 0L, true, false, zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0)), bundle.getLong("time_to_live"), m11313j().m10997D(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), 0L, true, false, zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0))));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: C0 */
    public final void m11294C0(Bundle bundle) {
        mo11316e();
        m11321v();
        Preconditions.m14523k(bundle);
        Preconditions.m14527g(bundle.getString("name"));
        if (!this.f9354a.m11357p()) {
            mo11081c().m11552L().m11540a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            m11598q().m11195O(new zzw(bundle.getString("app_id"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), new zzkr(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), m11313j().m10997D(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString(FirebaseAnalytics.Param.ORIGIN), bundle.getLong("creation_timestamp"), true, false, zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0))));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: K */
    public final void m11286K(zzad zzadVar, int i, long j, boolean z, boolean z2) {
        mo11316e();
        m11321v();
        if (j <= this.f9380l && zzad.m11731g(this.f9381m, i)) {
            mo11081c().m11554J().m11539b("Dropped out-of-date consent setting, proposed settings", zzadVar);
        } else if (m11312k().m11445x(zzadVar, i)) {
            this.f9380l = j;
            this.f9381m = i;
            m11598q().m11189U(z);
            if (z2) {
                m11598q().m11193Q(new AtomicReference<>());
            }
        } else {
            mo11081c().m11554J().m11539b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: S */
    public final void m11278S(@Nullable Boolean bool, boolean z) {
        mo11316e();
        m11321v();
        mo11081c().m11553K().m11539b("Setting app measurement enabled (FE)", bool);
        m11312k().m11449t(bool);
        if (zzmj.m11898a() && m11311l().m10880r(zzat.f8902H0) && z) {
            m11312k().m11444y(bool);
        }
        if (!zzmj.m11898a() || !m11311l().m10880r(zzat.f8902H0) || this.f9354a.m11355r() || !bool.booleanValue()) {
            m11255p0();
        }
    }

    /* renamed from: W */
    private final void m11274W(String str, String str2, long j, Object obj) {
        mo11083b().m11409x(new zzhg(this, str, str2, obj, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: p0 */
    public final void m11255p0() {
        mo11316e();
        String a = m11312k().f9200s.m11428a();
        if (a != null) {
            if ("unset".equals(a)) {
                m11270a0("app", "_npa", null, mo11085a().mo14335a());
            } else {
                m11270a0("app", "_npa", Long.valueOf("true".equals(a) ? 1L : 0L), mo11085a().mo14335a());
            }
        }
        if (!this.f9354a.m11357p() || !this.f9383o) {
            mo11081c().m11553K().m11540a("Updating Scion state (FE)");
            m11598q().m11187W();
            return;
        }
        mo11081c().m11553K().m11540a("Recording app launch after enabling measurement for the first time (FE)");
        m11259l0();
        if (zznh.m11879a() && m11311l().m10880r(zzat.f8961q0)) {
            m11595t().f9626d.m11126a();
        }
        if (zzna.m11885a() && m11311l().m10880r(zzat.f8967t0)) {
            if (!(this.f9354a.m11384D().f9228a.m11349x().f9192k.m11433a() > 0)) {
                zzfi D = this.f9354a.m11384D();
                D.m11430b(D.f9228a.mo11075f().getPackageName());
            }
        }
        if (m11311l().m10880r(zzat.f8894D0)) {
            mo11083b().m11409x(new zzhc(this));
        }
    }

    @VisibleForTesting
    /* renamed from: q0 */
    private final ArrayList<Bundle> m11254q0(String str, String str2, String str3) {
        if (mo11083b().m11416G()) {
            mo11081c().m11560D().m11540a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        } else if (zzx.m10903a()) {
            mo11081c().m11560D().m11540a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f9354a.mo11083b().m11413t(atomicReference, 5000L, "get conditional user properties", new zzhp(this, atomicReference, str, str2, str3));
            List list = (List) atomicReference.get();
            if (list != null) {
                return zzkw.m10946r0(list);
            }
            mo11081c().m11560D().m11539b("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
    }

    @VisibleForTesting
    /* renamed from: r0 */
    private final Map<String, Object> m11253r0(String str, String str2, String str3, boolean z) {
        if (mo11083b().m11416G()) {
            mo11081c().m11560D().m11540a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        } else if (zzx.m10903a()) {
            mo11081c().m11560D().m11540a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f9354a.mo11083b().m11413t(atomicReference, 5000L, "get user properties", new zzho(this, atomicReference, str, str2, str3, z));
            List<zzkr> list = (List) atomicReference.get();
            if (list == null) {
                mo11081c().m11560D().m11539b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                return Collections.emptyMap();
            }
            ArrayMap arrayMap = new ArrayMap(list.size());
            for (zzkr zzkrVar : list) {
                arrayMap.put(zzkrVar.f9700g, zzkrVar.m11035B());
            }
            return arrayMap;
        }
    }

    /* renamed from: t0 */
    private final void m11251t0(Bundle bundle, long j) {
        Preconditions.m14523k(bundle);
        zzgt.m11304a(bundle, "app_id", String.class, null);
        zzgt.m11304a(bundle, FirebaseAnalytics.Param.ORIGIN, String.class, null);
        zzgt.m11304a(bundle, "name", String.class, null);
        zzgt.m11304a(bundle, FirebaseAnalytics.Param.VALUE, Object.class, null);
        zzgt.m11304a(bundle, "trigger_event_name", String.class, null);
        zzgt.m11304a(bundle, "trigger_timeout", Long.class, 0L);
        zzgt.m11304a(bundle, "timed_out_event_name", String.class, null);
        zzgt.m11304a(bundle, "timed_out_event_params", Bundle.class, null);
        zzgt.m11304a(bundle, "triggered_event_name", String.class, null);
        zzgt.m11304a(bundle, "triggered_event_params", Bundle.class, null);
        zzgt.m11304a(bundle, "time_to_live", Long.class, 0L);
        zzgt.m11304a(bundle, "expired_event_name", String.class, null);
        zzgt.m11304a(bundle, "expired_event_params", Bundle.class, null);
        Preconditions.m14527g(bundle.getString("name"));
        Preconditions.m14527g(bundle.getString(FirebaseAnalytics.Param.ORIGIN));
        Preconditions.m14523k(bundle.get(FirebaseAnalytics.Param.VALUE));
        bundle.putLong("creation_timestamp", j);
        String string = bundle.getString("name");
        Object obj = bundle.get(FirebaseAnalytics.Param.VALUE);
        if (m11313j().m10950o0(string) != 0) {
            mo11081c().m11560D().m11539b("Invalid conditional user property name", m11314i().m11565y(string));
        } else if (m11313j().m10949p0(string, obj) != 0) {
            mo11081c().m11560D().m11538c("Invalid conditional user property value", m11314i().m11565y(string), obj);
        } else {
            Object w0 = m11313j().m10936w0(string, obj);
            if (w0 == null) {
                mo11081c().m11560D().m11538c("Unable to normalize conditional user property value", m11314i().m11565y(string), obj);
                return;
            }
            zzgt.m11303b(bundle, w0);
            long j2 = bundle.getLong("trigger_timeout");
            if (TextUtils.isEmpty(bundle.getString("trigger_event_name")) || (j2 <= 15552000000L && j2 >= 1)) {
                long j3 = bundle.getLong("time_to_live");
                if (j3 > 15552000000L || j3 < 1) {
                    mo11081c().m11560D().m11538c("Invalid conditional user property time to live", m11314i().m11565y(string), Long.valueOf(j3));
                } else {
                    mo11083b().m11409x(new zzhk(this, bundle));
                }
            } else {
                mo11081c().m11560D().m11538c("Invalid conditional user property timeout", m11314i().m11565y(string), Long.valueOf(j2));
            }
        }
    }

    /* renamed from: w0 */
    private final void m11248w0(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        mo11083b().m11409x(new zzhh(this, str, str2, j, zzkw.m10947q0(bundle), z, z2, z3, str3));
    }

    /* renamed from: y0 */
    private final void m11246y0(String str, String str2, String str3, Bundle bundle) {
        long a = mo11085a().mo14335a();
        Preconditions.m14527g(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString("name", str2);
        bundle2.putLong("creation_timestamp", a);
        if (str3 != null) {
            bundle2.putString("expired_event_name", str3);
            bundle2.putBundle("expired_event_params", bundle);
        }
        mo11083b().m11409x(new zzhm(this, bundle2));
    }

    /* renamed from: A */
    public final ArrayList<Bundle> m11299A(String str, String str2) {
        return m11254q0(null, str, str2);
    }

    /* renamed from: A0 */
    public final void m11298A0(String str, String str2, Bundle bundle) {
        m11246y0(null, str, str2, bundle);
    }

    /* renamed from: B */
    public final ArrayList<Bundle> m11297B(String str, String str2, String str3) {
        Preconditions.m14527g(str);
        m11602m();
        throw null;
    }

    /* renamed from: C */
    public final Map<String, Object> m11295C(String str, String str2, String str3, boolean z) {
        Preconditions.m14527g(str);
        m11602m();
        throw null;
    }

    /* renamed from: D */
    public final Map<String, Object> m11293D(String str, String str2, boolean z) {
        return m11253r0(null, str, str2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public final void m11292E(long j, boolean z) {
        mo11316e();
        m11321v();
        mo11081c().m11553K().m11540a("Resetting analytics data (FE)");
        zzju t = m11595t();
        t.mo11316e();
        t.f9627e.m11134a();
        boolean p = this.f9354a.m11357p();
        zzfd k = m11312k();
        k.f9191j.m11432b(j);
        if (!TextUtils.isEmpty(k.m11312k().f9207z.m11428a())) {
            k.f9207z.m11427b(null);
        }
        if (zznh.m11879a() && k.m11311l().m10880r(zzat.f8961q0)) {
            k.f9202u.m11432b(0L);
        }
        if (!k.m11311l().m10899D()) {
            k.m11462A(!p);
        }
        k.f9181A.m11427b(null);
        k.f9182B.m11432b(0L);
        k.f9183C.m11441b(null);
        if (z) {
            m11598q().m11186X();
        }
        if (zznh.m11879a() && m11311l().m10880r(zzat.f8961q0)) {
            m11595t().f9626d.m11126a();
        }
        this.f9383o = !p;
    }

    /* renamed from: F */
    public final void m11291F(Bundle bundle) {
        m11289H(bundle, mo11085a().mo14335a());
    }

    /* renamed from: G */
    public final void m11290G(Bundle bundle, int i, long j) {
        if (zzmj.m11898a() && m11311l().m10880r(zzat.f8902H0)) {
            m11321v();
            String f = zzad.m11732f(bundle);
            if (f != null) {
                mo11081c().m11555I().m11539b("Ignoring invalid consent setting", f);
                mo11081c().m11555I().m11540a("Valid consent values are 'granted', 'denied'");
            }
            m11287J(zzad.m11728j(bundle), i, j);
        }
    }

    /* renamed from: H */
    public final void m11289H(Bundle bundle, long j) {
        Preconditions.m14523k(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            mo11081c().m11557G().m11540a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        m11251t0(bundle2, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: I */
    public final void m11288I(zzad zzadVar) {
        mo11316e();
        boolean z = (zzadVar.m11721q() && zzadVar.m11723o()) || m11598q().m11180d0();
        if (z != this.f9354a.m11355r()) {
            this.f9354a.m11387A(z);
            Boolean I = m11312k().m11454I();
            if (!z || I == null || I.booleanValue()) {
                m11278S(Boolean.valueOf(z), false);
            }
        }
    }

    /* renamed from: J */
    public final void m11287J(zzad zzadVar, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        zzad zzadVar2 = zzadVar;
        if (zzmj.m11898a() && m11311l().m10880r(zzat.f8902H0)) {
            m11321v();
            if (zzadVar.m11726l() == null && zzadVar.m11722p() == null) {
                mo11081c().m11555I().m11540a("Discarding empty consent settings");
                return;
            }
            synchronized (this.f9376h) {
                z = true;
                z2 = false;
                if (zzad.m11731g(i, this.f9378j)) {
                    z2 = zzadVar.m11730h(this.f9377i);
                    z3 = false;
                    if (zzadVar.m11721q()) {
                        z3 = false;
                        if (!this.f9377i.m11721q()) {
                            z3 = true;
                        }
                    }
                    zzadVar2 = zzadVar.m11724n(this.f9377i);
                    this.f9377i = zzadVar2;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (!z) {
                mo11081c().m11554J().m11539b("Ignoring lower-priority consent settings, proposed settings", zzadVar2);
                return;
            }
            long andIncrement = this.f9379k.getAndIncrement();
            if (z2) {
                m11277T(null);
                mo11083b().m11422A(new zzhu(this, zzadVar2, j, i, andIncrement, z3));
                return;
            }
            mo11083b().m11409x(new zzhx(this, zzadVar2, i, andIncrement, z3));
        }
    }

    /* renamed from: L */
    public final void m11285L(zzgw zzgwVar) {
        m11321v();
        Preconditions.m14523k(zzgwVar);
        if (!this.f9373e.add(zzgwVar)) {
            mo11081c().m11557G().m11540a("OnEventListener already registered");
        }
    }

    @WorkerThread
    /* renamed from: M */
    public final void m11284M(zzgx zzgxVar) {
        zzgx zzgxVar2;
        mo11316e();
        m11321v();
        if (!(zzgxVar == null || zzgxVar == (zzgxVar2 = this.f9372d))) {
            Preconditions.m14519o(zzgxVar2 == null, "EventInterceptor already set.");
        }
        this.f9372d = zzgxVar;
    }

    /* renamed from: R */
    public final void m11279R(@Nullable Boolean bool) {
        m11321v();
        mo11083b().m11409x(new zzhv(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public final void m11277T(@Nullable String str) {
        this.f9375g.set(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: U */
    public final void m11276U(String str, String str2, long j, Bundle bundle) {
        mo11316e();
        m11275V(str, str2, j, bundle, true, this.f9372d == null || zzkw.m11002A0(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: V */
    public final void m11275V(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Preconditions.m14527g(str);
        Preconditions.m14523k(bundle);
        mo11316e();
        m11321v();
        if (!this.f9354a.m11357p()) {
            mo11081c().m11553K().m11540a("Event not sent since app measurement is disabled");
            return;
        }
        List<String> H = m11599p().m11584H();
        if (H == null || H.contains(str2)) {
            int i = 0;
            int i2 = 0;
            if (!this.f9374f) {
                this.f9374f = true;
                try {
                    try {
                        (!this.f9354a.m11374N() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, mo11075f().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, mo11075f());
                    } catch (Exception e) {
                        mo11081c().m11557G().m11539b("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException e2) {
                    mo11081c().m11554J().m11540a("Tag Manager is not found and thus will not be used");
                }
            }
            if (m11311l().m10880r(zzat.f8937e0) && Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(str2) && bundle.containsKey("gclid")) {
                m11270a0("auto", "_lgclid", bundle.getString("gclid"), mo11085a().mo14335a());
            }
            if (zzny.m11870a() && m11311l().m10880r(zzat.f8979z0) && z && zzkw.m10996D0(str2)) {
                m11313j().m10983K(bundle, m11312k().f9183C.m11442a());
            }
            if (z3 && !"_iap".equals(str2)) {
                zzkw G = this.f9354a.m11381G();
                int i3 = !G.m10960f0(Constants.FirelogAnalytics.PARAM_EVENT, str2) ? 2 : (!(zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0)) ? G.m10955k0(Constants.FirelogAnalytics.PARAM_EVENT, zzgs.f9361a, str2) : G.m10954l0(Constants.FirelogAnalytics.PARAM_EVENT, zzgs.f9361a, zzgs.f9362b, str2)) ? !G.m10961e0(Constants.FirelogAnalytics.PARAM_EVENT, 40, str2) ? 2 : 0 : 13;
                if (i3 != 0) {
                    mo11081c().m11558F().m11539b("Invalid public event name. Event will not be logged (FE)", m11314i().m11569u(str2));
                    this.f9354a.m11381G();
                    String G2 = zzkw.m10991G(str2, 40, true);
                    if (str2 != null) {
                        i2 = str2.length();
                    }
                    this.f9354a.m11381G().m10971U(this.f9384p, i3, "_ev", G2, i2);
                    return;
                }
            }
            zzig C = m11597r().m11229C(false);
            if (C != null && !bundle.containsKey("_sc")) {
                C.f9490d = true;
            }
            zzij.m11221K(C, bundle, z && z3);
            boolean equals = "am".equals(str);
            boolean A0 = zzkw.m11002A0(str2);
            if (z && this.f9372d != null && !A0 && !equals) {
                mo11081c().m11553K().m11538c("Passing event to registered event handler (FE)", m11314i().m11569u(str2), m11314i().m11571s(bundle));
                this.f9372d.mo11300a(str, str2, bundle, j);
            } else if (this.f9354a.m11352u()) {
                int u = m11313j().m10941u(str2, zzlq.m11973a() && m11311l().m10880r(zzat.f8910L0));
                if (u != 0) {
                    mo11081c().m11558F().m11539b("Invalid event name. Event will not be logged (FE)", m11314i().m11569u(str2));
                    m11313j();
                    String G3 = zzkw.m10991G(str2, 40, true);
                    if (str2 != null) {
                        i = str2.length();
                    }
                    this.f9354a.m11381G().m10970V(this.f9384p, str3, u, "_ev", G3, i);
                    return;
                }
                Bundle B = m11313j().m11001B(str3, str2, bundle, CollectionUtils.m14338c("_o", "_sn", "_sc", "_si"), z3, true);
                if (B != null && B.containsKey("_sc") && B.containsKey("_si")) {
                    B.getString("_sn");
                    B.getString("_sc");
                    Long.valueOf(B.getLong("_si")).longValue();
                }
                if (m11311l().m10880r(zzat.f8921T) && m11597r().m11229C(false) != null && "_ae".equals(str2)) {
                    long e3 = m11595t().f9627e.m11130e();
                    if (e3 > 0) {
                        m11313j().m10985J(B, e3);
                    }
                }
                if (zzmu.m11891a() && m11311l().m10880r(zzat.f8959p0)) {
                    if (!"auto".equals(str) && "_ssr".equals(str2)) {
                        zzkw j2 = m11313j();
                        String string = B.getString("_ffr");
                        String trim = Strings.m14309a(string) ? null : string.trim();
                        if (zzkw.m10930z0(trim, j2.m11312k().f9207z.m11428a())) {
                            j2.mo11081c().m11553K().m11540a("Not logging duplicate session_start_with_rollout event");
                            z4 = false;
                        } else {
                            j2.m11312k().f9207z.m11427b(trim);
                            z4 = true;
                        }
                        if (!z4) {
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String a = m11313j().m11312k().f9207z.m11428a();
                        if (!TextUtils.isEmpty(a)) {
                            B.putString("_ffr", a);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(B);
                m11313j().m10992F0().nextLong();
                if (m11312k().f9202u.m11433a() > 0 && m11312k().m11446w(j) && m11312k().f9204w.m11438b()) {
                    mo11081c().m11552L().m11540a("Current session is expired, remove the session number, ID, and engagement time");
                    m11270a0("auto", "_sid", null, mo11085a().mo14335a());
                    m11270a0("auto", "_sno", null, mo11085a().mo14335a());
                    m11270a0("auto", "_se", null, mo11085a().mo14335a());
                }
                if (B.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, 0L) == 1) {
                    mo11081c().m11552L().m11540a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.f9354a.m11385C().f9626d.m11125b(j, true);
                }
                String[] strArr = (String[]) B.keySet().toArray(new String[B.size()]);
                Arrays.sort(strArr);
                for (String str4 : strArr) {
                    m11313j();
                    Bundle[] v0 = zzkw.m10938v0(B.get(str4));
                    if (v0 != null) {
                        B.putParcelableArray(str4, v0);
                    }
                }
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    Bundle bundle2 = (Bundle) arrayList.get(i4);
                    String str5 = i4 != 0 ? "_ep" : str2;
                    bundle2.putString("_o", str);
                    Bundle bundle3 = bundle2;
                    if (z2) {
                        bundle3 = m11313j().m11003A(bundle2);
                    }
                    m11598q().m11201I(new zzar(str5, new zzam(bundle3), str, j), str3);
                    if (!equals) {
                        for (zzgw zzgwVar : this.f9373e) {
                            zzgwVar.onEvent(str, str2, new Bundle(bundle3), j);
                        }
                    }
                    i4++;
                }
                if (m11597r().m11229C(false) != null && "_ae".equals(str2)) {
                    m11595t().m11146D(true, true, mo11085a().mo14334b());
                }
            }
        } else {
            mo11081c().m11553K().m11538c("Dropping non-safelisted event. event name, origin", str2, str);
        }
    }

    /* renamed from: X */
    public final void m11273X(String str, String str2, Bundle bundle) {
        m11271Z(str, str2, bundle, true, true, mo11085a().mo14335a());
    }

    /* renamed from: Y */
    public final void m11272Y(String str, String str2, Bundle bundle, String str3) {
        m11602m();
        throw null;
    }

    /* renamed from: Z */
    public final void m11271Z(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!m11311l().m10880r(zzat.f8971v0) || !zzkw.m10930z0(str2, FirebaseAnalytics.Event.SCREEN_VIEW)) {
            m11248w0(str, str2, j, bundle, z2, !z2 || this.f9372d == null || zzkw.m11002A0(str2), !z, null);
        } else {
            m11597r().m11223I(bundle, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
    @androidx.annotation.WorkerThread
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11270a0(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m14527g(r0)
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m14527g(r0)
            r0 = r8
            r0.mo11316e()
            r0 = r8
            r0.m11321v()
            java.lang.String r0 = "allow_personalized_ads"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0095
            r0 = r11
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L_0x0078
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            r14 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0078
            r0 = r14
            java.util.Locale r1 = java.util.Locale.ENGLISH
            java.lang.String r0 = r0.toLowerCase(r1)
            r11 = r0
            java.lang.String r0 = "false"
            r10 = r0
            java.lang.String r0 = "false"
            r1 = r11
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004e
            r0 = 1
            r15 = r0
            goto L_0x0051
        L_0x004e:
            r0 = 0
            r15 = r0
        L_0x0051:
            r0 = r15
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfd r0 = r0.m11312k()
            com.google.android.gms.measurement.internal.zzfj r0 = r0.f9200s
            r14 = r0
            r0 = r11
            long r0 = r0.longValue()
            r1 = 1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006d
            java.lang.String r0 = "true"
            r10 = r0
        L_0x006d:
            r0 = r14
            r1 = r10
            r0.m11427b(r1)
            r0 = r11
            r10 = r0
            goto L_0x008b
        L_0x0078:
            r0 = r11
            if (r0 != 0) goto L_0x0095
            r0 = r8
            com.google.android.gms.measurement.internal.zzfd r0 = r0.m11312k()
            com.google.android.gms.measurement.internal.zzfj r0 = r0.f9200s
            java.lang.String r1 = "unset"
            r0.m11427b(r1)
            r0 = r11
            r10 = r0
        L_0x008b:
            java.lang.String r0 = "_npa"
            r14 = r0
            r0 = r10
            r11 = r0
            goto L_0x0098
        L_0x0095:
            r0 = r10
            r14 = r0
        L_0x0098:
            r0 = r8
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9354a
            boolean r0 = r0.m11357p()
            if (r0 != 0) goto L_0x00b0
            r0 = r8
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11552L()
            java.lang.String r1 = "User property not set since app measurement is disabled"
            r0.m11540a(r1)
            return
        L_0x00b0:
            r0 = r8
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9354a
            boolean r0 = r0.m11352u()
            if (r0 != 0) goto L_0x00bb
            return
        L_0x00bb:
            com.google.android.gms.measurement.internal.zzkr r0 = new com.google.android.gms.measurement.internal.zzkr
            r1 = r0
            r2 = r14
            r3 = r12
            r4 = r11
            r5 = r9
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzio r0 = r0.m11598q()
            r1 = r9
            r0.m11196N(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgy.m11270a0(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    /* renamed from: b0 */
    public final void m11269b0(String str, String str2, Object obj, boolean z) {
        m11268c0(str, str2, obj, true, mo11085a().mo14335a());
    }

    /* renamed from: c0 */
    public final void m11268c0(String str, String str2, Object obj, boolean z, long j) {
        int i;
        String str3 = str;
        if (str == null) {
            str3 = "app";
        }
        if (z) {
            i = m11313j().m10950o0(str2);
        } else {
            zzkw j2 = m11313j();
            if (j2.m10960f0("user property", str2)) {
                if (!j2.m10955k0("user property", zzgu.f9365a, str2)) {
                    i = 15;
                } else if (j2.m10961e0("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            m11313j();
            this.f9354a.m11381G().m10971U(this.f9384p, i, "_ev", zzkw.m10991G(str2, 24, true), str2 != null ? str2.length() : 0);
        } else if (obj != null) {
            int p0 = m11313j().m10949p0(str2, obj);
            if (p0 != 0) {
                m11313j();
                this.f9354a.m11381G().m10971U(this.f9384p, p0, "_ev", zzkw.m10991G(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            }
            Object w0 = m11313j().m10936w0(str2, obj);
            if (w0 != null) {
                m11274W(str3, str2, j, w0);
            }
        } else {
            m11274W(str3, str2, j, null);
        }
    }

    /* renamed from: d0 */
    public final void m11267d0(String str, String str2, String str3, Bundle bundle) {
        Preconditions.m14527g(str);
        m11602m();
        throw null;
    }

    /* renamed from: e0 */
    public final void m11266e0() {
        if (mo11075f().getApplicationContext() instanceof Application) {
            ((Application) mo11075f().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f9371c);
        }
    }

    /* renamed from: f0 */
    public final Boolean m11265f0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) mo11083b().m11413t(atomicReference, 15000L, "boolean test flag value", new zzhd(this, atomicReference));
    }

    /* renamed from: g0 */
    public final String m11264g0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) mo11083b().m11413t(atomicReference, 15000L, "String test flag value", new zzhn(this, atomicReference));
    }

    /* renamed from: h0 */
    public final Long m11263h0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) mo11083b().m11413t(atomicReference, 15000L, "long test flag value", new zzhq(this, atomicReference));
    }

    /* renamed from: i0 */
    public final Integer m11262i0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) mo11083b().m11413t(atomicReference, 15000L, "int test flag value", new zzht(this, atomicReference));
    }

    /* renamed from: j0 */
    public final Double m11261j0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) mo11083b().m11413t(atomicReference, 15000L, "double test flag value", new zzhs(this, atomicReference));
    }

    @Nullable
    /* renamed from: k0 */
    public final String m11260k0() {
        return this.f9375g.get();
    }

    @WorkerThread
    /* renamed from: l0 */
    public final void m11259l0() {
        mo11316e();
        m11321v();
        if (this.f9354a.m11352u()) {
            if (m11311l().m10880r(zzat.f8935d0)) {
                Boolean C = m11311l().m10900C("google_analytics_deferred_deep_link_enabled");
                if (C != null && C.booleanValue()) {
                    mo11081c().m11553K().m11540a("Deferred Deep Link feature enabled.");
                    mo11083b().m11409x(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzha

                        /* renamed from: f */
                        private final zzgy f9396f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f9396f = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgy zzgyVar = this.f9396f;
                            zzgyVar.mo11316e();
                            if (zzgyVar.m11312k().f9205x.m11438b()) {
                                zzgyVar.mo11081c().m11553K().m11540a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long a = zzgyVar.m11312k().f9206y.m11433a();
                            zzgyVar.m11312k().f9206y.m11432b(1 + a);
                            if (a >= 5) {
                                zzgyVar.mo11081c().m11557G().m11540a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzgyVar.m11312k().f9205x.m11439a(true);
                                return;
                            }
                            zzgyVar.f9354a.m11351v();
                        }
                    });
                }
            }
            m11598q().m11185Y();
            this.f9383o = false;
            String K = m11312k().m11452K();
            if (!TextUtils.isEmpty(K)) {
                m11315h().m11310n();
                if (!K.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", K);
                    m11273X("auto", "_ou", bundle);
                }
            }
        }
    }

    @Nullable
    /* renamed from: m0 */
    public final String m11258m0() {
        zzig R = this.f9354a.m11373O().m11214R();
        if (R != null) {
            return R.f9487a;
        }
        return null;
    }

    @Nullable
    /* renamed from: n0 */
    public final String m11257n0() {
        zzig R = this.f9354a.m11373O().m11214R();
        if (R != null) {
            return R.f9488b;
        }
        return null;
    }

    @Nullable
    /* renamed from: o0 */
    public final String m11256o0() {
        if (this.f9354a.m11377K() != null) {
            return this.f9354a.m11377K();
        }
        try {
            return zzih.m11233b(mo11075f(), "google_app_id");
        } catch (IllegalStateException e) {
            this.f9354a.mo11081c().m11560D().m11539b("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    /* renamed from: s0 */
    public final void m11252s0(Bundle bundle) {
        Preconditions.m14523k(bundle);
        Preconditions.m14527g(bundle.getString("app_id"));
        m11602m();
        throw null;
    }

    /* renamed from: u0 */
    public final void m11250u0(zzgw zzgwVar) {
        m11321v();
        Preconditions.m14523k(zzgwVar);
        if (!this.f9373e.remove(zzgwVar)) {
            mo11081c().m11557G().m11540a("OnEventListener had not been registered");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: x0 */
    public final void m11247x0(String str, String str2, Bundle bundle) {
        mo11316e();
        m11276U(str, str2, mo11085a().mo14335a(), bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z0 */
    public final /* synthetic */ void m11245z0(Bundle bundle) {
        if (zzny.m11870a() && m11311l().m10880r(zzat.f8979z0)) {
            if (bundle == null) {
                m11312k().f9183C.m11441b(new Bundle());
                return;
            }
            Bundle a = m11312k().f9183C.m11442a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    m11313j();
                    if (zzkw.m10964b0(obj)) {
                        m11313j().m10971U(this.f9384p, 27, null, null, 0);
                    }
                    mo11081c().m11555I().m11538c("Invalid default event parameter type. Name, value", str, obj);
                } else if (zzkw.m11002A0(str)) {
                    mo11081c().m11555I().m11539b("Invalid default event parameter name. Name", str);
                } else if (obj == null) {
                    a.remove(str);
                } else if (m11313j().m10959g0("param", str, 100, obj)) {
                    m11313j().m10981L(a, str, obj);
                }
            }
            m11313j();
            if (zzkw.m10966Z(a, m11311l().m10875w())) {
                m11313j().m10971U(this.f9384p, 26, null, null, 0);
                mo11081c().m11555I().m11540a("Too many default event parameters set. Discarding beyond event parameter limit");
            }
            m11312k().f9183C.m11441b(a);
            m11598q().m11206D(a);
        }
    }
}
