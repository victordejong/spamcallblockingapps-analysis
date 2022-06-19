package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkb.class */
public class zzdkb<ListenerT> {
    @GuardedBy("this")
    public final Map<ListenerT, Executor> zza = new HashMap();

    public zzdkb(Set<zzdlw<ListenerT>> set) {
        zzm(set);
    }

    public final void zzg(zzdlw<ListenerT> zzdlwVar) {
        synchronized (this) {
            zzj(zzdlwVar.zza, zzdlwVar.zzb);
        }
    }

    public final void zzj(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.zza.put(listenert, executor);
        }
    }

    public final void zzm(Set<zzdlw<ListenerT>> set) {
        synchronized (this) {
            for (zzdlw<ListenerT> zzdlwVar : set) {
                zzg(zzdlwVar);
            }
        }
    }

    public final void zzo(final zzdka<ListenerT> zzdkaVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.zza.entrySet()) {
                final ListenerT key = entry.getKey();
                entry.getValue().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjz
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            zzdka.this.zza(key);
                        } catch (Throwable th) {
                            zzt.zzo().zzr(th, "EventEmitter.notify");
                            zze.zzb("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }
}
