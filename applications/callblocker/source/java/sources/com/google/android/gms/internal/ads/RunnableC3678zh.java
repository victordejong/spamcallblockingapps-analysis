package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zh.class */
final class RunnableC3678zh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f17688a;

    /* renamed from: b */
    private final /* synthetic */ int f17689b;

    /* renamed from: c */
    private final /* synthetic */ TextureView$SurfaceTextureListenerC3671za f17690c;

    public RunnableC3678zh(TextureView$SurfaceTextureListenerC3671za textureView$SurfaceTextureListenerC3671za, int i, int i2) {
        this.f17690c = textureView$SurfaceTextureListenerC3671za;
        this.f17688a = i;
        this.f17689b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3682zl abstractC3682zl;
        AbstractC3682zl abstractC3682zl2;
        abstractC3682zl = this.f17690c.f17679r;
        if (abstractC3682zl != null) {
            abstractC3682zl2 = this.f17690c.f17679r;
            abstractC3682zl2.mo6684a(this.f17688a, this.f17689b);
        }
    }
}
