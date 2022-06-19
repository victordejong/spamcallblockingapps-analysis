package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfa.class */
public final class zzfa {
    public final int zza;
    public final zzhf zzb;
    private final CopyOnWriteArrayList<zzez> zzc;

    public zzfa() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzfa(CopyOnWriteArrayList<zzez> copyOnWriteArrayList, int i, zzhf zzhfVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzhfVar;
    }

    public final zzfa zza(int i, zzhf zzhfVar) {
        return new zzfa(this.zzc, i, zzhfVar);
    }

    public final void zzb(Handler handler, zzfb zzfbVar) {
        this.zzc.add(new zzez(handler, zzfbVar));
    }

    public final void zzc(zzfb zzfbVar) {
        Iterator<zzez> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzez next = it.next();
            if (next.zzb == zzfbVar) {
                this.zzc.remove(next);
            }
        }
    }
}
