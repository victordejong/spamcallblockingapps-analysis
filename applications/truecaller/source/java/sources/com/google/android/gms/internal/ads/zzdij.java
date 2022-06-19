package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdij.class */
public final class zzdij extends zzdgm<zzawd> implements zzawd {
    private final Map<View, zzawe> zzb = new WeakHashMap(1);
    private final Context zzc;
    private final zzezz zzd;

    public zzdij(Context context, Set<zzdih<zzawd>> set, zzezz zzezzVar) {
        super(set);
        this.zzc = context;
        this.zzd = zzezzVar;
    }

    public final void zza(View view) {
        synchronized (this) {
            zzawe zzaweVar = this.zzb.get(view);
            zzawe zzaweVar2 = zzaweVar;
            if (zzaweVar == null) {
                zzaweVar2 = new zzawe(this.zzc, view);
                zzaweVar2.zza(this);
                this.zzb.put(view, zzaweVar2);
            }
            if (this.zzd.zzT) {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaT)).booleanValue()) {
                    zzaweVar2.zze(((Long) zzbet.zzc().zzc(zzbjl.zzaS)).longValue());
                    return;
                }
            }
            zzaweVar2.zzf();
        }
    }

    public final void zzb(View view) {
        synchronized (this) {
            if (this.zzb.containsKey(view)) {
                this.zzb.get(view).zzb(this);
                this.zzb.remove(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        synchronized (this) {
            zzk(new zzdgl(zzawcVar) { // from class: com.google.android.gms.internal.ads.zzdii
                private final zzawc zza;

                {
                    this.zza = zzawcVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdgl
                public final void zza(Object obj) {
                    ((zzawd) obj).zzc(this.zza);
                }
            });
        }
    }
}
