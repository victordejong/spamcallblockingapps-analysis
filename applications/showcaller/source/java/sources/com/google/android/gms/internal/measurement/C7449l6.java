package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.l6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l6.class */
final class C7449l6 extends AbstractC7477n6 {

    /* renamed from: c */
    private static final Class<?> f34583c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ C7449l6(C7435k6 c7435k6) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7477n6
    /* renamed from: a */
    public final void mo7076a(Object obj, long j) {
        AbstractC7421j6 abstractC7421j6;
        List list = (List) C7409i8.m7305s(obj, j);
        if (list instanceof AbstractC7421j6) {
            abstractC7421j6 = ((AbstractC7421j6) list).zzi();
        } else if (f34583c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof AbstractC7380g7) && (list instanceof AbstractC7351e6)) {
                AbstractC7351e6 abstractC7351e6 = (AbstractC7351e6) list;
                if (!abstractC7351e6.zza()) {
                    return;
                }
                abstractC7351e6.mo7028b();
                return;
            }
            abstractC7421j6 = Collections.unmodifiableList(list);
        }
        C7409i8.m7304t(obj, j, abstractC7421j6);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7477n6
    /* renamed from: b */
    public final <E> void mo7075b(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) C7409i8.m7305s(obj2, j);
        int size = list.size();
        List list2 = (List) C7409i8.m7305s(obj, j);
        if (list2.isEmpty()) {
            C7407i6 c7407i6 = list2 instanceof AbstractC7421j6 ? new C7407i6(size) : (!(list2 instanceof AbstractC7380g7) || !(list2 instanceof AbstractC7351e6)) ? new ArrayList(size) : ((AbstractC7351e6) list2).mo6737a(size);
            C7409i8.m7304t(obj, j, c7407i6);
            arrayList = c7407i6;
        } else if (f34583c.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList2 = new ArrayList(list2.size() + size);
            arrayList2.addAll(list2);
            C7409i8.m7304t(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (list2 instanceof C7339d8) {
            C7407i6 c7407i62 = new C7407i6(list2.size() + size);
            c7407i62.addAll(c7407i62.size(), (C7339d8) list2);
            C7409i8.m7304t(obj, j, c7407i62);
            arrayList = c7407i62;
        } else {
            arrayList = list2;
            if (list2 instanceof AbstractC7380g7) {
                arrayList = list2;
                if (list2 instanceof AbstractC7351e6) {
                    AbstractC7351e6 abstractC7351e6 = (AbstractC7351e6) list2;
                    arrayList = list2;
                    if (!abstractC7351e6.zza()) {
                        AbstractC7351e6<E> mo6737a = abstractC7351e6.mo6737a(list2.size() + size);
                        C7409i8.m7304t(obj, j, mo6737a);
                        arrayList = mo6737a;
                    }
                }
            }
        }
        int size2 = (arrayList == 1 ? 1 : 0).size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(list);
        }
        List list3 = arrayList;
        if (size2 <= 0) {
            list3 = list;
        }
        C7409i8.m7304t(obj, j, list3);
    }
}
