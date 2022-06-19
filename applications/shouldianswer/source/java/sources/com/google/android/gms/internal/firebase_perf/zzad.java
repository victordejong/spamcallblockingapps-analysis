package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzab;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzad.class */
final class zzad extends zzac {
    private final zzab zzy = new zzab();

    @Override // com.google.android.gms.internal.firebase_perf.zzac
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            if (th2 == null) {
                throw new NullPointerException("The suppressed exception cannot be null.");
            }
            this.zzy.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
