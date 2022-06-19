package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwf.class */
public class zzbwf<ListenerT> {
    @GuardedBy("this")
    private final Map<ListenerT, Executor> zzgaf = new HashMap();

    public zzbwf(Set<zzbya<ListenerT>> set) {
        zzb(set);
    }

    private final void zzb(Set<zzbya<ListenerT>> set) {
        synchronized (this) {
            for (zzbya<ListenerT> zzbyaVar : set) {
                zza(zzbyaVar);
            }
        }
    }

    public final void zza(zzbwh<ListenerT> zzbwhVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.zzgaf.entrySet()) {
                entry.getValue().execute(new Runnable(zzbwhVar, entry.getKey()) { // from class: com.google.android.gms.internal.ads.zzbwe
                    private final Object zzdlk;
                    private final zzbwh zzgae;

                    {
                        this.zzgae = zzbwhVar;
                        this.zzdlk = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.zzgae.zzo(this.zzdlk);
                        } catch (Throwable th) {
                            zzr.zzkv().zzb(th, "EventEmitter.notify");
                            zzd.zza("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    public final void zza(zzbya<ListenerT> zzbyaVar) {
        synchronized (this) {
            zza(zzbyaVar.zzgba, zzbyaVar.executor);
        }
    }

    public final void zza(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.zzgaf.put(listenert, executor);
        }
    }
}
