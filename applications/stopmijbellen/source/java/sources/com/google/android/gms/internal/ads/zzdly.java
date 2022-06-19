package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdly.class */
public final class zzdly extends zzdkb<zzaya> implements zzaya {
    @GuardedBy("this")
    private final Map<View, zzayb> zzb = new WeakHashMap(1);
    private final Context zzc;
    private final zzfdn zzd;

    public zzdly(Context context, Set<zzdlw<zzaya>> set, zzfdn zzfdnVar) {
        super(set);
        this.zzc = context;
        this.zzd = zzfdnVar;
    }

    public final void zza(View view) {
        synchronized (this) {
            zzayb zzaybVar = this.zzb.get(view);
            zzayb zzaybVar2 = zzaybVar;
            if (zzaybVar == null) {
                zzaybVar2 = new zzayb(this.zzc, view);
                zzaybVar2.zzc(this);
                this.zzb.put(view, zzaybVar2);
            }
            if (this.zzd.zzU) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaZ)).booleanValue()) {
                    zzaybVar2.zzg(((Long) zzbgq.zzc().zzb(zzblj.zzaY)).longValue());
                    return;
                }
            }
            zzaybVar2.zzf();
        }
    }

    public final void zzb(View view) {
        synchronized (this) {
            if (this.zzb.containsKey(view)) {
                this.zzb.get(view).zze(this);
                this.zzb.remove(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(final zzaxz zzaxzVar) {
        synchronized (this) {
            zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdlx
                @Override // com.google.android.gms.internal.ads.zzdka
                public final void zza(Object obj) {
                    ((zzaya) obj).zzc(zzaxz.this);
                }
            });
        }
    }
}
