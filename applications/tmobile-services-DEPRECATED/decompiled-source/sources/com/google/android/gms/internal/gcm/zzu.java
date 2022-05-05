package com.google.android.gms.internal.gcm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzu.class */
final class zzu extends zzr {

    /* renamed from: a */
    private final zzs f7868a = new zzs();

    @Override // com.google.android.gms.internal.gcm.zzr
    /* renamed from: a */
    public final void mo14058a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f7868a.m14059a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
