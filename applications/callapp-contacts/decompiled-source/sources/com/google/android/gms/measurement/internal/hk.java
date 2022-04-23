package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hk.class */
public final class hk extends ec {

    /* renamed from: a  reason: collision with root package name */
    volatile hc f29765a;

    /* renamed from: b  reason: collision with root package name */
    protected hc f29766b;

    /* renamed from: c  reason: collision with root package name */
    hc f29767c;

    /* renamed from: d  reason: collision with root package name */
    private hc f29768d;
    private Activity f;
    private volatile boolean g;
    private volatile hc h;
    private boolean i;
    private hc k;
    private String l;
    private final Object j = new Object();
    private final Map<Activity, hc> e = new ConcurrentHashMap();

    public hk(es esVar) {
        super(esVar);
    }

    private String a(Class<?> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str = length > 0 ? split[length - 1] : "";
        String str2 = str;
        if (str.length() > 100) {
            str2 = str.substring(0, 100);
        }
        return str2;
    }

    private final void a(Activity activity, hc hcVar, boolean z) {
        hc hcVar2 = this.f29765a == null ? this.f29768d : this.f29765a;
        if (hcVar.f29743b == null) {
            hcVar = new hc(hcVar.f29742a, activity != null ? a(activity.getClass()) : null, hcVar.f29744c, hcVar.e, hcVar.f);
        }
        this.f29768d = this.f29765a;
        this.f29765a = hcVar;
        this.t.d().a(new hf(this, hcVar, hcVar2, this.t.j.b(), z));
    }

    public static void a(hc hcVar, Bundle bundle, boolean z) {
        boolean z2 = z;
        if (hcVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = hcVar.f29742a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = hcVar.f29743b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", hcVar.f29744c);
                return;
            }
            z2 = false;
        }
        if (hcVar == null && z2) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(hk hkVar, Bundle bundle, hc hcVar, hc hcVar2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        hkVar.a(hcVar, hcVar2, j, true, hkVar.t.g().a(null, "screen_view", bundle, null, true));
    }

    private final hc d(Activity activity) {
        o.a(activity);
        hc hcVar = this.e.get(activity);
        hc hcVar2 = hcVar;
        if (hcVar == null) {
            hcVar2 = new hc(null, a(activity.getClass()), this.t.g().e());
            this.e.put(activity, hcVar2);
        }
        if (this.t.g.d(null, dc.ar) && this.h != null) {
            return this.h;
        }
        return hcVar2;
    }

    public final hc a(boolean z) {
        k();
        S_();
        if (!this.t.g.d(null, dc.ar) || !z) {
            return this.f29766b;
        }
        hc hcVar = this.f29766b;
        return hcVar != null ? hcVar : this.f29767c;
    }

    public final void a(Activity activity) {
        if (this.t.g.d(null, dc.ar)) {
            synchronized (this.j) {
                this.i = true;
                if (activity != this.f) {
                    synchronized (this.j) {
                        this.f = activity;
                        this.g = false;
                    }
                    if (this.t.g.d(null, dc.aq) && this.t.g.f()) {
                        this.h = null;
                        this.t.d().a(new hj(this));
                    }
                }
            }
        }
        if (!this.t.g.d(null, dc.aq) || this.t.g.f()) {
            a(activity, d(activity), false);
            ca p = this.t.p();
            p.t.d().a(new az(p, p.t.j.b()));
            return;
        }
        this.f29765a = this.h;
        this.t.d().a(new hg(this));
    }

    public final void a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (this.t.g.f() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.e.put(activity, new hc(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    @Deprecated
    public final void a(Activity activity, String str, String str2) {
        if (!this.t.g.f()) {
            this.t.c().h.a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        hc hcVar = this.f29765a;
        if (hcVar == null) {
            this.t.c().h.a("setCurrentScreen cannot be called while no activity active");
        } else if (this.e.get(activity) == null) {
            this.t.c().h.a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = a(activity.getClass());
            }
            boolean c2 = ju.c(hcVar.f29743b, str3);
            boolean c3 = ju.c(hcVar.f29742a, str);
            if (c2 && c3) {
                this.t.c().h.a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                this.t.c().h.a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                this.t.c().k.a("Setting current screen to name, class", str == null ? JsonReaderKt.NULL : str, str3);
                hc hcVar2 = new hc(str, str3, this.t.g().e());
                this.e.put(activity, hcVar2);
                a(activity, hcVar2, true);
            } else {
                this.t.c().h.a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    public final void a(Bundle bundle, long j) {
        if (!this.t.g.d(null, dc.ar)) {
            this.t.c().h.a("Manual screen reporting is disabled.");
            return;
        }
        synchronized (this.j) {
            if (!this.i) {
                this.t.c().h.a("Cannot log screen view event when the app is in the background.");
                return;
            }
            String string = bundle.getString("screen_name");
            if (string == null || (string.length() > 0 && string.length() <= 100)) {
                String string2 = bundle.getString("screen_class");
                if (string2 == null || (string2.length() > 0 && string2.length() <= 100)) {
                    if (string2 == null) {
                        Activity activity = this.f;
                        string2 = activity != null ? a(activity.getClass()) : "Activity";
                    }
                    hc hcVar = this.f29765a;
                    if (this.g && hcVar != null) {
                        this.g = false;
                        boolean c2 = ju.c(hcVar.f29743b, string2);
                        boolean c3 = ju.c(hcVar.f29742a, string);
                        if (c2 && c3) {
                            this.t.c().h.a("Ignoring call to log screen view event with duplicate parameters.");
                            return;
                        }
                    }
                    this.t.c().k.a("Logging screen view with name, class", string == null ? JsonReaderKt.NULL : string, string2 == null ? JsonReaderKt.NULL : string2);
                    hc hcVar2 = this.f29765a == null ? this.f29768d : this.f29765a;
                    hc hcVar3 = new hc(string, string2, this.t.g().e(), true, j);
                    this.f29765a = hcVar3;
                    this.f29768d = hcVar2;
                    this.h = hcVar3;
                    this.t.d().a(new hd(this, bundle, hcVar3, hcVar2, this.t.j.b()));
                    return;
                }
                this.t.c().h.a("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                return;
            }
            this.t.c().h.a("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x016d, code lost:
        if (r10 != 0) goto L_0x0176;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.gms.measurement.internal.hc r8, com.google.android.gms.measurement.internal.hc r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.hk.a(com.google.android.gms.measurement.internal.hc, com.google.android.gms.measurement.internal.hc, long, boolean, android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(hc hcVar, boolean z, long j) {
        this.t.p().a(this.t.j.b());
        if (this.t.e().f29877c.a(hcVar != null && hcVar.f29745d, z, j) && hcVar != null) {
            hcVar.f29745d = false;
        }
    }

    public final void a(String str, hc hcVar) {
        S_();
        synchronized (this) {
            String str2 = this.l;
            if (str2 == null || str2.equals(str) || hcVar != null) {
                this.l = str;
                this.k = hcVar;
            }
        }
    }

    public final void b(Activity activity) {
        if (this.t.g.d(null, dc.ar)) {
            synchronized (this.j) {
                this.i = false;
                this.g = true;
            }
        }
        long b2 = this.t.j.b();
        if (!this.t.g.d(null, dc.aq) || this.t.g.f()) {
            hc d2 = d(activity);
            this.f29768d = this.f29765a;
            this.f29765a = null;
            this.t.d().a(new hi(this, d2, b2));
            return;
        }
        this.f29765a = null;
        this.t.d().a(new hh(this, b2));
    }

    public final void b(Activity activity, Bundle bundle) {
        hc hcVar;
        if (this.t.g.f() && bundle != null && (hcVar = this.e.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", hcVar.f29744c);
            bundle2.putString("name", hcVar.f29742a);
            bundle2.putString("referrer_name", hcVar.f29743b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    @Override // com.google.android.gms.measurement.internal.ec
    protected final boolean b() {
        return false;
    }

    public final void c(Activity activity) {
        synchronized (this.j) {
            if (activity == this.f) {
                this.f = null;
            }
        }
        if (this.t.g.f()) {
            this.e.remove(activity);
        }
    }
}
