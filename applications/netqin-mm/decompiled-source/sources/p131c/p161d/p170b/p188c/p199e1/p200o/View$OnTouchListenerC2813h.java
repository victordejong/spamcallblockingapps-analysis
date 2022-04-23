package p131c.p161d.p170b.p188c.p199e1.p200o;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import p131c.p161d.p170b.p188c.p199e1.p200o.C2807d;
/* renamed from: c.d.b.c.e1.o.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/h.class */
public class View$OnTouchListenerC2813h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, C2807d.AbstractC2808a {

    /* renamed from: c */
    public final AbstractC2814a f10235c;

    /* renamed from: d */
    public final float f10236d;

    /* renamed from: e */
    public final GestureDetector f10237e;

    /* renamed from: g */
    public AbstractC2812g f10239g;

    /* renamed from: a */
    public final PointF f10233a = new PointF();

    /* renamed from: b */
    public final PointF f10234b = new PointF();

    /* renamed from: f */
    public volatile float f10238f = 3.1415927f;

    /* renamed from: c.d.b.c.e1.o.h$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/h$a.class */
    public interface AbstractC2814a {
        /* renamed from: a */
        void mo18291a(PointF pointF);
    }

    public View$OnTouchListenerC2813h(Context context, AbstractC2814a aVar, float f) {
        this.f10235c = aVar;
        this.f10236d = f;
        this.f10237e = new GestureDetector(context, this);
    }

    /* renamed from: a */
    public void m28974a(AbstractC2812g gVar) {
        this.f10239g = gVar;
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.p200o.C2807d.AbstractC2808a
    /* renamed from: a */
    public void mo18290a(float[] fArr, float f) {
        this.f10238f = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f10233a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f10233a.x) / this.f10236d;
        float y = motionEvent2.getY();
        PointF pointF = this.f10233a;
        float f3 = (y - pointF.y) / this.f10236d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f10238f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.f10234b;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = pointF2.y + (sin * x) + (cos * f3);
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        this.f10235c.mo18291a(this.f10234b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        AbstractC2812g gVar = this.f10239g;
        if (gVar != null) {
            return gVar.onSingleTapUp(motionEvent);
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f10237e.onTouchEvent(motionEvent);
    }
}
