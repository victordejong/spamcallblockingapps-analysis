package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwp.class */
final class dwp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzht f27321a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dwk f27322b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dwp(dwk dwkVar, zzht zzhtVar) {
        this.f27322b = dwkVar;
        this.f27321a = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27322b.f27310b.b(this.f27321a);
    }
}
