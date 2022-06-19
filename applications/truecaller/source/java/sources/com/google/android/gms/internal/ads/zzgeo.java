package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgeo.class */
public final class zzgeo implements Comparator<zzgex> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzgex zzgexVar, zzgex zzgexVar2) {
        int i;
        zzgex zzgexVar3 = zzgexVar;
        zzgex zzgexVar4 = zzgexVar2;
        zzger it = zzgexVar3.iterator();
        zzger it2 = zzgexVar4.iterator();
        while (it.hasNext() && it2.hasNext()) {
            i = Integer.compare(it.zza() & 255, it2.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(zzgexVar3.zzc(), zzgexVar4.zzc());
        return i;
    }
}
