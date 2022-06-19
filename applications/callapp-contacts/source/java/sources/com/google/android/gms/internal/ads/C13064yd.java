package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzi;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12110n;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.yd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yd.class */
public final class C13064yd {

    /* renamed from: b */
    final C13075yo f50044b;

    /* renamed from: c */
    public Context f50045c;

    /* renamed from: d */
    zzbar f50046d;

    /* renamed from: h */
    private final zzi f50050h;

    /* renamed from: l */
    private dbt<ArrayList<String>> f50054l;

    /* renamed from: a */
    final Object f50043a = new Object();

    /* renamed from: i */
    private boolean f50051i = false;

    /* renamed from: e */
    C12202ax f50047e = null;

    /* renamed from: j */
    private Boolean f50052j = null;

    /* renamed from: f */
    final AtomicInteger f50048f = new AtomicInteger(0);

    /* renamed from: g */
    final C13069yi f50049g = new C13069yi(null);

    /* renamed from: k */
    private final Object f50053k = new Object();

    public C13064yd() {
        zzi zziVar = new zzi();
        this.f50050h = zziVar;
        this.f50044b = new C13075yo(ekb.m14830f(), zziVar);
    }

    /* renamed from: a */
    public static ArrayList<String> m13982a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b(context.getApplicationInfo().packageName, 4096);
            if (m19259b.requestedPermissions != null && m19259b.requestedPermissionsFlags != null) {
                for (int i = 0; i < m19259b.requestedPermissions.length; i++) {
                    if ((m19259b.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(m19259b.requestedPermissions[i]);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C12202ax m13983a() {
        C12202ax c12202ax;
        synchronized (this.f50043a) {
            c12202ax = this.f50047e;
        }
        return c12202ax;
    }

    /* renamed from: a */
    public final void m13981a(Context context, zzbar zzbarVar) {
        C12202ax c12202ax;
        synchronized (this.f50043a) {
            if (!this.f50051i) {
                this.f50045c = context.getApplicationContext();
                this.f50046d = zzbarVar;
                zzr.zzky().m15113a(this.f50044b);
                this.f50050h.initialize(this.f50045c);
                C12898sb.m14201a(this.f50045c, this.f50046d);
                zzr.zzle();
                if (!C12273ci.f45830c.mo17481a().booleanValue()) {
                    zzd.zzed("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    c12202ax = null;
                } else {
                    c12202ax = new C12202ax();
                }
                this.f50047e = c12202ax;
                if (c12202ax != null) {
                    C13099zl.m13900a(new C13066yf(this).zzyx(), "AppState.registerCsiReporter");
                }
                this.f50051i = true;
                m13974e();
            }
        }
        zzr.zzkv().zzq(context, zzbarVar.zzbrz);
    }

    /* renamed from: a */
    public final void m13980a(Boolean bool) {
        synchronized (this.f50043a) {
            this.f50052j = bool;
        }
    }

    /* renamed from: a */
    public final void m13979a(Throwable th, String str) {
        C12898sb.m14201a(this.f50045c, this.f50046d).mo14197a(th, str);
    }

    /* renamed from: b */
    public final Boolean m13978b() {
        Boolean bool;
        synchronized (this.f50043a) {
            bool = this.f50052j;
        }
        return bool;
    }

    /* renamed from: b */
    public final void m13977b(Throwable th, String str) {
        C12898sb.m14201a(this.f50045c, this.f50046d).mo14196a(th, str, C12286cu.f46544g.mo17481a().floatValue());
    }

    /* renamed from: c */
    public final Resources m13976c() {
        if (this.f50046d.zzekc) {
            return this.f50045c.getResources();
        }
        try {
            C13086yz.m13905a(this.f50045c).f39686h.getResources();
            return null;
        } catch (zzbap e) {
            zzd.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    /* renamed from: d */
    public final zzf m13975d() {
        zzi zziVar;
        synchronized (this.f50043a) {
            zziVar = this.f50050h;
        }
        return zziVar;
    }

    /* renamed from: e */
    public final dbt<ArrayList<String>> m13974e() {
        if (C12110n.m19020b() && this.f50045c != null) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42693bC)).booleanValue()) {
                synchronized (this.f50053k) {
                    dbt<ArrayList<String>> dbtVar = this.f50054l;
                    if (dbtVar != null) {
                        return dbtVar;
                    }
                    dbt<ArrayList<String>> mo16890a = C13091zd.f50118a.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.yg

                        /* renamed from: a */
                        private final C13064yd f50065a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50065a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return C13064yd.m13982a(C12936tm.m14155a(this.f50065a.f50045c));
                        }
                    });
                    this.f50054l = mo16890a;
                    return mo16890a;
                }
            }
        }
        return dbh.m16899a(new ArrayList());
    }
}
