package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dod.class */
final class dod extends doc {
    /* JADX INFO: Access modifiers changed from: private */
    public dod() {
        super();
    }

    /* renamed from: c */
    private static <E> dnr<E> m16294c(Object obj, long j) {
        return (dnr) dqm.m15966f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: a */
    public final <L> List<L> mo16293a(Object obj, long j) {
        dnr m16294c = m16294c(obj, j);
        dnr dnrVar = m16294c;
        if (!m16294c.mo16298a()) {
            int size = m16294c.size();
            dnrVar = m16294c.mo16200a(size == 0 ? 10 : size << 1);
            dqm.m15987a(obj, j, dnrVar);
        }
        return dnrVar;
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: a */
    public final <E> void mo16291a(Object obj, Object obj2, long j) {
        dnr m16294c = m16294c(obj, j);
        dnr<E> m16294c2 = m16294c(obj2, j);
        int size = m16294c.size();
        int size2 = m16294c2.size();
        dnr<E> dnrVar = m16294c;
        if (size > 0) {
            dnrVar = m16294c;
            if (size2 > 0) {
                dnrVar = m16294c;
                if (!m16294c.mo16298a()) {
                    dnrVar = m16294c.mo16200a(size2 + size);
                }
                dnrVar.addAll(m16294c2);
            }
        }
        dnr<E> dnrVar2 = m16294c2;
        if (size > 0) {
            dnrVar2 = dnrVar;
        }
        dqm.m15987a(obj, j, dnrVar2);
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: b */
    public final void mo16290b(Object obj, long j) {
        m16294c(obj, j).mo16303b();
    }
}
