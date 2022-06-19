package com.google.android.gms.internal.mlkit_language_id;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzu.class */
public final class zzu extends zzt {
    private final zzs zza = new zzs();

    @Override // com.google.android.gms.internal.mlkit_language_id.zzt
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.zza.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
