package com.google.android.gms.stats;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/zzb.class */
public final class zzb implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ WakeLock f9839f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(WakeLock wakeLock) {
        this.f9839f = wakeLock;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9839f.m10832f(0);
    }
}
