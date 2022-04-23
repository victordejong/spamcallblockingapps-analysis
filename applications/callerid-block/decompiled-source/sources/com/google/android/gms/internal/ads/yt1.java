package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.p072u.C1504a;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yt1.class */
public final class yt1 {

    /* renamed from: a */
    private final Context f9258a;

    /* renamed from: b */
    private final Executor f9259b;

    /* renamed from: c */
    private final et1 f9260c;

    /* renamed from: d */
    private final gt1 f9261d;

    /* renamed from: e */
    private final xt1 f9262e;

    /* renamed from: f */
    private final xt1 f9263f;

    /* renamed from: g */
    private AbstractC2397g<d61> f9264g;

    /* renamed from: h */
    private AbstractC2397g<d61> f9265h;

    yt1(Context context, Executor executor, et1 et1Var, gt1 gt1Var, vt1 vt1Var, wt1 wt1Var) {
        this.f9258a = context;
        this.f9259b = executor;
        this.f9260c = et1Var;
        this.f9261d = gt1Var;
        this.f9262e = vt1Var;
        this.f9263f = wt1Var;
    }

    /* renamed from: a */
    public static yt1 m4709a(Context context, Executor executor, et1 et1Var, gt1 gt1Var) {
        final yt1 yt1Var = new yt1(context, executor, et1Var, gt1Var, new vt1(), new wt1());
        yt1Var.f9264g = yt1Var.f9261d.m7338b() ? yt1Var.m4703g(new Callable(yt1Var) { // from class: com.google.android.gms.internal.ads.st1

            /* renamed from: a */
            private final yt1 f8556a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8556a = yt1Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8556a.m4704f();
            }
        }) : C2401j.m3760e(yt1Var.f9262e.zza());
        yt1Var.f9265h = yt1Var.m4703g(new Callable(yt1Var) { // from class: com.google.android.gms.internal.ads.tt1

            /* renamed from: a */
            private final yt1 f8730a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8730a = yt1Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8730a.m4705e();
            }
        });
        return yt1Var;
    }

    /* renamed from: g */
    private final AbstractC2397g<d61> m4703g(Callable<d61> callable) {
        return C2401j.m3762c(this.f9259b, callable).m3783d(this.f9259b, new ut1(this));
    }

    /* renamed from: h */
    private static d61 m4702h(AbstractC2397g<d61> gVar, d61 d61Var) {
        return !gVar.m3772o() ? d61Var : gVar.m3776k();
    }

    /* renamed from: b */
    public final d61 m4708b() {
        return m4702h(this.f9264g, this.f9262e.zza());
    }

    /* renamed from: c */
    public final d61 m4707c() {
        return m4702h(this.f9265h, this.f9263f.zza());
    }

    /* renamed from: d */
    final /* synthetic */ void m4706d(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f9260c.m7589d(2025, -1L, exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ d61 m4705e() {
        Context context = this.f9258a;
        return nt1.m6389a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* synthetic */ d61 m4704f() {
        Context context = this.f9258a;
        ar0 A0 = d61.A0();
        C1504a aVar = new C1504a(context);
        aVar.m8550f();
        C1504a.C1505a c = aVar.m8553c();
        String a = c.m8543a();
        String str = a;
        if (a != null) {
            str = a;
            if (a.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(a);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            A0.V(str);
            A0.X(c.m8542b());
            A0.W(zzct.g);
        }
        return A0.m();
    }
}
