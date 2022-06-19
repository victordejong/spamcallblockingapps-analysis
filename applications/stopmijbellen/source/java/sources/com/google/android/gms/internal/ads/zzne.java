package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzne.class */
public final class zzne {
    public final int zza;
    public final zzpz zzb;
    private final CopyOnWriteArrayList<zznd> zzc;

    public zzne() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzne(CopyOnWriteArrayList<zznd> copyOnWriteArrayList, int i, zzpz zzpzVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzpzVar;
    }

    public final zzne zza(int i, zzpz zzpzVar) {
        return new zzne(this.zzc, i, zzpzVar);
    }

    public final void zzb(Handler handler, zznf zznfVar) {
        this.zzc.add(new zznd(handler, zznfVar));
    }

    public final void zzc(zznf zznfVar) {
        Iterator<zznd> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zznd next = it2.next();
            if (next.zzb == zznfVar) {
                this.zzc.remove(next);
            }
        }
    }
}
