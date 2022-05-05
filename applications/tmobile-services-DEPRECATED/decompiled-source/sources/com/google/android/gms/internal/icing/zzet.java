package com.google.android.gms.internal.icing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzet.class */
final class zzet extends zzer {

    /* renamed from: c */
    private static final Class<?> f8023c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzet() {
        super();
    }

    /* renamed from: e */
    private static <E> List<E> m13780e(Object obj, long j) {
        return (List) zzgs.m13588G(obj, j);
    }

    @Override // com.google.android.gms.internal.icing.zzer
    /* renamed from: a */
    final void mo13782a(Object obj, long j) {
        Object obj2;
        List list = (List) zzgs.m13588G(obj, j);
        if (list instanceof zzeo) {
            obj2 = ((zzeo) list).mo13595o();
        } else if (!f8023c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzfq) || !(list instanceof zzee)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzee zzeeVar = (zzee) list;
                if (zzeeVar.mo13795l()) {
                    zzeeVar.mo13794q();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzgs.m13573g(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v18 */
    @Override // com.google.android.gms.internal.icing.zzer
    /* renamed from: b */
    final <E> void mo13781b(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List e = m13780e(obj2, j);
        int size = e.size();
        List e2 = m13780e(obj, j);
        if (e2.isEmpty()) {
            zzep zzepVar = e2 instanceof zzeo ? new zzep(size) : (!(e2 instanceof zzfq) || !(e2 instanceof zzee)) ? new ArrayList(size) : ((zzee) e2).mo13713b0(size);
            zzgs.m13573g(obj, j, zzepVar);
            arrayList = zzepVar;
        } else if (f8023c.isAssignableFrom(e2.getClass())) {
            ArrayList arrayList2 = new ArrayList(e2.size() + size);
            arrayList2.addAll(e2);
            zzgs.m13573g(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (e2 instanceof zzgr) {
            zzep zzepVar2 = new zzep(e2.size() + size);
            zzepVar2.addAll((zzgr) e2);
            zzgs.m13573g(obj, j, zzepVar2);
            arrayList = zzepVar2;
        } else {
            arrayList = e2;
            if (e2 instanceof zzfq) {
                arrayList = e2;
                if (e2 instanceof zzee) {
                    zzee zzeeVar = (zzee) e2;
                    arrayList = e2;
                    if (!zzeeVar.mo13795l()) {
                        zzee<E> b0 = zzeeVar.mo13713b0(e2.size() + size);
                        zzgs.m13573g(obj, j, b0);
                        arrayList = b0;
                    }
                }
            }
        }
        int size2 = arrayList.size();
        int size3 = e.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(e);
        }
        if (size2 > 0) {
            e = arrayList;
        }
        zzgs.m13573g(obj, j, e);
    }
}
