package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ez */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ez.class */
final class C3928ez extends AbstractC3926ex {

    /* renamed from: a */
    private static final Class<?> f18140a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public C3928ez() {
        super();
    }

    /* renamed from: a */
    private static <L> List<L> m5582a(Object obj, long j, int i) {
        ArrayList arrayList;
        List m5579c = m5579c(obj, j);
        if (m5579c.isEmpty()) {
            C3924ev c3924ev = m5579c instanceof AbstractC3923eu ? new C3924ev(i) : (!(m5579c instanceof AbstractC3957ga) || !(m5579c instanceof AbstractC3914el)) ? new ArrayList(i) : ((AbstractC3914el) m5579c).mo5476a(i);
            C3984ha.m5290a(obj, j, c3924ev);
            arrayList = c3924ev;
        } else if (f18140a.isAssignableFrom(m5579c.getClass())) {
            ArrayList arrayList2 = new ArrayList(m5579c.size() + i);
            arrayList2.addAll(m5579c);
            C3984ha.m5290a(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (m5579c instanceof C3982gz) {
            C3924ev c3924ev2 = new C3924ev(m5579c.size() + i);
            c3924ev2.addAll((C3982gz) m5579c);
            C3984ha.m5290a(obj, j, c3924ev2);
            arrayList = c3924ev2;
        } else {
            arrayList = m5579c;
            if (m5579c instanceof AbstractC3957ga) {
                arrayList = m5579c;
                if (m5579c instanceof AbstractC3914el) {
                    arrayList = m5579c;
                    if (!((AbstractC3914el) m5579c).mo5588a()) {
                        AbstractC3914el mo5476a = ((AbstractC3914el) m5579c).mo5476a(m5579c.size() + i);
                        C3984ha.m5290a(obj, j, mo5476a);
                        arrayList = mo5476a;
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private static <E> List<E> m5579c(Object obj, long j) {
        return (List) C3984ha.m5267f(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: a */
    public final <L> List<L> mo5583a(Object obj, long j) {
        return m5582a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: a */
    public final <E> void mo5581a(Object obj, Object obj2, long j) {
        List m5579c = m5579c(obj2, j);
        List m5582a = m5582a(obj, j, m5579c.size());
        int size = m5582a.size();
        int size2 = m5579c.size();
        if (size > 0 && size2 > 0) {
            m5582a.addAll(m5579c);
        }
        if (size > 0) {
            m5579c = m5582a;
        }
        C3984ha.m5290a(obj, j, m5579c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: b */
    public final void mo5580b(Object obj, long j) {
        AbstractC3923eu unmodifiableList;
        List list = (List) C3984ha.m5267f(obj, j);
        if (list instanceof AbstractC3923eu) {
            unmodifiableList = ((AbstractC3923eu) list).mo5301c();
        } else if (f18140a.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof AbstractC3957ga) && (list instanceof AbstractC3914el)) {
                if (!((AbstractC3914el) list).mo5588a()) {
                    return;
                }
                ((AbstractC3914el) list).mo5597b();
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        C3984ha.m5290a(obj, j, unmodifiableList);
    }
}
