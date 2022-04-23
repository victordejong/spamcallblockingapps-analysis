package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcj.class */
final class zzcj extends zzci {

    /* renamed from: a */
    private final zzch f7948a = new zzch();

    @Override // com.google.android.gms.internal.icing.zzci
    /* renamed from: a */
    public final void mo13987a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f7948a.m13988a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
