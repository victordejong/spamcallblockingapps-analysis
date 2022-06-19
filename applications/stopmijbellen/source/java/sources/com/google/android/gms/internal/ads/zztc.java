package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztc.class */
public final class zztc {
    private final CopyOnWriteArrayList<zztb> zza = new CopyOnWriteArrayList<>();

    public final void zza(Handler handler, zztd zztdVar) {
        zzc(zztdVar);
        this.zza.add(new zztb(handler, zztdVar));
    }

    public final void zzb(final int i, final long j, final long j2) {
        boolean z;
        Handler handler;
        Iterator<zztb> it2 = this.zza.iterator();
        while (it2.hasNext()) {
            final zztb next = it2.next();
            z = next.zzc;
            if (!z) {
                handler = next.zza;
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzta
                    @Override // java.lang.Runnable
                    public final void run() {
                        zztd zztdVar;
                        zztb zztbVar = zztb.this;
                        int i2 = i;
                        long j3 = j;
                        long j4 = j2;
                        zztdVar = zztbVar.zzb;
                        zztdVar.zzS(i2, j3, j4);
                    }
                });
            }
        }
    }

    public final void zzc(zztd zztdVar) {
        zztd zztdVar2;
        Iterator<zztb> it2 = this.zza.iterator();
        while (it2.hasNext()) {
            zztb next = it2.next();
            zztdVar2 = next.zzb;
            if (zztdVar2 == zztdVar) {
                next.zzc();
                this.zza.remove(next);
            }
        }
    }
}
