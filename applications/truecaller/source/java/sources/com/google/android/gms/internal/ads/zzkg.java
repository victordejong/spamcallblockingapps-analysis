package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkg.class */
public final class zzkg {
    private final CopyOnWriteArrayList<zzkf> zza = new CopyOnWriteArrayList<>();

    public final void zza(Handler handler, zzkh zzkhVar) {
        zzb(zzkhVar);
        this.zza.add(new zzkf(handler, zzkhVar));
    }

    public final void zzb(zzkh zzkhVar) {
        zzkh zzkhVar2;
        Iterator<zzkf> it = this.zza.iterator();
        while (it.hasNext()) {
            zzkf next = it.next();
            zzkhVar2 = next.zzb;
            if (zzkhVar2 == zzkhVar) {
                next.zzd();
                this.zza.remove(next);
            }
        }
    }

    public final void zzc(int i, long j, long j2) {
        boolean z;
        Handler handler;
        Iterator<zzkf> it = this.zza.iterator();
        while (it.hasNext()) {
            zzkf next = it.next();
            z = next.zzc;
            if (!z) {
                handler = next.zza;
                handler.post(new Runnable(next, i, j, j2) { // from class: com.google.android.gms.internal.ads.zzke
                    private final zzkf zza;
                    private final int zzb;
                    private final long zzc;
                    private final long zzd;

                    {
                        this.zza = next;
                        this.zzb = i;
                        this.zzc = j;
                        this.zzd = j2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzkh zzkhVar;
                        zzkf zzkfVar = this.zza;
                        int i2 = this.zzb;
                        long j3 = this.zzc;
                        long j4 = this.zzd;
                        zzkhVar = zzkfVar.zzb;
                        zzkhVar.zzW(i2, j3, j4);
                    }
                });
            }
        }
    }
}
