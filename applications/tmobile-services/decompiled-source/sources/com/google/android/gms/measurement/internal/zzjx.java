package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjx.class */
final class zzjx implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9631f;

    /* renamed from: g */
    private final /* synthetic */ zzju f9632g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjx(zzju zzjuVar, long j) {
        this.f9632g = zzjuVar;
        this.f9631f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9632g.m11143G(this.f9631f);
    }
}
