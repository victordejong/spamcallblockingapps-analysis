package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ou0.class */
public final class ou0 {

    /* renamed from: a */
    private final sz1 f7904a;

    /* renamed from: b */
    private final sz1 f7905b;

    /* renamed from: c */
    private final uv0 f7906c;

    /* renamed from: d */
    private final yg2<jx0> f7907d;

    public ou0(sz1 sz1Var, sz1 sz1Var2, uv0 uv0Var, yg2<jx0> yg2Var) {
        this.f7904a = sz1Var;
        this.f7905b = sz1Var2;
        this.f7906c = uv0Var;
        this.f7907d = yg2Var;
    }

    /* renamed from: a */
    public final rz1<InputStream> m6250a(final zzawc zzawcVar) {
        String str = zzawcVar.e;
        C1407r.m8920d();
        return kz1.f(C1433l1.m8763e(str) ? kz1.b(new zzcsk(1)) : kz1.f(this.f7904a.m5553a(new Callable(this, zzawcVar) { // from class: com.google.android.gms.internal.ads.lu0

            /* renamed from: a */
            private final ou0 f7182a;

            /* renamed from: b */
            private final zzawc f7183b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7182a = this;
                this.f7183b = zzawcVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f7182a.m6248c(this.f7183b);
            }
        }), ExecutionException.class, mu0.a, this.f7905b), zzcsk.class, new nu0(this, zzawcVar, Binder.getCallingUid()), this.f7905b);
    }

    /* renamed from: b */
    final /* synthetic */ rz1 m6249b(zzawc zzawcVar, int i, zzcsk zzcskVar) {
        return this.f7907d.m4759b().z6(zzawcVar, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ InputStream m6248c(zzawc zzawcVar) {
        fp fpVar;
        final uv0 uv0Var = this.f7906c;
        synchronized (((wv0) uv0Var).b) {
            try {
                if (((wv0) uv0Var).c) {
                    fpVar = ((wv0) uv0Var).a;
                } else {
                    ((wv0) uv0Var).c = true;
                    ((wv0) uv0Var).e = zzawcVar;
                    ((wv0) uv0Var).f.m8403a();
                    ((wv0) uv0Var).a.e(new Runnable(uv0Var) { // from class: com.google.android.gms.internal.ads.tv0

                        /* renamed from: b */
                        private final uv0 f8733b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8733b = uv0Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8733b.d();
                        }
                    }, C2073zo.f9415f);
                    fpVar = ((wv0) uv0Var).a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (InputStream) fpVar.get(((Integer) C1674c.m7906c().m6878b(C1842m3.f7437j3)).intValue(), TimeUnit.SECONDS);
    }
}
