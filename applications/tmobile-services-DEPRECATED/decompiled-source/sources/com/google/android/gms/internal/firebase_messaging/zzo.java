package com.google.android.gms.internal.firebase_messaging;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzo.class */
final class zzo extends zzn {

    /* renamed from: a */
    private final zzm f7855a = new zzm();

    @Override // com.google.android.gms.internal.firebase_messaging.zzn
    /* renamed from: a */
    public final void mo14072a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f7855a.m14073a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
