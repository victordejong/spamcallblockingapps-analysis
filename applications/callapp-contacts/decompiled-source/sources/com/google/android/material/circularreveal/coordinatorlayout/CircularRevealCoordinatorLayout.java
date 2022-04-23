package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout.class */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {
    private final b h;

    public CircularRevealCoordinatorLayout(Context context) {
        this(context, null);
    }

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new b(this);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void a() {
        this.h.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public final void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void b() {
        this.h.b();
    }

    @Override // com.google.android.material.circularreveal.c
    public final c.d c() {
        return this.h.c();
    }

    @Override // com.google.android.material.circularreveal.c
    public final int d() {
        return this.h.f30392b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.h;
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
        b bVar = this.h;
        return bVar != null ? bVar.d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.h.a(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i) {
        this.h.a(i);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.d dVar) {
        this.h.a(dVar);
    }
}
