package p068d2;
/* renamed from: d2.q3 */
/* loaded from: classes-dex2jar.jar:d2/q3.class */
public class C2393q3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ TextureView$SurfaceTextureListenerC2399r3 f8459a;

    public C2393q3(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3) {
        this.f8459a = textureView$SurfaceTextureListenerC2399r3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (TextureView$SurfaceTextureListenerC2399r3.m3610a(this.f8459a, c2410t0)) {
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = this.f8459a;
            if (!textureView$SurfaceTextureListenerC2399r3.f8507w) {
                return;
            }
            float m3737p = (float) C2227e4.m3737p(c2410t0.f8537b, "volume");
            C2387q c2387q = C2408t.m3591d().f8100o;
            textureView$SurfaceTextureListenerC2399r3.f8481K.setVolume(m3737p, m3737p);
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }
}
