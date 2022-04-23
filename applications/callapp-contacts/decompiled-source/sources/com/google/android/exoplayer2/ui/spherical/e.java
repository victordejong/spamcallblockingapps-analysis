package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.ui.spherical.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e.class */
final class e extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, a.AbstractC0445a {

    /* renamed from: a  reason: collision with root package name */
    d f22083a;

    /* renamed from: d  reason: collision with root package name */
    private final a f22086d;
    private final float e;
    private final GestureDetector f;

    /* renamed from: b  reason: collision with root package name */
    private final PointF f22084b = new PointF();

    /* renamed from: c  reason: collision with root package name */
    private final PointF f22085c = new PointF();
    private volatile float g = 3.1415927f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e$a.class */
    interface a {
        void a(PointF pointF);
    }

    public e(Context context, a aVar, float f) {
        this.f22086d = aVar;
        this.e = f;
        this.f = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.ui.spherical.a.AbstractC0445a
    public final void a(float[] fArr, float f) {
        this.g = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f22084b.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f22084b.x) / this.e;
        float y = (motionEvent2.getY() - this.f22084b.y) / this.e;
        this.f22084b.set(motionEvent2.getX(), motionEvent2.getY());
        double d2 = this.g;
        float cos = (float) Math.cos(d2);
        float sin = (float) Math.sin(d2);
        this.f22085c.x -= (cos * x) - (sin * y);
        this.f22085c.y += (sin * x) + (cos * y);
        PointF pointF = this.f22085c;
        pointF.y = Math.max(-45.0f, Math.min(45.0f, pointF.y));
        this.f22086d.a(this.f22085c);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        d dVar = this.f22083a;
        if (dVar != null) {
            return dVar.d();
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f.onTouchEvent(motionEvent);
    }
}
