package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zziz.class */
final class zziz implements Runnable {
    final /* synthetic */ zzja zza;

    public zziz(zzja zzjaVar) {
        this.zza = zzjaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza.zzb = null;
        this.zza.zza.zzR();
    }
}
