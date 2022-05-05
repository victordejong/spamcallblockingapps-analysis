package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.hardware.Camera;
import android.os.Parcelable;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import java.io.IOException;
import p459j.p460a.p474c0.p491g.p496e0.C12034e;
/* renamed from: j.a.c0.g.e0.n */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/n.class */
public class C12062n extends SurfaceView implements C12034e.AbstractC12035a {

    /* renamed from: a */
    public final C12034e f27036a = new C12034e(this);

    /* renamed from: j.a.c0.g.e0.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/n$a.class */
    public class SurfaceHolder$CallbackC12063a implements SurfaceHolder.Callback {
        public SurfaceHolder$CallbackC12063a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C12010c.m7550A().m7534a(C12062n.this.f27036a);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            C12010c.m7550A().m7534a(C12062n.this.f27036a);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C12010c.m7550A().m7534a((C12034e) null);
        }
    }

    public C12062n(Context context) {
        super(context);
        getHolder().addCallback(new SurfaceHolder$CallbackC12063a());
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: a */
    public void mo7342a() {
        this.f27036a.m7456d();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: a */
    public void mo7341a(Camera camera) throws IOException {
        camera.setPreviewDisplay(getHolder());
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    /* renamed from: d */
    public View mo7339d() {
        return this;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12034e.AbstractC12035a
    public boolean isValid() {
        return getHolder() != null;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f27036a.m7457c();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27036a.m7455e();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int b = this.f27036a.m7458b(i, i2);
        super.onMeasure(b, this.f27036a.m7463a(b, i2));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        this.f27036a.m7454f();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.f27036a.m7464a(i);
    }
}
