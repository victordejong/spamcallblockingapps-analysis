package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4808s2;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4820t5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4829u5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4838v5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4847w5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4856x5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4865y5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzii.class */
public final class zzii extends AbstractC4827u3 {

    /* renamed from: c */
    public volatile zzij f30071c;

    /* renamed from: d */
    public zzij f30072d;
    @VisibleForTesting

    /* renamed from: e */
    public zzij f30073e;

    /* renamed from: g */
    public Activity f30075g;

    /* renamed from: h */
    public volatile boolean f30076h;

    /* renamed from: i */
    public volatile zzij f30077i;

    /* renamed from: j */
    public zzij f30078j;

    /* renamed from: k */
    public boolean f30079k;

    /* renamed from: m */
    public String f30081m;

    /* renamed from: l */
    public final Object f30080l = new Object();

    /* renamed from: f */
    public final Map<Activity, zzij> f30074f = new ConcurrentHashMap();

    public zzii(zzfu zzfuVar) {
        super(zzfuVar);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m8928a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        String str3 = str2;
        if (str2.length() > 100) {
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* renamed from: a */
    public static void m8931a(zzij zzijVar, Bundle bundle, boolean z) {
        if (bundle != null && zzijVar != null && (!bundle.containsKey("_sc") || z)) {
            String str = zzijVar.f30082a;
            if (str != null) {
                bundle.putString("_sn", str);
            } else {
                bundle.remove("_sn");
            }
            String str2 = zzijVar.f30083b;
            if (str2 != null) {
                bundle.putString("_sc", str2);
            } else {
                bundle.remove("_sc");
            }
            bundle.putLong("_si", zzijVar.f30084c);
        } else if (bundle != null && zzijVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* renamed from: a */
    public final zzij m8926a(boolean z) {
        m24876t();
        mo9085c();
        if (!m24897h().m9354a(zzas.f29900v0) || !z) {
            return this.f30073e;
        }
        zzij zzijVar = this.f30073e;
        return zzijVar != null ? zzijVar : this.f30078j;
    }

    /* renamed from: a */
    public final void m8942a(Activity activity) {
        if (m24897h().m9354a(zzas.f29900v0)) {
            synchronized (this.f30080l) {
                this.f30079k = true;
                if (activity != this.f30075g) {
                    synchronized (this.f30080l) {
                        this.f30075g = activity;
                        this.f30076h = false;
                    }
                    if (m24897h().m9354a(zzas.f29898u0) && m24897h().m9331n().booleanValue()) {
                        this.f30077i = null;
                        mo8795j().m9093a(new RunnableC4856x5(this));
                    }
                }
            }
        }
        if (!m24897h().m9354a(zzas.f29898u0) || m24897h().m9331n().booleanValue()) {
            m8940a(activity, m8922d(activity), false);
            zza k = m24888k();
            k.mo8795j().m9093a(new RunnableC4808s2(k, k.mo8779z().mo17092a()));
            return;
        }
        this.f30071c = this.f30077i;
        mo8795j().m9093a(new RunnableC4847w5(this));
    }

    /* renamed from: a */
    public final void m8941a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (m24897h().m9331n().booleanValue() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f30074f.put(activity, new zzij(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    /* renamed from: a */
    public final void m8940a(Activity activity, zzij zzijVar, boolean z) {
        zzij zzijVar2;
        zzij zzijVar3 = this.f30071c == null ? this.f30072d : this.f30071c;
        if (zzijVar.f30083b == null) {
            zzijVar2 = new zzij(zzijVar.f30082a, activity != null ? m8928a(activity.getClass().getCanonicalName()) : null, zzijVar.f30084c, zzijVar.f30086e, zzijVar.f30087f);
        } else {
            zzijVar2 = zzijVar;
        }
        this.f30072d = this.f30071c;
        this.f30071c = zzijVar2;
        mo8795j().m9093a(new RunnableC4820t5(this, zzijVar2, zzijVar3, mo8779z().mo17092a(), z));
    }

    @Deprecated
    /* renamed from: a */
    public final void m8939a(Activity activity, String str, String str2) {
        if (!m24897h().m9331n().booleanValue()) {
            mo8789p().m9147v().m9143a("setCurrentScreen cannot be called while screen reporting is disabled.");
        } else if (this.f30071c == null) {
            mo8789p().m9147v().m9143a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f30074f.get(activity) == null) {
            mo8789p().m9147v().m9143a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m8928a(activity.getClass().getCanonicalName());
            }
            boolean c = zzkv.m8685c(this.f30071c.f30083b, str3);
            boolean c2 = zzkv.m8685c(this.f30071c.f30082a, str);
            if (c && c2) {
                mo8789p().m9147v().m9143a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                mo8789p().m9147v().m9142a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                mo8789p().m9144y().m9141a("Setting current screen to name, class", str == null ? "null" : str, str3);
                zzij zzijVar = new zzij(str, str3, m24899f().m8675q());
                this.f30074f.put(activity, zzijVar);
                m8940a(activity, zzijVar, true);
            } else {
                mo8789p().m9147v().m9142a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    /* renamed from: a */
    public final void m8938a(Bundle bundle, long j) {
        String str;
        if (!m24897h().m9354a(zzas.f29900v0)) {
            mo8789p().m9147v().m9143a("Manual screen reporting is disabled.");
            return;
        }
        synchronized (this.f30080l) {
            if (!this.f30079k) {
                mo8789p().m9147v().m9143a("Cannot log screen view event when the app is in the background.");
                return;
            }
            String str2 = null;
            if (bundle != null) {
                str = bundle.getString("screen_name");
                if (str == null || (str.length() > 0 && str.length() <= 100)) {
                    str2 = bundle.getString("screen_class");
                    if (str2 != null && (str2.length() <= 0 || str2.length() > 100)) {
                        mo8789p().m9147v().m9142a("Invalid screen class length for screen view. Length", Integer.valueOf(str2.length()));
                        return;
                    }
                } else {
                    mo8789p().m9147v().m9142a("Invalid screen name length for screen view. Length", Integer.valueOf(str.length()));
                    return;
                }
            } else {
                str = null;
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = this.f30075g != null ? m8928a(this.f30075g.getClass().getCanonicalName()) : "Activity";
            }
            if (this.f30076h && this.f30071c != null) {
                this.f30076h = false;
                boolean c = zzkv.m8685c(this.f30071c.f30083b, str3);
                boolean c2 = zzkv.m8685c(this.f30071c.f30082a, str);
                if (c && c2) {
                    mo8789p().m9147v().m9143a("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            mo8789p().m9144y().m9141a("Logging screen view with name, class", str == null ? "null" : str, str3 == null ? "null" : str3);
            zzij zzijVar = this.f30071c == null ? this.f30072d : this.f30071c;
            zzij zzijVar2 = new zzij(str, str3, m24899f().m8675q(), true, j);
            this.f30071c = zzijVar2;
            this.f30072d = zzijVar;
            this.f30077i = zzijVar2;
            mo8795j().m9093a(new RunnableC4829u5(this, bundle, zzijVar2, zzijVar, mo8779z().mo17092a()));
        }
    }

    /* renamed from: a */
    public final void m8937a(Bundle bundle, zzij zzijVar, zzij zzijVar2, long j) {
        if (bundle != null) {
            bundle.remove("screen_name");
            bundle.remove("screen_class");
        }
        m8930a(zzijVar, zzijVar2, j, true, m24899f().m8708a((String) null, "screen_view", bundle, (List<String>) null, true, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8930a(com.google.android.gms.measurement.internal.zzij r8, com.google.android.gms.measurement.internal.zzij r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzii.m8930a(com.google.android.gms.measurement.internal.zzij, com.google.android.gms.measurement.internal.zzij, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: a */
    public final void m8929a(zzij zzijVar, boolean z, long j) {
        m24888k().m9367a(mo8779z().mo17092a());
        if (m24882r().m8859a(zzijVar != null && zzijVar.f30085d, z, j) && zzijVar != null) {
            zzijVar.f30085d = false;
        }
    }

    /* renamed from: a */
    public final void m8927a(String str, zzij zzijVar) {
        mo9085c();
        synchronized (this) {
            if (this.f30081m == null || this.f30081m.equals(str) || zzijVar != null) {
                this.f30081m = str;
            }
        }
    }

    /* renamed from: b */
    public final void m8925b(Activity activity) {
        if (m24897h().m9354a(zzas.f29900v0)) {
            synchronized (this.f30080l) {
                this.f30079k = false;
                this.f30076h = true;
            }
        }
        long a = mo8779z().mo17092a();
        if (!m24897h().m9354a(zzas.f29898u0) || m24897h().m9331n().booleanValue()) {
            zzij d = m8922d(activity);
            this.f30072d = this.f30071c;
            this.f30071c = null;
            mo8795j().m9093a(new RunnableC4865y5(this, d, a));
            return;
        }
        this.f30071c = null;
        mo8795j().m9093a(new RunnableC4838v5(this, a));
    }

    /* renamed from: b */
    public final void m8924b(Activity activity, Bundle bundle) {
        zzij zzijVar;
        if (m24897h().m9331n().booleanValue() && bundle != null && (zzijVar = this.f30074f.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", zzijVar.f30084c);
            bundle2.putString("name", zzijVar.f30082a);
            bundle2.putString("referrer_name", zzijVar.f30083b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    /* renamed from: c */
    public final void m8923c(Activity activity) {
        synchronized (this.f30080l) {
            if (activity == this.f30075g) {
                this.f30075g = null;
            }
        }
        if (m24897h().m9331n().booleanValue()) {
            this.f30074f.remove(activity);
        }
    }

    /* renamed from: d */
    public final zzij m8922d(Activity activity) {
        Preconditions.m17288a(activity);
        zzij zzijVar = this.f30074f.get(activity);
        zzij zzijVar2 = zzijVar;
        if (zzijVar == null) {
            zzijVar2 = new zzij(null, m8928a(activity.getClass().getCanonicalName()), m24899f().m8675q());
            this.f30074f.put(activity, zzijVar2);
        }
        if (m24897h().m9354a(zzas.f29900v0) && this.f30077i != null) {
            return this.f30077i;
        }
        return zzijVar2;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return false;
    }

    /* renamed from: y */
    public final zzij m8921y() {
        return this.f30071c;
    }
}
