package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevq.class */
public final class zzevq<T> {
    private final Set<zzevn<? extends zzevm<T>>> zza;
    private final Executor zzb;

    public zzevq(Executor executor, Set<zzevn<? extends zzevm<T>>> set) {
        this.zzb = executor;
        this.zza = set;
    }

    public final zzfxa<T> zza(final T t) {
        final ArrayList arrayList = new ArrayList(this.zza.size());
        for (final zzevn<? extends zzevm<T>> zzevnVar : this.zza) {
            zzfxa<? extends zzevm<T>> zzb = zzevnVar.zzb();
            if (zzbmz.zza.zze().booleanValue()) {
                final long elapsedRealtime = zzt.zzA().elapsedRealtime();
                zzb.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzevo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzevn zzevnVar2 = zzevn.this;
                        long j = elapsedRealtime;
                        String canonicalName = zzevnVar2.getClass().getCanonicalName();
                        long elapsedRealtime2 = zzt.zzA().elapsedRealtime();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(elapsedRealtime2 - j);
                        zze.zza(sb.toString());
                    }
                }, zzcjm.zzf);
            }
            arrayList.add(zzb);
        }
        return zzfwq.zzc(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzevp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzfxa> list = arrayList;
                Object obj = t;
                for (zzfxa zzfxaVar : list) {
                    zzevm zzevmVar = (zzevm) zzfxaVar.get();
                    if (zzevmVar != null) {
                        zzevmVar.zza(obj);
                    }
                }
                return obj;
            }
        }, this.zzb);
    }
}
