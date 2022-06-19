package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tr1.class */
public final class tr1 {

    /* renamed from: a */
    private final ScheduledExecutorService f30323a;

    /* renamed from: b */
    private final s03 f30324b;

    /* renamed from: c */
    private final ns1 f30325c;

    /* renamed from: d */
    private final vi3<bu1> f30326d;

    public tr1(ScheduledExecutorService scheduledExecutorService, s03 s03Var, ns1 ns1Var, vi3<bu1> vi3Var) {
        this.f30323a = scheduledExecutorService;
        this.f30324b = s03Var;
        this.f30325c = ns1Var;
        this.f30326d = vi3Var;
    }

    /* renamed from: a */
    public final r03<InputStream> m10518a(zzcbj zzcbjVar) {
        vi0<InputStream> vi0Var;
        String str = zzcbjVar.f33829g;
        C5667s.m18160d();
        if (C5679c2.m18071f(str)) {
            vi0Var = k03.m14001c(new zzeap(1));
        } else {
            ns1 ns1Var = this.f30325c;
            synchronized (ns1Var.f26264b) {
                if (ns1Var.f26265c) {
                    vi0Var = ns1Var.f26263a;
                } else {
                    ns1Var.f26265c = true;
                    ns1Var.f26267e = zzcbjVar;
                    ns1Var.f26268f.m17093q();
                    ns1Var.f26263a.mo10015d(new Runnable(ns1Var) { // from class: com.google.android.gms.internal.ads.ms1

                        /* renamed from: d */
                        private final ns1 f26848d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f26848d = ns1Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f26848d.m13420a();
                        }
                    }, qi0.f28500f);
                    vi0Var = ns1Var.f26263a;
                }
            }
        }
        int callingUid = Binder.getCallingUid();
        return k03.m13997g((a03) k03.m13996h(a03.m16718E(vi0Var), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25559P3)).intValue(), TimeUnit.SECONDS, this.f30323a), Throwable.class, new uz2(this, zzcbjVar, callingUid) { // from class: com.google.android.gms.internal.ads.sr1

            /* renamed from: a */
            private final tr1 f29632a;

            /* renamed from: b */
            private final zzcbj f29633b;

            /* renamed from: c */
            private final int f29634c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29632a = this;
                this.f29633b = zzcbjVar;
                this.f29634c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f29632a.m10517b(this.f29633b, this.f29634c, (Throwable) obj);
            }
        }, this.f30324b);
    }

    /* renamed from: b */
    public final /* synthetic */ r03 m10517b(zzcbj zzcbjVar, int i, Throwable th) {
        return this.f30326d.m9997b().m16202H6(zzcbjVar, i);
    }
}
