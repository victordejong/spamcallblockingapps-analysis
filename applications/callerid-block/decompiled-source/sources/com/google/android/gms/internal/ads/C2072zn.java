package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import com.google.android.gms.ads.internal.util.d1;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.common.p080g.C1562c;
import com.google.android.gms.common.util.C1617n;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.zn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zn.class */
public final class C2072zn {

    /* renamed from: b */
    private final d1 f9387b;

    /* renamed from: c */
    private final do f9388c;

    /* renamed from: e */
    private Context f9390e;

    /* renamed from: f */
    private zzbbq f9391f;

    /* renamed from: l */
    private rz1<ArrayList<String>> f9397l;

    /* renamed from: a */
    private final Object f9386a = new Object();

    /* renamed from: d */
    private boolean f9389d = false;

    /* renamed from: g */
    private C1917r3 f9392g = null;

    /* renamed from: h */
    private Boolean f9393h = null;

    /* renamed from: i */
    private final AtomicInteger f9394i = new AtomicInteger(0);

    /* renamed from: j */
    private final C2055yn f9395j = new C2055yn(null);

    /* renamed from: k */
    private final Object f9396k = new Object();

    public C2072zn() {
        d1 d1Var = new d1();
        this.f9387b = d1Var;
        this.f9388c = new do(m03.m6634c(), d1Var);
    }

    /* renamed from: a */
    public final C1917r3 m4596a() {
        C1917r3 r3Var;
        synchronized (this.f9386a) {
            r3Var = this.f9392g;
        }
        return r3Var;
    }

    /* renamed from: b */
    public final void m4595b(Boolean bool) {
        synchronized (this.f9386a) {
            this.f9393h = bool;
        }
    }

    /* renamed from: c */
    public final Boolean m4594c() {
        Boolean bool;
        synchronized (this.f9386a) {
            bool = this.f9393h;
        }
        return bool;
    }

    /* renamed from: d */
    public final void m4593d() {
        this.f9395j.m4729a();
    }

    @TargetApi(23)
    /* renamed from: e */
    public final void m4592e(Context context, zzbbq zzbbqVar) {
        C1917r3 r3Var;
        synchronized (this.f9386a) {
            if (!this.f9389d) {
                this.f9390e = context.getApplicationContext();
                this.f9391f = zzbbqVar;
                C1407r.m8917g().m5587b(this.f9388c);
                this.f9387b.D0(this.f9390e);
                ui.d(this.f9390e, this.f9391f);
                C1407r.m8911m();
                if (!C1990v4.f8866c.m6222e().booleanValue()) {
                    y0.k("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    r3Var = null;
                } else {
                    r3Var = new C1917r3();
                }
                this.f9392g = r3Var;
                if (r3Var != null) {
                    C1691cp.m7792a(new xn(this).m8699b(), "AppState.registerCsiReporter");
                }
                this.f9389d = true;
                m4583n();
            }
        }
        C1407r.m8920d().m8788J(context, zzbbqVar.b);
    }

    /* renamed from: f */
    public final Resources m4591f() {
        if (this.f9391f.e) {
            return this.f9390e.getResources();
        }
        try {
            C1947so.m5641b(this.f9390e).getResources();
            return null;
        } catch (zzbbn e) {
            C1894po.m6179g("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    /* renamed from: g */
    public final void m4590g(Throwable th, String str) {
        ui.d(this.f9390e, this.f9391f).m5051a(th, str);
    }

    /* renamed from: h */
    public final void m4589h(Throwable th, String str) {
        ui.d(this.f9390e, this.f9391f).m5050b(th, str, C1765h5.f6736g.m6222e().floatValue());
    }

    /* renamed from: i */
    public final void m4588i() {
        this.f9394i.incrementAndGet();
    }

    /* renamed from: j */
    public final void m4587j() {
        this.f9394i.decrementAndGet();
    }

    /* renamed from: k */
    public final int m4586k() {
        return this.f9394i.get();
    }

    /* renamed from: l */
    public final AbstractC1409a1 m4585l() {
        d1 d1Var;
        synchronized (this.f9386a) {
            d1Var = this.f9387b;
        }
        return d1Var;
    }

    /* renamed from: m */
    public final Context m4584m() {
        return this.f9390e;
    }

    /* renamed from: n */
    public final rz1<ArrayList<String>> m4583n() {
        if (C1617n.m8215c() && this.f9390e != null) {
            if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7540y1)).booleanValue()) {
                synchronized (this.f9396k) {
                    rz1<ArrayList<String>> rz1Var = this.f9397l;
                    if (rz1Var != null) {
                        return rz1Var;
                    }
                    rz1<ArrayList<String>> a = C2073zo.f9410a.m5553a(new Callable(this) { // from class: com.google.android.gms.internal.ads.wn

                        /* renamed from: a */
                        private final C2072zn f9030a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f9030a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f9030a.m4581p();
                        }
                    });
                    this.f9397l = a;
                    return a;
                }
            }
        }
        return kz1.a(new ArrayList());
    }

    /* renamed from: o */
    public final do m4582o() {
        return this.f9388c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public final /* synthetic */ ArrayList m4581p() {
        Context a = C2036xj.m4900a(this.f9390e);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo f = C1562c.m8427a(a).m8430f(a.getApplicationInfo().packageName, 4096);
            if (f.requestedPermissions != null && f.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = f.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((f.requestedPermissionsFlags[i] & 2) != 0) {
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
