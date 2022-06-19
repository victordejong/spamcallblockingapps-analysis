package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ey */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ey.class */
final class C3927ey extends AbstractC3926ex {
    /* JADX INFO: Access modifiers changed from: private */
    public C3927ey() {
        super();
    }

    /* renamed from: c */
    private static <E> AbstractC3914el<E> m5584c(Object obj, long j) {
        return (AbstractC3914el) C3984ha.m5267f(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: a */
    public final <L> List<L> mo5583a(Object obj, long j) {
        AbstractC3914el abstractC3914el;
        AbstractC3914el m5584c = m5584c(obj, j);
        if (!m5584c.mo5588a()) {
            int size = m5584c.size();
            AbstractC3914el mo5476a = m5584c.mo5476a(size == 0 ? 10 : size << 1);
            C3984ha.m5290a(obj, j, mo5476a);
            abstractC3914el = mo5476a;
        } else {
            abstractC3914el = m5584c;
        }
        return abstractC3914el;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: a */
    public final <E> void mo5581a(Object obj, Object obj2, long j) {
        AbstractC3914el m5584c = m5584c(obj, j);
        AbstractC3914el<E> m5584c2 = m5584c(obj2, j);
        int size = m5584c.size();
        int size2 = m5584c2.size();
        AbstractC3914el<E> abstractC3914el = m5584c;
        if (size > 0) {
            abstractC3914el = m5584c;
            if (size2 > 0) {
                abstractC3914el = m5584c;
                if (!m5584c.mo5588a()) {
                    abstractC3914el = m5584c.mo5476a(size2 + size);
                }
                abstractC3914el.addAll(m5584c2);
            }
        }
        if (size <= 0) {
            abstractC3914el = m5584c2;
        }
        C3984ha.m5290a(obj, j, abstractC3914el);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3926ex
    /* renamed from: b */
    public final void mo5580b(Object obj, long j) {
        m5584c(obj, j).mo5597b();
    }
}
