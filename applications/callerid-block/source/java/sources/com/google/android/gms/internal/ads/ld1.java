package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ld1.class */
public final class ld1<T> {

    /* renamed from: a */
    private final Set<id1<? extends hd1<T>>> f7095a;

    /* renamed from: b */
    private final Executor f7096b;

    public ld1(Executor executor, Set<id1<? extends hd1<T>>> set) {
        this.f7096b = executor;
        this.f7095a = set;
    }

    /* renamed from: a */
    public final rz1<T> m6703a(T t) {
        ArrayList arrayList = new ArrayList(this.f7095a.size());
        for (id1<? extends hd1<T>> id1Var : this.f7095a) {
            rz1<? extends hd1<T>> zza = id1Var.zza();
            if (C1679c5.f6251a.m6222e().booleanValue()) {
                zza.m5851e(new Runnable(id1Var, C1407r.m8913k().m8245c()) { // from class: com.google.android.gms.internal.ads.jd1

                    /* renamed from: b */
                    private final id1 f6890b;

                    /* renamed from: c */
                    private final long f6891c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6890b = id1Var;
                        this.f6891c = m8245c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        id1 id1Var2 = this.f6890b;
                        long j = this.f6891c;
                        String canonicalName = id1Var2.getClass().getCanonicalName();
                        long m8245c2 = C1407r.m8913k().m8245c();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(m8245c2 - j);
                        y0.k(sb.toString());
                    }
                }, C2073zo.f9415f);
            }
            arrayList.add(zza);
        }
        return kz1.n(arrayList).m6894a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.kd1

            /* renamed from: a */
            private final List f6975a;

            /* renamed from: b */
            private final Object f6976b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6975a = arrayList;
                this.f6976b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<rz1> list = this.f6975a;
                Object obj = this.f6976b;
                for (rz1 rz1Var : list) {
                    hd1 hd1Var = (hd1) rz1Var.get();
                    if (hd1Var != null) {
                        hd1Var.m7295a(obj);
                    }
                }
                return obj;
            }
        }, this.f7096b);
    }
}
