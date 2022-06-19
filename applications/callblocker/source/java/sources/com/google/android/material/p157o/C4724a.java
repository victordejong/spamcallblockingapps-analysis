package com.google.android.material.p157o;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.AbstractC0536b;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.o.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/o/a.class */
public class C4724a extends Drawable implements AbstractC0536b, AbstractC4758n {

    /* renamed from: a */
    private C4726a f20434a;

    /* renamed from: com.google.android.material.o.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/o/a$a.class */
    public static final class C4726a extends Drawable.ConstantState {

        /* renamed from: a */
        C4736g f20435a;

        /* renamed from: b */
        boolean f20436b;

        public C4726a(C4726a c4726a) {
            this.f20435a = (C4736g) c4726a.f20435a.getConstantState().newDrawable();
            this.f20436b = c4726a.f20436b;
        }

        public C4726a(C4736g c4736g) {
            this.f20435a = c4736g;
            this.f20436b = false;
        }

        /* renamed from: a */
        public C4724a newDrawable() {
            return new C4724a(new C4726a(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }

    private C4724a(C4726a c4726a) {
        this.f20434a = c4726a;
    }

    public C4724a(C4743k c4743k) {
        this(new C4726a(new C4736g(c4743k)));
    }

    /* renamed from: a */
    public C4724a mutate() {
        this.f20434a = new C4726a(this.f20434a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f20434a.f20436b) {
            this.f20434a.f20435a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f20434a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f20434a.f20435a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f20434a.f20435a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f20434a.f20435a.setState(iArr)) {
            onStateChange = true;
        }
        boolean m2757a = C4727b.m2757a(iArr);
        if (this.f20434a.f20436b != m2757a) {
            this.f20434a.f20436b = m2757a;
            onStateChange = true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f20434a.f20435a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20434a.f20435a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        this.f20434a.f20435a.setShapeAppearanceModel(c4743k);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        this.f20434a.f20435a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        this.f20434a.f20435a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f20434a.f20435a.setTintMode(mode);
    }
}
