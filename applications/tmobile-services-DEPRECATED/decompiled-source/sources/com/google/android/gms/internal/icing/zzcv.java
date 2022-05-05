package com.google.android.gms.internal.icing;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcv.class */
final class zzcv implements Comparator<zzct> {
    zzcv() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzct zzctVar, zzct zzctVar2) {
        int c;
        int c2;
        zzct zzctVar3 = zzctVar;
        zzct zzctVar4 = zzctVar2;
        zzdc zzdcVar = (zzdc) zzctVar3.iterator();
        zzdc zzdcVar2 = (zzdc) zzctVar4.iterator();
        while (zzdcVar.hasNext() && zzdcVar2.hasNext()) {
            c = zzct.m13979c(zzdcVar.nextByte());
            c2 = zzct.m13979c(zzdcVar2.nextByte());
            int compare = Integer.compare(c, c2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzctVar3.size(), zzctVar4.size());
    }
}
