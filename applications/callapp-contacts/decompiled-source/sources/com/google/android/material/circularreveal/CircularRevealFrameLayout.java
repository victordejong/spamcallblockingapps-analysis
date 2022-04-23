package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.circularreveal.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealFrameLayout.class */
public class CircularRevealFrameLayout extends FrameLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f30386a;

    public CircularRevealFrameLayout(Context context) {
        this(context, null);
    }

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30386a = new b(this);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void a() {
        this.f30386a.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public final void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void b() {
        this.f30386a.b();
    }

    @Override // com.google.android.material.circularreveal.c
    public final c.d c() {
        return this.f30386a.c();
    }

    @Override // com.google.android.material.circularreveal.c
    public final int d() {
        return this.f30386a.f30392b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.f30386a;
        if (bVar != null) {
            bVar.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.b.a
    public final boolean e() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        b bVar = this.f30386a;
        return bVar != null ? bVar.d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f30386a.a(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i) {
        this.f30386a.a(i);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.d dVar) {
        this.f30386a.a(dVar);
    }
}
