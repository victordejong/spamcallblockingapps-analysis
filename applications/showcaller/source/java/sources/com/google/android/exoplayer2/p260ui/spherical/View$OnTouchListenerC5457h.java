package com.google.android.exoplayer2.p260ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.p260ui.spherical.C5451d;
/* renamed from: com.google.android.exoplayer2.ui.spherical.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/h.class */
class View$OnTouchListenerC5457h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, C5451d.AbstractC5452a {

    /* renamed from: f */
    private final AbstractC5458a f17664f;

    /* renamed from: g */
    private final float f17665g;

    /* renamed from: h */
    private final GestureDetector f17666h;

    /* renamed from: j */
    private AbstractC5456g f17668j;

    /* renamed from: d */
    private final PointF f17662d = new PointF();

    /* renamed from: e */
    private final PointF f17663e = new PointF();

    /* renamed from: i */
    private volatile float f17667i = 3.1415927f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.spherical.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/h$a.class */
    public interface AbstractC5458a {
        /* renamed from: b */
        void mo19058b(PointF pointF);
    }

    public View$OnTouchListenerC5457h(Context context, AbstractC5458a abstractC5458a, float f) {
        this.f17664f = abstractC5458a;
        this.f17665g = f;
        this.f17666h = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.p260ui.spherical.C5451d.AbstractC5452a
    /* renamed from: a */
    public void mo19060a(float[] fArr, float f) {
        this.f17667i = -f;
    }

    /* renamed from: b */
    public void m19059b(AbstractC5456g abstractC5456g) {
        this.f17668j = abstractC5456g;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f17662d.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f17662d.x) / this.f17665g;
        float y = motionEvent2.getY();
        PointF pointF = this.f17662d;
        float f3 = (y - pointF.y) / this.f17665g;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f17667i;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.f17663e;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = pointF2.y + (sin * x) + (cos * f3);
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        this.f17664f.mo19058b(this.f17663e);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        AbstractC5456g abstractC5456g = this.f17668j;
        if (abstractC5456g != null) {
            return abstractC5456g.onSingleTapUp(motionEvent);
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f17666h.onTouchEvent(motionEvent);
    }
}
