package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.AbstractC14490c;
import com.google.android.material.circularreveal.C14488b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout.class */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements AbstractC14490c {

    /* renamed from: h */
    private final C14488b f52932h;

    public CircularRevealCoordinatorLayout(Context context) {
        this(context, null);
    }

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52932h = new C14488b(this);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: a */
    public final void mo10870a() {
        this.f52932h.m10887a();
    }

    @Override // com.google.android.material.circularreveal.C14488b.AbstractC14489a
    /* renamed from: a */
    public final void mo10869a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: b */
    public final void mo10868b() {
        this.f52932h.m10882b();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: c */
    public final AbstractC14490c.C14495d mo10867c() {
        return this.f52932h.m10879c();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: d */
    public final int mo10866d() {
        return this.f52932h.f52915b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C14488b c14488b = this.f52932h;
        if (c14488b != null) {
            c14488b.m10885a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.C14488b.AbstractC14489a
    /* renamed from: e */
    public final boolean mo10865e() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        C14488b c14488b = this.f52932h;
        return c14488b != null ? c14488b.m10878d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f52932h.m10884a(drawable);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setCircularRevealScrimColor(int i) {
        this.f52932h.m10886a(i);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setRevealInfo(AbstractC14490c.C14495d c14495d) {
        this.f52932h.m10883a(c14495d);
    }
}
