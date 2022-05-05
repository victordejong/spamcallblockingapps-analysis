package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzit.class */
final class zzit extends zzir {

    /* renamed from: c */
    private static final Class<?> f8543c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzit() {
        super();
    }

    /* renamed from: f */
    private static <L> List<L> m12368f(Object obj, long j, int i) {
        zzip zzipVar;
        List<L> g = m12367g(obj, j);
        if (g.isEmpty()) {
            zzipVar = g instanceof zzis ? new zzip(i) : (!(g instanceof zzjt) || !(g instanceof zzii)) ? new ArrayList(i) : ((zzii) g).mo12266a(i);
            zzkx.m12075j(obj, j, zzipVar);
        } else if (f8543c.isAssignableFrom(g.getClass())) {
            ArrayList arrayList = new ArrayList(g.size() + i);
            arrayList.addAll(g);
            zzkx.m12075j(obj, j, arrayList);
            zzipVar = arrayList;
        } else if (g instanceof zzkw) {
            zzip zzipVar2 = new zzip(g.size() + i);
            zzipVar2.addAll((zzkw) g);
            zzkx.m12075j(obj, j, zzipVar2);
            zzipVar = zzipVar2;
        } else {
            zzipVar = g;
            if (g instanceof zzjt) {
                zzipVar = g;
                if (g instanceof zzii) {
                    zzii zziiVar = (zzii) g;
                    zzipVar = g;
                    if (!zziiVar.zza()) {
                        zzipVar = zziiVar.mo12266a(g.size() + i);
                        zzkx.m12075j(obj, j, zzipVar);
                    }
                }
            }
        }
        return zzipVar;
    }

    /* renamed from: g */
    private static <E> List<E> m12367g(Object obj, long j) {
        return (List) zzkx.m12094F(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: b */
    final <L> List<L> mo12360b(Object obj, long j) {
        return m12368f(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: c */
    final <E> void mo12359c(Object obj, Object obj2, long j) {
        List g = m12367g(obj2, j);
        List f = m12368f(obj, j, g.size());
        int size = f.size();
        int size2 = g.size();
        if (size > 0 && size2 > 0) {
            f.addAll(g);
        }
        if (size > 0) {
            g = f;
        }
        zzkx.m12075j(obj, j, g);
    }

    @Override // com.google.android.gms.internal.measurement.zzir
    /* renamed from: e */
    final void mo12358e(Object obj, long j) {
        Object obj2;
        List list = (List) zzkx.m12094F(obj, j);
        if (list instanceof zzis) {
            obj2 = ((zzis) list).zze();
        } else if (!f8543c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzjt) || !(list instanceof zzii)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzii zziiVar = (zzii) list;
                if (zziiVar.zza()) {
                    zziiVar.zzb();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzkx.m12075j(obj, j, obj2);
    }
}
