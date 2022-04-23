package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziw.class */
final class zziw extends zzir {
    private zziw() {
        super();
    }

    /* renamed from: f */
    private static <E> zzii<E> m12357f(Object obj, long j) {
        return (zzii) zzkx.m12094F(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: b */
    final <L> List<L> mo12360b(Object obj, long j) {
        zzii f = m12357f(obj, j);
        zzii zziiVar = f;
        if (!f.zza()) {
            int size = f.size();
            zziiVar = f.mo12266a(size == 0 ? 10 : size << 1);
            zzkx.m12075j(obj, j, zziiVar);
        }
        return zziiVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: c */
    final <E> void mo12359c(Object obj, Object obj2, long j) {
        zzii f = m12357f(obj, j);
        zzii f2 = m12357f(obj2, j);
        int size = f.size();
        int size2 = f2.size();
        zzii zziiVar = f;
        if (size > 0) {
            zziiVar = f;
            if (size2 > 0) {
                zzii<E> zziiVar2 = f;
                if (!f.zza()) {
                    zziiVar2 = f.mo12266a(size2 + size);
                }
                zziiVar2.addAll(f2);
                zziiVar = zziiVar2;
            }
        }
        zziiVar = f2;
        if (size > 0) {
        }
        zzkx.m12075j(obj, j, zziiVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: e */
    final void mo12358e(Object obj, long j) {
        m12357f(obj, j).zzb();
    }
}
