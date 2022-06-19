package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgm.class */
public class zzdgm<ListenerT> {
    public final Map<ListenerT, Executor> zza = new HashMap();

    public zzdgm(Set<zzdih<ListenerT>> set) {
        zzj(set);
    }

    public final void zzh(zzdih<ListenerT> zzdihVar) {
        synchronized (this) {
            zzi(zzdihVar.zza, zzdihVar.zzb);
        }
    }

    public final void zzi(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.zza.put(listenert, executor);
        }
    }

    public final void zzj(Set<zzdih<ListenerT>> set) {
        synchronized (this) {
            for (zzdih<ListenerT> zzdihVar : set) {
                zzh(zzdihVar);
            }
        }
    }

    public final void zzk(zzdgl<ListenerT> zzdglVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.zza.entrySet()) {
                entry.getValue().execute(new Runnable(zzdglVar, entry.getKey()) { // from class: com.google.android.gms.internal.ads.zzdgk
                    private final zzdgl zza;
                    private final Object zzb;

                    {
                        this.zza = zzdglVar;
                        this.zzb = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.zza.zza(this.zzb);
                        } catch (Throwable th) {
                            zzt.zzg().zzl(th, "EventEmitter.notify");
                            zze.zzb("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }
}
