package p193e.p1577m.p1578a.p1596c.p1632o1.p1633h;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.p070ui.PlayerView;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24664d;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24670h;
/* renamed from: e.m.a.c.o1.h.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/i.class */
public class View$OnTouchListenerC24672i extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, C24664d.AbstractC24665a {

    /* renamed from: c */
    public final AbstractC24673a f69149c;

    /* renamed from: d */
    public final float f69150d;

    /* renamed from: e */
    public final GestureDetector f69151e;

    /* renamed from: g */
    public AbstractC24669g f69153g;

    /* renamed from: a */
    public final PointF f69147a = new PointF();

    /* renamed from: b */
    public final PointF f69148b = new PointF();

    /* renamed from: f */
    public volatile float f69152f = 3.1415927f;

    /* renamed from: e.m.a.c.o1.h.i$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/i$a.class */
    public interface AbstractC24673a {
    }

    public View$OnTouchListenerC24672i(Context context, AbstractC24673a abstractC24673a, float f) {
        this.f69149c = abstractC24673a;
        this.f69150d = f;
        this.f69151e = new GestureDetector(context, this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24664d.AbstractC24665a
    /* renamed from: a */
    public void mo4778a(float[] fArr, float f) {
        this.f69152f = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f69147a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f69147a.x) / this.f69150d;
        float y = motionEvent2.getY();
        PointF pointF = this.f69147a;
        float f3 = (y - pointF.y) / this.f69150d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f69152f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.f69148b;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = (cos * f3) + (sin * x) + pointF2.y;
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        AbstractC24673a abstractC24673a = this.f69149c;
        PointF pointF3 = this.f69148b;
        C24670h.C24671a c24671a = (C24670h.C24671a) abstractC24673a;
        synchronized (c24671a) {
            c24671a.f69142g = pointF3.y;
            c24671a.m4779b();
            Matrix.setRotateM(c24671a.f69141f, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        boolean z;
        AbstractC24669g abstractC24669g = this.f69153g;
        if (abstractC24669g != null) {
            z = PlayerView.this.toggleControllerVisibility();
            return z;
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f69151e.onTouchEvent(motionEvent);
    }
}
