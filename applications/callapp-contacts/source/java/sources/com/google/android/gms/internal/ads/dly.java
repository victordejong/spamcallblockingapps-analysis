package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dly.class */
final class dly implements Comparator<dlw> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(dlw dlwVar, dlw dlwVar2) {
        dlw dlwVar3 = dlwVar;
        dlw dlwVar4 = dlwVar2;
        dmb dmbVar = (dmb) dlwVar3.iterator();
        dmb dmbVar2 = (dmb) dlwVar4.iterator();
        while (dmbVar.hasNext() && dmbVar2.hasNext()) {
            int compare = Integer.compare(dlw.m16480a(dmbVar.mo16148a()), dlw.m16480a(dmbVar2.mo16148a()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(dlwVar3.mo16138b(), dlwVar4.mo16138b());
    }
}
