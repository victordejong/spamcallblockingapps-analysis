package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ze */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ze.class */
public final class RunnableC3675ze implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f17684a;

    /* renamed from: b */
    private final /* synthetic */ String f17685b;

    /* renamed from: c */
    private final /* synthetic */ TextureView$SurfaceTextureListenerC3671za f17686c;

    public RunnableC3675ze(TextureView$SurfaceTextureListenerC3671za textureView$SurfaceTextureListenerC3671za, String str, String str2) {
        this.f17686c = textureView$SurfaceTextureListenerC3671za;
        this.f17684a = str;
        this.f17685b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3682zl abstractC3682zl;
        AbstractC3682zl abstractC3682zl2;
        abstractC3682zl = this.f17686c.f17679r;
        if (abstractC3682zl != null) {
            abstractC3682zl2 = this.f17686c.f17679r;
            abstractC3682zl2.mo6677a(this.f17684a, this.f17685b);
        }
    }
}
