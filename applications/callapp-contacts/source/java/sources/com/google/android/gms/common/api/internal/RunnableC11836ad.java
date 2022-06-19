package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.ad */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ad.class */
final class RunnableC11836ad implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C11837ae f39217a;

    public RunnableC11836ad(C11837ae c11837ae) {
        this.f39217a = c11837ae;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39217a.f39218a.f39219a.disconnect(String.valueOf(this.f39217a.f39218a.f39219a.getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
