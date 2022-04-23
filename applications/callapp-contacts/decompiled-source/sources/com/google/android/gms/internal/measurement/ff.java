package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ff.class */
final class ff implements Comparator<fm> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(fm fmVar, fm fmVar2) {
        int i;
        fm fmVar3 = fmVar;
        fm fmVar4 = fmVar2;
        fe feVar = new fe(fmVar3);
        fe feVar2 = new fe(fmVar4);
        while (feVar.hasNext() && feVar2.hasNext()) {
            i = Integer.compare(feVar.a() & 255, feVar2.a() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(fmVar3.a(), fmVar4.a());
        return i;
    }
}
