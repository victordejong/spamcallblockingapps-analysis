package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzeg.class */
final class zzeg extends zzed {
    @Override // com.google.android.gms.internal.firebase_remote_config.zzed
    public final void zza(Throwable th) {
        th.printStackTrace();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzed
    public final void zza(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}
