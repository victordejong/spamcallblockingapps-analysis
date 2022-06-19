package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.m6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m6.class */
final class C7463m6 extends AbstractC7477n6 {
    public /* synthetic */ C7463m6(C7435k6 c7435k6) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7477n6
    /* renamed from: a */
    public final void mo7076a(Object obj, long j) {
        ((AbstractC7351e6) C7409i8.m7305s(obj, j)).mo7028b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7477n6
    /* renamed from: b */
    public final <E> void mo7075b(Object obj, Object obj2, long j) {
        AbstractC7351e6 abstractC7351e6 = (AbstractC7351e6) C7409i8.m7305s(obj, j);
        AbstractC7351e6<E> abstractC7351e62 = (AbstractC7351e6) C7409i8.m7305s(obj2, j);
        int size = abstractC7351e6.size();
        int size2 = abstractC7351e62.size();
        AbstractC7351e6<E> abstractC7351e63 = abstractC7351e6;
        if (size > 0) {
            abstractC7351e63 = abstractC7351e6;
            if (size2 > 0) {
                abstractC7351e63 = abstractC7351e6;
                if (!abstractC7351e6.zza()) {
                    abstractC7351e63 = abstractC7351e6.mo6737a(size2 + size);
                }
                abstractC7351e63.addAll(abstractC7351e62);
            }
        }
        if (size <= 0) {
            abstractC7351e63 = abstractC7351e62;
        }
        C7409i8.m7304t(obj, j, abstractC7351e63);
    }
}
