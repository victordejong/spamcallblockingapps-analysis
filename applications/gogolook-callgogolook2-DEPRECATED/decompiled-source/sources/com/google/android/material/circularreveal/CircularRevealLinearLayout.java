package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p294f.p304j.AbstractC9197c;
import p081h.p203i.p204a.p294f.p304j.C9195b;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealLinearLayout.class */
public class CircularRevealLinearLayout extends LinearLayout implements AbstractC9197c {

    /* renamed from: a */
    public final C9195b f7464a = new C9195b(this);

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    @Nullable
    /* renamed from: a */
    public AbstractC9197c.C9202e mo15792a() {
        return this.f7464a.m15800d();
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: a */
    public void mo15791a(@ColorInt int i) {
        this.f7464a.m15808a(i);
    }

    @Override // p081h.p203i.p204a.p294f.p304j.C9195b.AbstractC9196a
    /* renamed from: a */
    public void mo15794a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: a */
    public void mo15790a(@Nullable Drawable drawable) {
        this.f7464a.m15806a(drawable);
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: a */
    public void mo15789a(@Nullable AbstractC9197c.C9202e eVar) {
        this.f7464a.m15802b(eVar);
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: b */
    public void mo15788b() {
        this.f7464a.m15809a();
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: c */
    public int mo15787c() {
        return this.f7464a.m15801c();
    }

    @Override // p081h.p203i.p204a.p294f.p304j.AbstractC9197c
    /* renamed from: d */
    public void mo15786d() {
        this.f7464a.m15804b();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C9195b bVar = this.f7464a;
        if (bVar != null) {
            bVar.m15807a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // p081h.p203i.p204a.p294f.p304j.C9195b.AbstractC9196a
    /* renamed from: e */
    public boolean mo15793e() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        C9195b bVar = this.f7464a;
        return bVar != null ? bVar.m15798f() : super.isOpaque();
    }
}
