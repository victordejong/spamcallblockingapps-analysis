package p068d2;

import android.content.Context;
import android.widget.FrameLayout;
import p068d2.TextureView$SurfaceTextureListenerC2399r3;
/* renamed from: d2.t3 */
/* loaded from: classes-dex2jar.jar:d2/t3.class */
public class RunnableC2414t3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f8556a;

    /* renamed from: b */
    public final /* synthetic */ TextureView$SurfaceTextureListenerC2399r3 f8557b;

    public RunnableC2414t3(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3, Context context) {
        this.f8557b = textureView$SurfaceTextureListenerC2399r3;
        this.f8556a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8557b.f8479I = new TextureView$SurfaceTextureListenerC2399r3.C2401b(this.f8556a);
        float f = this.f8557b.f8485a;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (f * 4.0f), (int) (f * 4.0f));
        TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = this.f8557b;
        layoutParams.setMargins(0, textureView$SurfaceTextureListenerC2399r3.f8476F.f8299i - ((int) (textureView$SurfaceTextureListenerC2399r3.f8485a * 4.0f)), 0, 0);
        layoutParams.gravity = 0;
        TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r32 = this.f8557b;
        textureView$SurfaceTextureListenerC2399r32.f8476F.addView(textureView$SurfaceTextureListenerC2399r32.f8479I, layoutParams);
    }
}
