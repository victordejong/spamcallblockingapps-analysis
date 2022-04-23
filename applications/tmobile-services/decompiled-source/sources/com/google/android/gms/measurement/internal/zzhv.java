package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhv.class */
public final class zzhv implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Boolean f9457f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9458g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhv(zzgy zzgyVar, Boolean bool) {
        this.f9458g = zzgyVar;
        this.f9457f = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9458g.m11278S(this.f9457f, true);
    }
}
