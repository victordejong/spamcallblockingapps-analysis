package com.google.android.material.p372i;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.AbstractC0841b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.i.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/i/a.class */
public final class C14604a extends Drawable implements AbstractC0841b, AbstractC14695q {

    /* renamed from: a */
    private C14606a f53244a;

    /* renamed from: com.google.android.material.i.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/i/a$a.class */
    public static final class C14606a extends Drawable.ConstantState {

        /* renamed from: a */
        C14670h f53245a;

        /* renamed from: b */
        boolean f53246b;

        public C14606a(C14606a c14606a) {
            this.f53245a = (C14670h) c14606a.f53245a.getConstantState().newDrawable();
            this.f53246b = c14606a.f53246b;
        }

        public C14606a(C14670h c14670h) {
            this.f53245a = c14670h;
            this.f53246b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final /* synthetic */ Drawable newDrawable() {
            return new C14604a(new C14606a(this));
        }
    }

    private C14604a(C14606a c14606a) {
        this.f53244a = c14606a;
    }

    public C14604a(C14678m c14678m) {
        this(new C14606a(new C14670h(c14678m)));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f53244a.f53246b) {
            this.f53244a.f53245a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f53244a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f53244a.f53245a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final /* synthetic */ Drawable mutate() {
        this.f53244a = new C14606a(this.f53244a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f53244a.f53245a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f53244a.f53245a.setState(iArr)) {
            onStateChange = true;
        }
        boolean m10634a = C14607b.m10634a(iArr);
        if (this.f53244a.f53246b != m10634a) {
            this.f53244a.f53246b = m10634a;
            onStateChange = true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f53244a.f53245a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f53244a.f53245a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public final void setShapeAppearanceModel(C14678m c14678m) {
        this.f53244a.f53245a.setShapeAppearanceModel(c14678m);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTint(int i) {
        this.f53244a.f53245a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintList(ColorStateList colorStateList) {
        this.f53244a.f53245a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f53244a.f53245a.setTintMode(mode);
    }
}
