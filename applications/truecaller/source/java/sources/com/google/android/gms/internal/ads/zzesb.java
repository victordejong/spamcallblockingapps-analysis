package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesb.class */
public final class zzesb<T> {
    private final Set<zzery<? extends zzerx<T>>> zza;
    private final Executor zzb;

    public zzesb(Executor executor, Set<zzery<? extends zzerx<T>>> set) {
        this.zzb = executor;
        this.zza = set;
    }

    public final zzfsm<T> zza(T t) {
        ArrayList arrayList = new ArrayList(this.zza.size());
        for (zzery<? extends zzerx<T>> zzeryVar : this.zza) {
            zzfsm<? extends zzerx<T>> zza = zzeryVar.zza();
            if (zzbla.zza.zze().booleanValue()) {
                zza.zze(new Runnable(zzeryVar, zzt.zzj().mo38789a()) { // from class: com.google.android.gms.internal.ads.zzerz
                    private final zzery zza;
                    private final long zzb;

                    {
                        this.zza = zzeryVar;
                        this.zzb = mo38789a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzery zzeryVar2 = this.zza;
                        long j = this.zzb;
                        String canonicalName = zzeryVar2.getClass().getCanonicalName();
                        long mo38789a2 = zzt.zzj().mo38789a();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(mo38789a2 - j);
                        zze.zza(sb.toString());
                    }
                }, zzchg.zzf);
            }
            arrayList.add(zza);
        }
        return zzfsd.zzo(arrayList).zza(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.zzesa
            private final List zza;
            private final Object zzb;

            {
                this.zza = arrayList;
                this.zzb = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzfsm> list = this.zza;
                Object obj = this.zzb;
                for (zzfsm zzfsmVar : list) {
                    zzerx zzerxVar = (zzerx) zzfsmVar.get();
                    if (zzerxVar != null) {
                        zzerxVar.zzf(obj);
                    }
                }
                return obj;
            }
        }, this.zzb);
    }
}
