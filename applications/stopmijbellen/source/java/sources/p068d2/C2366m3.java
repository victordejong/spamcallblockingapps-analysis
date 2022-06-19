package p068d2;

import android.widget.FrameLayout;
import java.util.Objects;
/* renamed from: d2.m3 */
/* loaded from: classes-dex2jar.jar:d2/m3.class */
public class C2366m3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ TextureView$SurfaceTextureListenerC2399r3 f8384a;

    public C2366m3(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3) {
        this.f8384a = textureView$SurfaceTextureListenerC2399r3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (TextureView$SurfaceTextureListenerC2399r3.m3610a(this.f8384a, c2410t0)) {
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = this.f8384a;
            Objects.requireNonNull(textureView$SurfaceTextureListenerC2399r3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            textureView$SurfaceTextureListenerC2399r3.f8493i = C2227e4.m3735r(c2267f4, "x");
            textureView$SurfaceTextureListenerC2399r3.f8494j = C2227e4.m3735r(c2267f4, "y");
            textureView$SurfaceTextureListenerC2399r3.f8495k = C2227e4.m3735r(c2267f4, "width");
            textureView$SurfaceTextureListenerC2399r3.f8496l = C2227e4.m3735r(c2267f4, "height");
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textureView$SurfaceTextureListenerC2399r3.getLayoutParams();
            layoutParams.setMargins(textureView$SurfaceTextureListenerC2399r3.f8493i, textureView$SurfaceTextureListenerC2399r3.f8494j, 0, 0);
            layoutParams.width = textureView$SurfaceTextureListenerC2399r3.f8495k;
            layoutParams.height = textureView$SurfaceTextureListenerC2399r3.f8496l;
            textureView$SurfaceTextureListenerC2399r3.setLayoutParams(layoutParams);
            if (!textureView$SurfaceTextureListenerC2399r3.f8510z || textureView$SurfaceTextureListenerC2399r3.f8479I == null) {
                return;
            }
            int i = (int) (textureView$SurfaceTextureListenerC2399r3.f8485a * 4.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
            layoutParams2.setMargins(0, textureView$SurfaceTextureListenerC2399r3.f8476F.f8299i - ((int) (textureView$SurfaceTextureListenerC2399r3.f8485a * 4.0f)), 0, 0);
            layoutParams2.gravity = 0;
            textureView$SurfaceTextureListenerC2399r3.f8479I.setLayoutParams(layoutParams2);
        }
    }
}
