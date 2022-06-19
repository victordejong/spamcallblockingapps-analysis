package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iv0.class */
public final class iv0 {

    /* renamed from: a */
    private final ScheduledExecutorService f6864a;

    /* renamed from: b */
    private final sz1 f6865b;

    /* renamed from: c */
    private final yv0 f6866c;

    /* renamed from: d */
    private final yg2<jx0> f6867d;

    public iv0(ScheduledExecutorService scheduledExecutorService, sz1 sz1Var, yv0 yv0Var, yg2<jx0> yg2Var) {
        this.f6864a = scheduledExecutorService;
        this.f6865b = sz1Var;
        this.f6866c = yv0Var;
        this.f6867d = yg2Var;
    }

    /* renamed from: a */
    public final rz1<InputStream> m7071a(zzawc zzawcVar) {
        rz1 rz1Var;
        String str = zzawcVar.e;
        C1407r.m8920d();
        if (C1433l1.m8763e(str)) {
            rz1Var = kz1.b(new zzcsk(1));
        } else {
            yv0 yv0Var = this.f6866c;
            synchronized (((wv0) yv0Var).b) {
                try {
                    if (((wv0) yv0Var).c) {
                        rz1Var = ((wv0) yv0Var).a;
                    } else {
                        ((wv0) yv0Var).c = true;
                        ((wv0) yv0Var).e = zzawcVar;
                        ((wv0) yv0Var).f.m8403a();
                        ((wv0) yv0Var).a.e(new Runnable(yv0Var) { // from class: com.google.android.gms.internal.ads.xv0

                            /* renamed from: b */
                            private final yv0 f9193b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f9193b = yv0Var;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9193b.d();
                            }
                        }, C2073zo.f9415f);
                        rz1Var = ((wv0) yv0Var).a;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int callingUid = Binder.getCallingUid();
        return kz1.f(kz1.g(bz1.E(rz1Var), ((Integer) C1674c.m7906c().m6878b(C1842m3.f7437j3)).intValue(), TimeUnit.SECONDS, this.f6864a), Throwable.class, new hv0(this, zzawcVar, callingUid), this.f6865b);
    }

    /* renamed from: b */
    final /* synthetic */ rz1 m7070b(zzawc zzawcVar, int i, Throwable th) {
        return this.f6867d.m4759b().C6(zzawcVar, i);
    }
}
