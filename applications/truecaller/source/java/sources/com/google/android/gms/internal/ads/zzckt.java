package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckt.class */
public final class zzckt implements Iterable<zzcks> {
    private final List<zzcks> zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator<zzcks> iterator() {
        return this.zza.iterator();
    }

    public final boolean zza(zzcjb zzcjbVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<zzcks> it = iterator();
        while (it.hasNext()) {
            zzcks next = it.next();
            if (next.zza == zzcjbVar) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((zzcks) it2.next()).zzb.zzm();
        }
        return true;
    }

    public final zzcks zzb(zzcjb zzcjbVar) {
        Iterator<zzcks> it = iterator();
        while (it.hasNext()) {
            zzcks next = it.next();
            if (next.zza == zzcjbVar) {
                return next;
            }
        }
        return null;
    }

    public final void zzc(zzcks zzcksVar) {
        this.zza.add(zzcksVar);
    }

    public final void zzd(zzcks zzcksVar) {
        this.zza.remove(zzcksVar);
    }
}
