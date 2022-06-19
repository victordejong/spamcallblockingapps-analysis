package com.google.android.material.p147f.p148a;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.google.android.material.p145d.C4589a;
import com.google.android.material.p147f.AbstractC4647d;
import com.google.android.material.p147f.C4645c;
/* renamed from: com.google.android.material.f.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/f/a/a.class */
public class C4643a extends C4589a implements AbstractC4647d {

    /* renamed from: e */
    private final C4645c f20151e;

    @Override // com.google.android.material.p147f.AbstractC4647d
    /* renamed from: a */
    public void mo3071a() {
        this.f20151e.m3089a();
    }

    @Override // com.google.android.material.p147f.C4645c.AbstractC4646a
    /* renamed from: a */
    public void mo3073a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    /* renamed from: b */
    public void mo3070b() {
        this.f20151e.m3084b();
    }

    @Override // com.google.android.material.p147f.C4645c.AbstractC4646a
    /* renamed from: c */
    public boolean mo3072c() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f20151e != null) {
            this.f20151e.m3087a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f20151e.m3079e();
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    public int getCircularRevealScrimColor() {
        return this.f20151e.m3080d();
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    public AbstractC4647d.C4652d getRevealInfo() {
        return this.f20151e.m3081c();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        return this.f20151e != null ? this.f20151e.m3078f() : super.isOpaque();
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f20151e.m3086a(drawable);
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    public void setCircularRevealScrimColor(int i) {
        this.f20151e.m3088a(i);
    }

    @Override // com.google.android.material.p147f.AbstractC4647d
    public void setRevealInfo(AbstractC4647d.C4652d c4652d) {
        this.f20151e.m3085a(c4652d);
    }
}
