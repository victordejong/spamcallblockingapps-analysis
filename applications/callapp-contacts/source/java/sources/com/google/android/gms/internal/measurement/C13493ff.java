package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* renamed from: com.google.android.gms.internal.measurement.ff */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ff.class */
final class C13493ff implements Comparator<AbstractC13500fm> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC13500fm abstractC13500fm, AbstractC13500fm abstractC13500fm2) {
        int i;
        AbstractC13500fm abstractC13500fm3 = abstractC13500fm;
        AbstractC13500fm abstractC13500fm4 = abstractC13500fm2;
        C13492fe c13492fe = new C13492fe(abstractC13500fm3);
        C13492fe c13492fe2 = new C13492fe(abstractC13500fm4);
        while (c13492fe.hasNext() && c13492fe2.hasNext()) {
            i = Integer.compare(c13492fe.mo12867a() & 255, c13492fe2.mo12867a() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(abstractC13500fm3.mo12866a(), abstractC13500fm4.mo12866a());
        return i;
    }
}
