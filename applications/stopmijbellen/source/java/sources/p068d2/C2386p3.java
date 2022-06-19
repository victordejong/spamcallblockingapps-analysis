package p068d2;
/* renamed from: d2.p3 */
/* loaded from: classes-dex2jar.jar:d2/p3.class */
public class C2386p3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ TextureView$SurfaceTextureListenerC2399r3 f8435a;

    public C2386p3(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3) {
        this.f8435a = textureView$SurfaceTextureListenerC2399r3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (TextureView$SurfaceTextureListenerC2399r3.m3610a(this.f8435a, c2410t0)) {
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = this.f8435a;
            if (!textureView$SurfaceTextureListenerC2399r3.f8507w) {
                return;
            }
            if (textureView$SurfaceTextureListenerC2399r3.f8503s) {
                textureView$SurfaceTextureListenerC2399r3.f8503s = false;
            }
            textureView$SurfaceTextureListenerC2399r3.f8484N = c2410t0;
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, "time");
            int duration = textureView$SurfaceTextureListenerC2399r3.f8481K.getDuration() / 1000;
            textureView$SurfaceTextureListenerC2399r3.f8481K.setOnSeekCompleteListener(textureView$SurfaceTextureListenerC2399r3);
            textureView$SurfaceTextureListenerC2399r3.f8481K.seekTo(m3735r * 1000);
            if (duration != m3735r) {
                return;
            }
            textureView$SurfaceTextureListenerC2399r3.f8503s = true;
        }
    }
}
