package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzee.class */
final class zzee extends zzed {
    private final zzec zzix = new zzec();

    @Override // com.google.android.gms.internal.firebase_remote_config.zzed
    public final void zza(Throwable th) {
        th.printStackTrace();
        List<Throwable> zza = this.zzix.zza(th, false);
        if (zza == null) {
            return;
        }
        synchronized (zza) {
            for (Throwable th2 : zza) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzed
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            if (th2 == null) {
                throw new NullPointerException("The suppressed exception cannot be null.");
            }
            this.zzix.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
