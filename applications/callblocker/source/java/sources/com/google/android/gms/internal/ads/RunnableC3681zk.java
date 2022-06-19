package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zk.class */
final class RunnableC3681zk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ TextureView$SurfaceTextureListenerC3671za f17693a;

    public RunnableC3681zk(TextureView$SurfaceTextureListenerC3671za textureView$SurfaceTextureListenerC3671za) {
        this.f17693a = textureView$SurfaceTextureListenerC3671za;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3682zl abstractC3682zl;
        AbstractC3682zl abstractC3682zl2;
        AbstractC3682zl abstractC3682zl3;
        abstractC3682zl = this.f17693a.f17679r;
        if (abstractC3682zl != null) {
            abstractC3682zl2 = this.f17693a.f17679r;
            abstractC3682zl2.mo6669d();
            abstractC3682zl3 = this.f17693a.f17679r;
            abstractC3682zl3.mo6665f();
        }
    }
}
