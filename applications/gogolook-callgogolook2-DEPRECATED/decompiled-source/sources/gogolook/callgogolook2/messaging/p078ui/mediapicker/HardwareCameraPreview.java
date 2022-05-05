package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import java.io.IOException;
import p459j.p460a.p474c0.p491g.p496e0.C12010c;
import p459j.p460a.p474c0.p491g.p496e0.C12034e;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.HardwareCameraPreview */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/HardwareCameraPreview.class */
public class HardwareCameraPreview extends TextureView implements C12034e.AbstractC12035a {

    /* renamed from: b */
    public boolean f11871b = false;

    /* renamed from: a */
    public C12034e f11870a = new C12034e(this);

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.HardwareCameraPreview$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/HardwareCameraPreview$a.class */
    public class TextureView$SurfaceTextureListenerC4832a implements TextureView.SurfaceTextureListener {
        public TextureView$SurfaceTextureListenerC4832a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C12010c.m7550A().m7534a(HardwareCameraPreview.this.f11870a);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C12010c.m7550A().m7534a((C12034e) null);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C12010c.m7550A().m7534a(HardwareCameraPreview.this.f11870a);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            C12010c.m7550A().m7534a(HardwareCameraPreview.this.f11870a);
        }
    }

    public HardwareCameraPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setSurfaceTextureListener(new TextureView$SurfaceTextureListenerC4832a());
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: a */
    public void mo7342a() {
        this.f11870a.m7456d();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: a */
    public void mo7341a(Camera camera) throws IOException {
        camera.setPreviewTexture(getSurfaceTexture());
    }

    /* renamed from: a */
    public void m26984a(boolean z) {
        this.f11871b = z;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: d */
    public View mo7339d() {
        return this;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    public boolean isValid() {
        return getSurfaceTexture() != null;
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11871b) {
            this.f11870a.m7457c();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f11871b) {
            this.f11870a.m7455e();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int b = this.f11870a.m7458b(i, i2);
        super.onMeasure(b, this.f11870a.m7463a(b, i2));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        if (this.f11871b) {
            this.f11870a.m7454f();
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f11871b) {
            this.f11870a.m7464a(i);
        }
    }
}
