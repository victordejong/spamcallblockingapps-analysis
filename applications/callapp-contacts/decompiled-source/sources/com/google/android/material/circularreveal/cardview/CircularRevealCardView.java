package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/cardview/CircularRevealCardView.class */
public class CircularRevealCardView extends MaterialCardView implements c {
    private final b e;

    public CircularRevealCardView(Context context) {
        this(context, null);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new b(this);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void a() {
        this.e.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public final void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public final void b() {
        this.e.b();
    }

    @Override // com.google.android.material.circularreveal.c
    public final c.d c() {
        return this.e.c();
    }

    @Override // com.google.android.material.circularreveal.c
    public final int d() {
        return this.e.f30392b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.e;
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
        b bVar = this.e;
        return bVar != null ? bVar.d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.e.a(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i) {
        this.e.a(i);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.d dVar) {
        this.e.a(dVar);
    }
}
