package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dod.class */
final class dod extends doc {
    private dod() {
        super();
    }

    private static <E> dnr<E> c(Object obj, long j) {
        return (dnr) dqm.f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.doc
    final <L> List<L> a(Object obj, long j) {
        dnr c2 = c(obj, j);
        dnr dnrVar = c2;
        if (!c2.a()) {
            int size = c2.size();
            dnrVar = c2.a(size == 0 ? 10 : size << 1);
            dqm.a(obj, j, dnrVar);
        }
        return dnrVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.gms.internal.ads.dnr] */
    @Override // com.google.android.gms.internal.ads.doc
    final <E> void a(Object obj, Object obj2, long j) {
        dnr c2 = c(obj, j);
        dnr c3 = c(obj2, j);
        int size = c2.size();
        int size2 = c3.size();
        dnr dnrVar = c2;
        if (size > 0) {
            dnrVar = c2;
            if (size2 > 0) {
                dnr<E> dnrVar2 = c2;
                if (!c2.a()) {
                    dnrVar2 = c2.a(size2 + size);
                }
                dnrVar2.addAll(c3);
                dnrVar = dnrVar2;
            }
        }
        dnrVar = c3;
        if (size > 0) {
        }
        dqm.a(obj, j, dnrVar);
    }

    @Override // com.google.android.gms.internal.ads.doc
    final void b(Object obj, long j) {
        c(obj, j).b();
    }
}
