package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.google.android.material.circularreveal.AbstractC14490c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealGridLayout.class */
public class CircularRevealGridLayout extends GridLayout implements AbstractC14490c {

    /* renamed from: a */
    private final C14488b f52910a;

    public CircularRevealGridLayout(Context context) {
        this(context, null);
    }

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52910a = new C14488b(this);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: a */
    public final void mo10870a() {
        this.f52910a.m10887a();
    }

    @Override // com.google.android.material.circularreveal.C14488b.AbstractC14489a
    /* renamed from: a */
    public final void mo10869a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: b */
    public final void mo10868b() {
        this.f52910a.m10882b();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: c */
    public final AbstractC14490c.C14495d mo10867c() {
        return this.f52910a.m10879c();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    /* renamed from: d */
    public final int mo10866d() {
        return this.f52910a.f52915b.getColor();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C14488b c14488b = this.f52910a;
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
        C14488b c14488b = this.f52910a;
        return c14488b != null ? c14488b.m10878d() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f52910a.m10884a(drawable);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setCircularRevealScrimColor(int i) {
        this.f52910a.m10886a(i);
    }

    @Override // com.google.android.material.circularreveal.AbstractC14490c
    public void setRevealInfo(AbstractC14490c.C14495d c14495d) {
        this.f52910a.m10883a(c14495d);
    }
}
