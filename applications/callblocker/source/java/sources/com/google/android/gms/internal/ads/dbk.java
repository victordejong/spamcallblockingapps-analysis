package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbk.class */
final class dbk implements Comparator<dbi> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(dbi dbiVar, dbi dbiVar2) {
        int compare;
        int m10216b;
        int m10216b2;
        dbi dbiVar3 = dbiVar;
        dbi dbiVar4 = dbiVar2;
        dbr dbrVar = (dbr) dbiVar3.iterator();
        dbr dbrVar2 = (dbr) dbiVar4.iterator();
        while (dbrVar.hasNext() && dbrVar2.hasNext()) {
            m10216b = dbi.m10216b(dbrVar.mo9854a());
            m10216b2 = dbi.m10216b(dbrVar2.mo9854a());
            compare = Integer.compare(m10216b, m10216b2);
            if (compare != 0) {
                break;
            }
        }
        compare = Integer.compare(dbiVar3.mo9911b(), dbiVar4.mo9911b());
        return compare;
    }
}
