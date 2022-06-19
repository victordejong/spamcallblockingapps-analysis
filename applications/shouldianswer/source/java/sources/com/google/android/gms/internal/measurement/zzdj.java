package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdj.class */
final class zzdj extends zzdf {
    private final zzdi zza = new zzdi();

    @Override // com.google.android.gms.internal.measurement.zzdf
    public final void zza(Throwable th, Throwable th2) {
        if (th2 != th) {
            if (th2 == null) {
                throw new NullPointerException("The suppressed exception cannot be null.");
            }
            this.zza.zza(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
