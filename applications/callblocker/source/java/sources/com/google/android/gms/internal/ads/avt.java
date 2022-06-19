package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avt.class */
final /* synthetic */ class avt implements Runnable {

    /* renamed from: a */
    private final act f10431a;

    private avt(act actVar) {
        this.f10431a = actVar;
    }

    /* renamed from: a */
    public static Runnable m12399a(act actVar) {
        return new avt(actVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10431a.destroy();
    }
}
