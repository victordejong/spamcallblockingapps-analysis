package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hc.class */
final class hc extends hd {
    private hc() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ hc(ha haVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.hd
    final void a(Object obj, long j) {
        ((gs) ix.f(obj, j)).b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.google.android.gms.internal.measurement.gs] */
    @Override // com.google.android.gms.internal.measurement.hd
    final <E> void a(Object obj, Object obj2, long j) {
        gs gsVar = (gs) ix.f(obj, j);
        gs gsVar2 = (gs) ix.f(obj2, j);
        int size = gsVar.size();
        int size2 = gsVar2.size();
        gs gsVar3 = gsVar;
        if (size > 0) {
            gsVar3 = gsVar;
            if (size2 > 0) {
                gs<E> gsVar4 = gsVar;
                if (!gsVar.a()) {
                    gsVar4 = gsVar.a(size2 + size);
                }
                gsVar4.addAll(gsVar2);
                gsVar3 = gsVar4;
            }
        }
        if (size <= 0) {
            gsVar3 = gsVar2;
        }
        ix.a(obj, j, gsVar3);
    }
}
