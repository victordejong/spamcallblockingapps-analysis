package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaue.class */
final class zzaue implements Runnable {
    public final /* synthetic */ IOException zza;
    public final /* synthetic */ zzaui zzb;

    public zzaue(zzaui zzauiVar, IOException iOException) {
        this.zzb = zzauiVar;
        this.zza = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzauj zzaujVar;
        zzaujVar = this.zzb.zze;
        zzaujVar.zzi(this.zza);
    }
}
