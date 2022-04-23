package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ys.class */
final class ys extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f28559a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ys(yp ypVar, String str) {
        this.f28559a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zc().zzen(this.f28559a);
    }
}
