package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ab2.class */
public final class ab2<T> {

    /* renamed from: a */
    private final Set<wa2<? extends va2<T>>> f19869a;

    /* renamed from: b */
    private final Executor f19870b;

    public ab2(Executor executor, Set<wa2<? extends va2<T>>> set) {
        this.f19870b = executor;
        this.f19869a = set;
    }

    /* renamed from: a */
    public final r03<T> m16652a(T t) {
        ArrayList arrayList = new ArrayList(this.f19869a.size());
        for (wa2<? extends va2<T>> wa2Var : this.f19869a) {
            r03<? extends va2<T>> zza = wa2Var.zza();
            if (C6346by.f21028a.m12799e().booleanValue()) {
                zza.mo10015d(new Runnable(wa2Var, C5667s.m18153k().mo16806b()) { // from class: com.google.android.gms.internal.ads.xa2

                    /* renamed from: d */
                    private final wa2 f31953d;

                    /* renamed from: e */
                    private final long f31954e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f31953d = wa2Var;
                        this.f31954e = mo16806b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        wa2 wa2Var2 = this.f31953d;
                        long j = this.f31954e;
                        String canonicalName = wa2Var2.getClass().getCanonicalName();
                        long mo16806b2 = C5667s.m18153k().mo16806b();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(mo16806b2 - j);
                        C5722o1.m17990k(sb.toString());
                    }
                }, qi0.f28500f);
            }
            arrayList.add(zza);
        }
        return k03.m13989o(arrayList).m14516a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.za2

            /* renamed from: a */
            private final List f32850a;

            /* renamed from: b */
            private final Object f32851b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32850a = arrayList;
                this.f32851b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<r03> list = this.f32850a;
                Object obj = this.f32851b;
                for (r03 r03Var : list) {
                    va2 va2Var = (va2) r03Var.get();
                    if (va2Var != null) {
                        va2Var.mo8928a(obj);
                    }
                }
                return obj;
            }
        }, this.f19870b);
    }
}
