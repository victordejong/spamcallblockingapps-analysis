package p193e.p1577m.p1578a.p1596c.p1637r1;

import android.content.Context;
import android.opengl.GLSurfaceView;
/* renamed from: e.m.a.c.r1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/l.class */
public class C24825l extends GLSurfaceView {

    /* renamed from: a */
    public final C24827n f69613a;

    public C24825l(Context context) {
        super(context, null);
        C24827n c24827n = new C24827n(this);
        this.f69613a = c24827n;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(c24827n);
        setRenderMode(0);
    }

    public AbstractC24826m getVideoDecoderOutputBufferRenderer() {
        return this.f69613a;
    }
}
