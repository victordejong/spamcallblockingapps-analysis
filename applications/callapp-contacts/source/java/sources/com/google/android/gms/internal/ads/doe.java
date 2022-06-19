package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doe.class */
final class doe extends doc {

    /* renamed from: a */
    private static final Class<?> f47310a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public doe() {
        super();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <L> List<L> m16292a(Object obj, long j, int i) {
        doa doaVar;
        doa doaVar2;
        List<L> m16289c = m16289c(obj, j);
        if (m16289c.isEmpty()) {
            doa doaVar3 = m16289c instanceof dnz ? new doa(i) : (!(m16289c instanceof dpf) || !(m16289c instanceof dnr)) ? new ArrayList(i) : ((dnr) m16289c).mo16200a(i);
            dqm.m15987a(obj, j, doaVar3);
            doaVar = doaVar3;
        } else {
            if (f47310a.isAssignableFrom(m16289c.getClass())) {
                ArrayList arrayList = new ArrayList(m16289c.size() + i);
                arrayList.addAll(m16289c);
                dqm.m15987a(obj, j, arrayList);
                doaVar2 = arrayList;
            } else if (m16289c instanceof dql) {
                doa doaVar4 = new doa(m16289c.size() + i);
                doaVar4.addAll((dql) m16289c);
                dqm.m15987a(obj, j, doaVar4);
                doaVar2 = doaVar4;
            } else {
                doaVar = m16289c;
                if (m16289c instanceof dpf) {
                    doaVar = m16289c;
                    if (m16289c instanceof dnr) {
                        dnr dnrVar = (dnr) m16289c;
                        doaVar = m16289c;
                        if (!dnrVar.mo16298a()) {
                            dnr mo16200a = dnrVar.mo16200a(m16289c.size() + i);
                            dqm.m15987a(obj, j, mo16200a);
                            doaVar = mo16200a;
                        }
                    }
                }
            }
            doaVar = doaVar2;
        }
        return doaVar;
    }

    /* renamed from: c */
    private static <E> List<E> m16289c(Object obj, long j) {
        return (List) dqm.m15966f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: a */
    public final <L> List<L> mo16293a(Object obj, long j) {
        return m16292a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: a */
    public final <E> void mo16291a(Object obj, Object obj2, long j) {
        List m16289c = m16289c(obj2, j);
        List m16292a = m16292a(obj, j, m16289c.size());
        int size = m16292a.size();
        int size2 = m16289c.size();
        if (size > 0 && size2 > 0) {
            m16292a.addAll(m16289c);
        }
        if (size > 0) {
            m16289c = m16292a;
        }
        dqm.m15987a(obj, j, m16289c);
    }

    @Override // com.google.android.gms.internal.ads.doc
    /* renamed from: b */
    public final void mo16290b(Object obj, long j) {
        dnz dnzVar;
        List list = (List) dqm.m15966f(obj, j);
        if (list instanceof dnz) {
            dnzVar = ((dnz) list).mo16000J_();
        } else if (f47310a.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof dpf) && (list instanceof dnr)) {
                dnr dnrVar = (dnr) list;
                if (!dnrVar.mo16298a()) {
                    return;
                }
                dnrVar.mo16303b();
                return;
            }
            dnzVar = Collections.unmodifiableList(list);
        }
        dqm.m15987a(obj, j, dnzVar);
    }
}
