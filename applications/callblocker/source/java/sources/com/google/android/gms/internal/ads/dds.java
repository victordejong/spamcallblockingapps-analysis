package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dds.class */
final class dds extends ddp {

    /* renamed from: a */
    private static final Class<?> f14124a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public dds() {
        super();
    }

    /* renamed from: a */
    private static <L> List<L> m10024a(Object obj, long j, int i) {
        ArrayList arrayList;
        List m10021c = m10021c(obj, j);
        if (m10021c.isEmpty()) {
            ddn ddnVar = m10021c instanceof ddm ? new ddn(i) : (!(m10021c instanceof det) || !(m10021c instanceof dde)) ? new ArrayList(i) : ((dde) m10021c).mo9923a(i);
            dgb.m9707a(obj, j, ddnVar);
            arrayList = ddnVar;
        } else if (f14124a.isAssignableFrom(m10021c.getClass())) {
            ArrayList arrayList2 = new ArrayList(m10021c.size() + i);
            arrayList2.addAll(m10021c);
            dgb.m9707a(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (m10021c instanceof dfw) {
            ddn ddnVar2 = new ddn(m10021c.size() + i);
            ddnVar2.addAll((dfw) m10021c);
            dgb.m9707a(obj, j, ddnVar2);
            arrayList = ddnVar2;
        } else {
            arrayList = m10021c;
            if (m10021c instanceof det) {
                arrayList = m10021c;
                if (m10021c instanceof dde) {
                    arrayList = m10021c;
                    if (!((dde) m10021c).mo10030a()) {
                        dde mo9923a = ((dde) m10021c).mo9923a(m10021c.size() + i);
                        dgb.m9707a(obj, j, mo9923a);
                        arrayList = mo9923a;
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private static <E> List<E> m10021c(Object obj, long j) {
        return (List) dgb.m9684f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: a */
    public final <L> List<L> mo10025a(Object obj, long j) {
        return m10024a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: a */
    public final <E> void mo10023a(Object obj, Object obj2, long j) {
        List m10021c = m10021c(obj2, j);
        List m10024a = m10024a(obj, j, m10021c.size());
        int size = m10024a.size();
        int size2 = m10021c.size();
        if (size > 0 && size2 > 0) {
            m10024a.addAll(m10021c);
        }
        if (size <= 0) {
            m10024a = m10021c;
        }
        dgb.m9707a(obj, j, m10024a);
    }

    @Override // com.google.android.gms.internal.ads.ddp
    /* renamed from: b */
    public final void mo10022b(Object obj, long j) {
        ddm unmodifiableList;
        List list = (List) dgb.m9684f(obj, j);
        if (list instanceof ddm) {
            unmodifiableList = ((ddm) list).mo9736m_();
        } else if (f14124a.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof det) && (list instanceof dde)) {
                if (!((dde) list).mo10030a()) {
                    return;
                }
                ((dde) list).mo10038b();
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        dgb.m9707a(obj, j, unmodifiableList);
    }
}
