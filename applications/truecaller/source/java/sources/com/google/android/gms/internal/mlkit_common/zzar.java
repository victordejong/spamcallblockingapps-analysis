package com.google.android.gms.internal.mlkit_common;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzar.class */
public final class zzar extends zzaq {
    private final zzap zza = new zzap();

    @Override // com.google.android.gms.internal.mlkit_common.zzaq
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.zza.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
