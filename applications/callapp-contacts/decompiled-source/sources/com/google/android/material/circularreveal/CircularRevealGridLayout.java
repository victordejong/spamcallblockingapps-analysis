package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.google.android.material.circularreveal.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealGridLayout.class */
public class CircularRevealGridLayout extends GridLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f30387a;

    public CircularRevealGridLayout(Context context) {
        this(context, null);
    }

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30387a = new b(this);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void a() {
        this.f30387a.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public final void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void b() {
        this.f30387a.b();
    }

    @Override // com.google.android.material.circularreveal.c
    public final c.d c() {
        return this.f30387a.c();
    }

    @Override // com.google.android.material.circularreveal.c
    public final int d() {
        return this.f30387a.f30392b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.f30387a;
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
        b bVar = this.f30387a;
        return bVar != null ? bVar.d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f30387a.a(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i) {
        this.f30387a.a(i);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.d dVar) {
        this.f30387a.a(dVar);
    }
}
