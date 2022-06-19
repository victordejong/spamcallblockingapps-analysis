package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauc.class */
public final class zzauc implements Runnable {
    public final /* synthetic */ zzaui zza;

    public zzauc(zzaui zzauiVar) {
        this.zza = zzauiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zzaul zzaulVar;
        z = this.zza.zzF;
        if (!z) {
            zzaulVar = this.zza.zzo;
            zzaulVar.zzc(this.zza);
        }
    }
}
