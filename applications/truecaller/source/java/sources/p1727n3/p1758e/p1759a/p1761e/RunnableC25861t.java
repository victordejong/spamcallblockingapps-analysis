package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.SurfaceTexture;
import android.view.Surface;
/* renamed from: n3.e.a.e.t */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/t.class */
public final /* synthetic */ class RunnableC25861t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Surface f72339a;

    /* renamed from: b */
    public final /* synthetic */ SurfaceTexture f72340b;

    public /* synthetic */ RunnableC25861t(Surface surface, SurfaceTexture surfaceTexture) {
        this.f72339a = surface;
        this.f72340b = surfaceTexture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Surface surface = this.f72339a;
        SurfaceTexture surfaceTexture = this.f72340b;
        surface.release();
        surfaceTexture.release();
    }
}
