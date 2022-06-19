package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmy.class */
public final class zzcmy implements Iterable<zzcmx> {
    private final List<zzcmx> zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator<zzcmx> iterator() {
        return this.zza.iterator();
    }

    public final zzcmx zza(zzclh zzclhVar) {
        Iterator<zzcmx> it2 = iterator();
        while (it2.hasNext()) {
            zzcmx next = it2.next();
            if (next.zza == zzclhVar) {
                return next;
            }
        }
        return null;
    }

    public final void zzb(zzcmx zzcmxVar) {
        this.zza.add(zzcmxVar);
    }

    public final void zzc(zzcmx zzcmxVar) {
        this.zza.remove(zzcmxVar);
    }

    public final boolean zzd(zzclh zzclhVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<zzcmx> it2 = iterator();
        while (it2.hasNext()) {
            zzcmx next = it2.next();
            if (next.zza == zzclhVar) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((zzcmx) it3.next()).zzb.zzb();
        }
        return true;
    }
}
