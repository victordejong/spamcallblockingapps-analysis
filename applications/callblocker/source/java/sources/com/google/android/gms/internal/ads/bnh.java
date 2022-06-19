package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnh.class */
final /* synthetic */ class bnh implements Runnable {

    /* renamed from: a */
    private final act f11598a;

    private bnh(act actVar) {
        this.f11598a = actVar;
    }

    /* renamed from: a */
    public static Runnable m11754a(act actVar) {
        return new bnh(actVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11598a.mo13490J();
    }
}
