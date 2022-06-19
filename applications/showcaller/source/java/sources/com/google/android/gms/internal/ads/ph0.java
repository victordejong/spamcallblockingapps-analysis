package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5737t1;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6237o;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ph0.class */
public final class ph0 {

    /* renamed from: b */
    private final C5737t1 f28000b;

    /* renamed from: c */
    private final th0 f28001c;

    /* renamed from: e */
    private Context f28003e;

    /* renamed from: f */
    private zzcgz f28004f;

    /* renamed from: l */
    private r03<ArrayList<String>> f28010l;

    /* renamed from: a */
    private final Object f27999a = new Object();

    /* renamed from: d */
    private boolean f28002d = false;

    /* renamed from: g */
    private C6864pw f28005g = null;

    /* renamed from: h */
    private Boolean f28006h = null;

    /* renamed from: i */
    private final AtomicInteger f28007i = new AtomicInteger(0);

    /* renamed from: j */
    private final nh0 f28008j = new nh0(null);

    /* renamed from: k */
    private final Object f28009k = new Object();

    public ph0() {
        C5737t1 c5737t1 = new C5737t1();
        this.f28000b = c5737t1;
        this.f28001c = new th0(C7118wr.m9483c(), c5737t1);
    }

    /* renamed from: e */
    public final C6864pw m12241e() {
        C6864pw c6864pw;
        synchronized (this.f27999a) {
            c6864pw = this.f28005g;
        }
        return c6864pw;
    }

    /* renamed from: f */
    public final void m12240f(Boolean bool) {
        synchronized (this.f27999a) {
            this.f28006h = bool;
        }
    }

    /* renamed from: g */
    public final Boolean m12239g() {
        Boolean bool;
        synchronized (this.f27999a) {
            bool = this.f28006h;
        }
        return bool;
    }

    /* renamed from: h */
    public final void m12238h() {
        this.f28008j.m12899a();
    }

    @TargetApi(23)
    /* renamed from: i */
    public final void m12237i(Context context, zzcgz zzcgzVar) {
        C6864pw c6864pw;
        synchronized (this.f27999a) {
            if (!this.f28002d) {
                this.f28003e = context.getApplicationContext();
                this.f28004f = zzcgzVar;
                C5667s.m18157g().m13876b(this.f28001c);
                this.f28000b.mo17966U(this.f28003e);
                ic0.m14452d(this.f28003e, this.f28004f);
                C5667s.m18151m();
                if (!C7013tx.f30411c.m12799e().booleanValue()) {
                    C5722o1.m17990k("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    c6864pw = null;
                } else {
                    c6864pw = new C6864pw();
                }
                this.f28005g = c6864pw;
                if (c6864pw != null) {
                    ti0.m10655a(new mh0(this).mo16320c(), "AppState.registerCsiReporter");
                }
                this.f28002d = true;
                m12228r();
            }
        }
        C5667s.m18160d().m18092P(context, zzcgzVar.f33854d);
    }

    /* renamed from: j */
    public final Resources m12236j() {
        if (this.f28004f.f33857g) {
            return this.f28003e.getResources();
        }
        try {
            hi0.m14637b(this.f28003e).getResources();
            return null;
        } catch (zzcgw e) {
            ei0.m15463g("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    /* renamed from: k */
    public final void m12235k(Throwable th, String str) {
        ic0.m14452d(this.f28003e, this.f28004f).mo13921b(th, str);
    }

    /* renamed from: l */
    public final void m12234l(Throwable th, String str) {
        ic0.m14452d(this.f28003e, this.f28004f).mo13922a(th, str, C6532gy.f23738g.m12799e().floatValue());
    }

    /* renamed from: m */
    public final void m12233m() {
        this.f28007i.incrementAndGet();
    }

    /* renamed from: n */
    public final void m12232n() {
        this.f28007i.decrementAndGet();
    }

    /* renamed from: o */
    public final int m12231o() {
        return this.f28007i.get();
    }

    /* renamed from: p */
    public final AbstractC5728q1 m12230p() {
        C5737t1 c5737t1;
        synchronized (this.f27999a) {
            c5737t1 = this.f28000b;
        }
        return c5737t1;
    }

    /* renamed from: q */
    public final Context m12229q() {
        return this.f28003e;
    }

    /* renamed from: r */
    public final r03<ArrayList<String>> m12228r() {
        if (C6237o.m16781c() && this.f28003e != null) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25541N1)).booleanValue()) {
                synchronized (this.f28009k) {
                    r03<ArrayList<String>> r03Var = this.f28010l;
                    if (r03Var != null) {
                        return r03Var;
                    }
                    r03<ArrayList<String>> mo11185a = qi0.f28495a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.lh0

                        /* renamed from: a */
                        private final ph0 f26119a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f26119a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f26119a.m12226t();
                        }
                    });
                    this.f28010l = mo11185a;
                    return mo11185a;
                }
            }
        }
        return k03.m14003a(new ArrayList());
    }

    /* renamed from: s */
    public final th0 m12227s() {
        return this.f28001c;
    }

    /* renamed from: t */
    public final /* synthetic */ ArrayList m12226t() {
        Context m13583a = ld0.m13583a(this.f28003e);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo m16888f = C6198c.m16885a(m13583a).m16888f(m13583a.getApplicationInfo().packageName, 4096);
            if (m16888f.requestedPermissions != null && m16888f.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = m16888f.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((m16888f.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }
}
