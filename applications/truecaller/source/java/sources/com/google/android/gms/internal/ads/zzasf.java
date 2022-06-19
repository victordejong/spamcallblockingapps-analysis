package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasf.class */
public final class zzasf implements Runnable {
    public final /* synthetic */ zzasl zza;

    public zzasf(zzasl zzaslVar) {
        this.zza = zzaslVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zzaso zzasoVar;
        z = this.zza.zzF;
        if (!z) {
            zzasoVar = this.zza.zzo;
            zzasoVar.zzbh(this.zza);
        }
    }
}
