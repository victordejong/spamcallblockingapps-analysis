package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zm.class */
final class RunnableC3683zm implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ TextureView$SurfaceTextureListenerC3671za f17694a;

    public RunnableC3683zm(TextureView$SurfaceTextureListenerC3671za textureView$SurfaceTextureListenerC3671za) {
        this.f17694a = textureView$SurfaceTextureListenerC3671za;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3682zl abstractC3682zl;
        AbstractC3682zl abstractC3682zl2;
        abstractC3682zl = this.f17694a.f17679r;
        if (abstractC3682zl != null) {
            abstractC3682zl2 = this.f17694a.f17679r;
            abstractC3682zl2.mo6669d();
        }
    }
}
