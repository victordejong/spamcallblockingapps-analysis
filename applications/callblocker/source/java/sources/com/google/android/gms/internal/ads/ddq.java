package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddq.class */
final class ddq extends ddp {
    /* JADX INFO: Access modifiers changed from: private */
    public ddq() {
        super();
    }

    /* renamed from: c */
    private static <E> dde<E> m10026c(Object obj, long j) {
        return (dde) dgb.m9684f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: a */
    public final <L> List<L> mo10025a(Object obj, long j) {
        dde ddeVar;
        dde m10026c = m10026c(obj, j);
        if (!m10026c.mo10030a()) {
            int size = m10026c.size();
            dde mo9923a = m10026c.mo9923a(size == 0 ? 10 : size << 1);
            dgb.m9707a(obj, j, mo9923a);
            ddeVar = mo9923a;
        } else {
            ddeVar = m10026c;
        }
        return ddeVar;
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: a */
    public final <E> void mo10023a(Object obj, Object obj2, long j) {
        dde m10026c = m10026c(obj, j);
        dde<E> m10026c2 = m10026c(obj2, j);
        int size = m10026c.size();
        int size2 = m10026c2.size();
        dde<E> ddeVar = m10026c;
        if (size > 0) {
            ddeVar = m10026c;
            if (size2 > 0) {
                ddeVar = m10026c;
                if (!m10026c.mo10030a()) {
                    ddeVar = m10026c.mo9923a(size2 + size);
                }
                ddeVar.addAll(m10026c2);
            }
        }
        if (size <= 0) {
            ddeVar = m10026c2;
        }
        dgb.m9707a(obj, j, ddeVar);
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: b */
    public final void mo10022b(Object obj, long j) {
        m10026c(obj, j).mo10038b();
    }
}
