package p459j.p460a.p474c0.p491g.p496e0.p497o;

import android.graphics.Canvas;
import android.view.MotionEvent;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay;
/* renamed from: j.a.c0.g.e0.o.c */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/c.class */
public abstract class AbstractC12068c implements RenderOverlay.AbstractC4840b {

    /* renamed from: a */
    public RenderOverlay f27058a;

    /* renamed from: b */
    public int f27059b;

    /* renamed from: c */
    public int f27060c;

    /* renamed from: d */
    public int f27061d;

    /* renamed from: e */
    public int f27062e;

    /* renamed from: f */
    public boolean f27063f;

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    /* renamed from: a */
    public void mo7271a(int i, int i2, int i3, int i4) {
        this.f27059b = i;
        this.f27061d = i3;
        this.f27060c = i2;
        this.f27062e = i4;
    }

    /* renamed from: a */
    public abstract void mo7266a(Canvas canvas);

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    /* renamed from: a */
    public void mo7302a(RenderOverlay renderOverlay) {
        this.f27058a = renderOverlay;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    /* renamed from: a */
    public boolean mo7276a() {
        return false;
    }

    /* renamed from: c */
    public int m7301c() {
        return this.f27062e - this.f27060c;
    }

    /* renamed from: c */
    public void m7300c(boolean z) {
        this.f27063f = z;
        m7297f();
    }

    /* renamed from: d */
    public int m7299d() {
        return this.f27061d - this.f27059b;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    public void draw(Canvas canvas) {
        if (this.f27063f) {
            mo7266a(canvas);
        }
    }

    /* renamed from: e */
    public boolean m7298e() {
        return this.f27063f;
    }

    /* renamed from: f */
    public void m7297f() {
        RenderOverlay renderOverlay = this.f27058a;
        if (renderOverlay != null) {
            renderOverlay.m26943c();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
