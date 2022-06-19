package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbf;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvs.class */
public final class zzbvs extends zzcjy<zzbuo> {
    private final zzbf<zzbuo> zzb;
    private final Object zza = new Object();
    private boolean zzc = false;
    private int zzd = 0;

    public zzbvs(zzbf<zzbuo> zzbfVar) {
        this.zzb = zzbfVar;
    }

    public final zzbvn zza() {
        zzbvn zzbvnVar = new zzbvn(this);
        synchronized (this.zza) {
            zzi(new zzbvo(this, zzbvnVar), new zzbvp(this, zzbvnVar));
            Preconditions.checkState(this.zzd >= 0);
            this.zzd++;
        }
        return zzbvnVar;
    }

    public final void zzb() {
        synchronized (this.zza) {
            Preconditions.checkState(this.zzd >= 0);
            zze.zza("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.zzc = true;
            zzc();
        }
    }

    public final void zzc() {
        synchronized (this.zza) {
            Preconditions.checkState(this.zzd >= 0);
            if (!this.zzc || this.zzd != 0) {
                zze.zza("There are still references to the engine. Not destroying.");
            } else {
                zze.zza("No reference is left (including root). Cleaning up engine.");
                zzi(new zzbvr(this), new zzcju());
            }
        }
    }

    public final void zzd() {
        synchronized (this.zza) {
            Preconditions.checkState(this.zzd > 0);
            zze.zza("Releasing 1 reference for JS Engine");
            this.zzd--;
            zzc();
        }
    }
}
