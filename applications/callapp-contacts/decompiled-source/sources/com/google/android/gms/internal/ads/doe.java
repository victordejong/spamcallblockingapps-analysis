package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doe.class */
final class doe extends doc {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f27024a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private doe() {
        super();
    }

    private static <L> List<L> a(Object obj, long j, int i) {
        doa doaVar;
        List<L> c2 = c(obj, j);
        if (c2.isEmpty()) {
            doaVar = c2 instanceof dnz ? new doa(i) : (!(c2 instanceof dpf) || !(c2 instanceof dnr)) ? new ArrayList(i) : ((dnr) c2).a(i);
            dqm.a(obj, j, doaVar);
        } else if (f27024a.isAssignableFrom(c2.getClass())) {
            ArrayList arrayList = new ArrayList(c2.size() + i);
            arrayList.addAll(c2);
            dqm.a(obj, j, arrayList);
            doaVar = arrayList;
        } else if (c2 instanceof dql) {
            doa doaVar2 = new doa(c2.size() + i);
            doaVar2.addAll((dql) c2);
            dqm.a(obj, j, doaVar2);
            doaVar = doaVar2;
        } else {
            doaVar = c2;
            if (c2 instanceof dpf) {
                doaVar = c2;
                if (c2 instanceof dnr) {
                    dnr dnrVar = (dnr) c2;
                    doaVar = c2;
                    if (!dnrVar.a()) {
                        doaVar = dnrVar.a(c2.size() + i);
                        dqm.a(obj, j, doaVar);
                    }
                }
            }
        }
        return doaVar;
    }

    private static <E> List<E> c(Object obj, long j) {
        return (List) dqm.f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.doc
    final <L> List<L> a(Object obj, long j) {
        return a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.doc
    final <E> void a(Object obj, Object obj2, long j) {
        List c2 = c(obj2, j);
        List a2 = a(obj, j, c2.size());
        int size = a2.size();
        int size2 = c2.size();
        if (size > 0 && size2 > 0) {
            a2.addAll(c2);
        }
        if (size > 0) {
            c2 = a2;
        }
        dqm.a(obj, j, c2);
    }

    @Override // com.google.android.gms.internal.ads.doc
    final void b(Object obj, long j) {
        Object obj2;
        List list = (List) dqm.f(obj, j);
        if (list instanceof dnz) {
            obj2 = ((dnz) list).J_();
        } else if (!f27024a.isAssignableFrom(list.getClass())) {
            if (!(list instanceof dpf) || !(list instanceof dnr)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                dnr dnrVar = (dnr) list;
                if (dnrVar.a()) {
                    dnrVar.b();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        dqm.a(obj, j, obj2);
    }
}
