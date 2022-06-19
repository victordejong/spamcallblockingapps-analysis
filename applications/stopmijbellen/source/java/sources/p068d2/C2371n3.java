package p068d2;

import java.util.Objects;
import p068d2.TextureView$SurfaceTextureListenerC2399r3;
/* renamed from: d2.n3 */
/* loaded from: classes-dex2jar.jar:d2/n3.class */
public class C2371n3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ TextureView$SurfaceTextureListenerC2399r3 f8391a;

    public C2371n3(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3) {
        this.f8391a = textureView$SurfaceTextureListenerC2399r3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        TextureView$SurfaceTextureListenerC2399r3.C2401b c2401b;
        TextureView$SurfaceTextureListenerC2399r3.C2401b c2401b2;
        if (TextureView$SurfaceTextureListenerC2399r3.m3610a(this.f8391a, c2410t0)) {
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = this.f8391a;
            Objects.requireNonNull(textureView$SurfaceTextureListenerC2399r3);
            if (C2227e4.m3741l(c2410t0.f8537b, "visible")) {
                textureView$SurfaceTextureListenerC2399r3.setVisibility(0);
                if (!textureView$SurfaceTextureListenerC2399r3.f8510z || (c2401b2 = textureView$SurfaceTextureListenerC2399r3.f8479I) == null) {
                    return;
                }
                c2401b2.setVisibility(0);
                return;
            }
            textureView$SurfaceTextureListenerC2399r3.setVisibility(4);
            if (!textureView$SurfaceTextureListenerC2399r3.f8510z || (c2401b = textureView$SurfaceTextureListenerC2399r3.f8479I) == null) {
                return;
            }
            c2401b.setVisibility(4);
        }
    }
}
