package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzge.class */
final class zzge extends zzga {

    /* renamed from: a */
    private final zzgd f8449a = new zzgd();

    @Override // com.google.android.gms.internal.measurement.zzga
    /* renamed from: a */
    public final void mo12663a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f8449a.m12664a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
