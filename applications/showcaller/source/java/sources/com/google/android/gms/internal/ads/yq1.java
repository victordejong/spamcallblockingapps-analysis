package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yq1.class */
public final class yq1 {

    /* renamed from: a */
    private final s03 f32593a;

    /* renamed from: b */
    private final s03 f32594b;

    /* renamed from: c */
    private final hs1 f32595c;

    /* renamed from: d */
    private final vi3<bu1> f32596d;

    public yq1(s03 s03Var, s03 s03Var2, hs1 hs1Var, vi3<bu1> vi3Var) {
        this.f32593a = s03Var;
        this.f32594b = s03Var2;
        this.f32595c = hs1Var;
        this.f32596d = vi3Var;
    }

    /* renamed from: a */
    public final r03<InputStream> m8736a(zzcbj zzcbjVar) {
        String str = zzcbjVar.f33829g;
        C5667s.m18160d();
        return k03.m13997g(C5679c2.m18071f(str) ? k03.m14001c(new zzeap(1)) : k03.m13997g(this.f32593a.mo11185a(new Callable(this, zzcbjVar) { // from class: com.google.android.gms.internal.ads.vq1

            /* renamed from: a */
            private final yq1 f31315a;

            /* renamed from: b */
            private final zzcbj f31316b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31315a = this;
                this.f31316b = zzcbjVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f31315a.m8734c(this.f31316b);
            }
        }), ExecutionException.class, wq1.f31762a, this.f32594b), zzeap.class, new uz2(this, zzcbjVar, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.xq1

            /* renamed from: a */
            private final yq1 f32260a;

            /* renamed from: b */
            private final zzcbj f32261b;

            /* renamed from: c */
            private final int f32262c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32260a = this;
                this.f32261b = zzcbjVar;
                this.f32262c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f32260a.m8735b(this.f32261b, this.f32262c, (zzeap) obj);
            }
        }, this.f32594b);
    }

    /* renamed from: b */
    public final /* synthetic */ r03 m8735b(zzcbj zzcbjVar, int i, zzeap zzeapVar) {
        return this.f32596d.m9997b().m16205E6(zzcbjVar, i);
    }

    /* renamed from: c */
    public final /* synthetic */ InputStream m8734c(zzcbj zzcbjVar) {
        vi0<InputStream> vi0Var;
        hs1 hs1Var = this.f32595c;
        synchronized (hs1Var.f26264b) {
            if (hs1Var.f26265c) {
                vi0Var = hs1Var.f26263a;
            } else {
                hs1Var.f26265c = true;
                hs1Var.f26267e = zzcbjVar;
                hs1Var.f26268f.m17093q();
                hs1Var.f26263a.mo10015d(new Runnable(hs1Var) { // from class: com.google.android.gms.internal.ads.gs1

                    /* renamed from: d */
                    private final hs1 f23666d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23666d = hs1Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23666d.m13420a();
                    }
                }, qi0.f28500f);
                vi0Var = hs1Var.f26263a;
            }
        }
        return (InputStream) vi0Var.get(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25559P3)).intValue(), TimeUnit.SECONDS);
    }
}
