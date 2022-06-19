package com.google.android.exoplayer2.p346ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.p346ui.spherical.C11513a;
/* renamed from: com.google.android.exoplayer2.ui.spherical.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e.class */
final class View$OnTouchListenerC11519e extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, C11513a.AbstractC11514a {

    /* renamed from: a */
    AbstractC11518d f38318a;

    /* renamed from: d */
    private final AbstractC11520a f38321d;

    /* renamed from: e */
    private final float f38322e;

    /* renamed from: f */
    private final GestureDetector f38323f;

    /* renamed from: b */
    private final PointF f38319b = new PointF();

    /* renamed from: c */
    private final PointF f38320c = new PointF();

    /* renamed from: g */
    private volatile float f38324g = 3.1415927f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.spherical.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e$a.class */
    public interface AbstractC11520a {
        /* renamed from: a */
        void mo20214a(PointF pointF);
    }

    public View$OnTouchListenerC11519e(Context context, AbstractC11520a abstractC11520a, float f) {
        this.f38321d = abstractC11520a;
        this.f38322e = f;
        this.f38323f = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.p346ui.spherical.C11513a.AbstractC11514a
    /* renamed from: a */
    public final void mo20215a(float[] fArr, float f) {
        this.f38324g = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f38319b.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f38319b.x) / this.f38322e;
        float y = (motionEvent2.getY() - this.f38319b.y) / this.f38322e;
        this.f38319b.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f38324g;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        this.f38320c.x -= (cos * x) - (sin * y);
        this.f38320c.y += (sin * x) + (cos * y);
        PointF pointF = this.f38320c;
        pointF.y = Math.max(-45.0f, Math.min(45.0f, pointF.y));
        this.f38321d.mo20214a(this.f38320c);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        AbstractC11518d abstractC11518d = this.f38318a;
        if (abstractC11518d != null) {
            return abstractC11518d.mo20216d();
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f38323f.onTouchEvent(motionEvent);
    }
}
