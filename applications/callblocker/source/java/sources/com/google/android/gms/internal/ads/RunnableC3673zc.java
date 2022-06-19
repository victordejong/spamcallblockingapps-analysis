package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zc.class */
final class RunnableC3673zc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ TextureView$SurfaceTextureListenerC3671za f17681a;

    public RunnableC3673zc(TextureView$SurfaceTextureListenerC3671za textureView$SurfaceTextureListenerC3671za) {
        this.f17681a = textureView$SurfaceTextureListenerC3671za;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3682zl abstractC3682zl;
        AbstractC3682zl abstractC3682zl2;
        abstractC3682zl = this.f17681a.f17679r;
        if (abstractC3682zl != null) {
            abstractC3682zl2 = this.f17681a.f17679r;
            abstractC3682zl2.mo6674b();
        }
    }
}
