package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.google.android.material.circularreveal.AbstractC8067c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealLinearLayout.class */
public class CircularRevealLinearLayout extends LinearLayout implements AbstractC8067c {

    /* renamed from: d */
    private final C8065b f36523d;

    public CircularRevealLinearLayout(Context context) {
        this(context, null);
    }

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36523d = new C8065b(this);
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    /* renamed from: a */
    public void mo5038a() {
        this.f36523d.m5062a();
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    /* renamed from: b */
    public void mo5037b() {
        this.f36523d.m5061b();
    }

    @Override // com.google.android.material.circularreveal.C8065b.AbstractC8066a
    /* renamed from: c */
    public void mo5036c(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.C8065b.AbstractC8066a
    /* renamed from: d */
    public boolean mo5035d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C8065b c8065b = this.f36523d;
        if (c8065b != null) {
            c8065b.m5060c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f36523d.m5058e();
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    public int getCircularRevealScrimColor() {
        return this.f36523d.m5057f();
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    public AbstractC8067c.C8072e getRevealInfo() {
        return this.f36523d.m5055h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        C8065b c8065b = this.f36523d;
        return c8065b != null ? c8065b.m5053j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f36523d.m5052k(drawable);
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    public void setCircularRevealScrimColor(int i) {
        this.f36523d.m5051l(i);
    }

    @Override // com.google.android.material.circularreveal.AbstractC8067c
    public void setRevealInfo(AbstractC8067c.C8072e c8072e) {
        this.f36523d.m5050m(c8072e);
    }
}
