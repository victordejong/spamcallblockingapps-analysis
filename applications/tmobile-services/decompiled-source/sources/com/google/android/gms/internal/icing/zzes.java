package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzes.class */
final class zzes extends zzer {
    private zzes() {
        super();
    }

    /* renamed from: e */
    private static <E> zzee<E> m13783e(Object obj, long j) {
        return (zzee) zzgs.m13588G(obj, j);
    }

    @Override // com.google.android.gms.internal.icing.zzer
    /* renamed from: a */
    final void mo13782a(Object obj, long j) {
        m13783e(obj, j).mo13794q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // com.google.android.gms.internal.icing.zzer
    /* renamed from: b */
    final <E> void mo13781b(Object obj, Object obj2, long j) {
        zzee e = m13783e(obj, j);
        zzee e2 = m13783e(obj2, j);
        int size = e.size();
        int size2 = e2.size();
        zzee zzeeVar = e;
        if (size > 0) {
            zzeeVar = e;
            if (size2 > 0) {
                zzee<E> zzeeVar2 = e;
                if (!e.mo13795l()) {
                    zzeeVar2 = e.mo13713b0(size2 + size);
                }
                zzeeVar2.addAll(e2);
                zzeeVar = zzeeVar2;
            }
        }
        zzeeVar = e2;
        if (size > 0) {
        }
        zzgs.m13573g(obj, j, zzeeVar);
    }
}
