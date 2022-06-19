package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hc.class */
final class C13544hc extends AbstractC13545hd {
    private C13544hc() {
        super(null);
    }

    public /* synthetic */ C13544hc(C13542ha c13542ha) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13545hd
    /* renamed from: a */
    public final void mo12733a(Object obj, long j) {
        ((AbstractC13533gs) C13592ix.m12512f(obj, j)).mo12749b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13545hd
    /* renamed from: a */
    public final <E> void mo12732a(Object obj, Object obj2, long j) {
        AbstractC13533gs abstractC13533gs = (AbstractC13533gs) C13592ix.m12512f(obj, j);
        AbstractC13533gs<E> abstractC13533gs2 = (AbstractC13533gs) C13592ix.m12512f(obj2, j);
        int size = abstractC13533gs.size();
        int size2 = abstractC13533gs2.size();
        AbstractC13533gs<E> abstractC13533gs3 = abstractC13533gs;
        if (size > 0) {
            abstractC13533gs3 = abstractC13533gs;
            if (size2 > 0) {
                abstractC13533gs3 = abstractC13533gs;
                if (!abstractC13533gs.mo12750a()) {
                    abstractC13533gs3 = abstractC13533gs.mo12663a(size2 + size);
                }
                abstractC13533gs3.addAll(abstractC13533gs2);
            }
        }
        if (size <= 0) {
            abstractC13533gs3 = abstractC13533gs2;
        }
        C13592ix.m12531a(obj, j, abstractC13533gs3);
    }
}
