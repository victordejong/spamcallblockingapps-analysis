package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* renamed from: com.google.android.gms.internal.measurement.cw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cw.class */
final class C3862cw implements Comparator<AbstractC3859ct> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC3859ct abstractC3859ct, AbstractC3859ct abstractC3859ct2) {
        int compare;
        int m5808b;
        int m5808b2;
        AbstractC3859ct abstractC3859ct3 = abstractC3859ct;
        AbstractC3859ct abstractC3859ct4 = abstractC3859ct2;
        AbstractC3872dd abstractC3872dd = (AbstractC3872dd) abstractC3859ct3.iterator();
        AbstractC3872dd abstractC3872dd2 = (AbstractC3872dd) abstractC3859ct4.iterator();
        while (abstractC3872dd.hasNext() && abstractC3872dd2.hasNext()) {
            m5808b = AbstractC3859ct.m5808b(abstractC3872dd.mo5754a());
            m5808b2 = AbstractC3859ct.m5808b(abstractC3872dd2.mo5754a());
            compare = Integer.compare(m5808b, m5808b2);
            if (compare != 0) {
                break;
            }
        }
        compare = Integer.compare(abstractC3859ct3.mo5753a(), abstractC3859ct4.mo5753a());
        return compare;
    }
}
