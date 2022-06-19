package p078c.p084c.p085a.p096b.p106v;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.AbstractC0616b;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: c.c.a.b.v.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/v/a.class */
public class C1925a extends Drawable implements AbstractC1962p, AbstractC0616b {

    /* renamed from: d */
    private C1927b f6873d;

    /* renamed from: c.c.a.b.v.a$b */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/v/a$b.class */
    public static final class C1927b extends Drawable.ConstantState {

        /* renamed from: a */
        C1938h f6874a;

        /* renamed from: b */
        boolean f6875b;

        public C1927b(C1927b c1927b) {
            this.f6874a = (C1938h) c1927b.f6874a.getConstantState().newDrawable();
            this.f6875b = c1927b.f6875b;
        }

        public C1927b(C1938h c1938h) {
            this.f6874a = c1938h;
            this.f6875b = false;
        }

        /* renamed from: a */
        public C1925a newDrawable() {
            return new C1925a(new C1927b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }

    private C1925a(C1927b c1927b) {
        this.f6873d = c1927b;
    }

    public C1925a(C1946m c1946m) {
        this(new C1927b(new C1938h(c1946m)));
    }

    /* renamed from: a */
    public C1925a mutate() {
        this.f6873d = new C1927b(this.f6873d);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        C1927b c1927b = this.f6873d;
        if (c1927b.f6875b) {
            c1927b.f6874a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f6873d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f6873d.f6874a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f6873d.f6874a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f6873d.f6874a.setState(iArr)) {
            onStateChange = true;
        }
        boolean m28657e = C1928b.m28657e(iArr);
        C1927b c1927b = this.f6873d;
        if (c1927b.f6875b != m28657e) {
            c1927b.f6875b = m28657e;
            onStateChange = true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f6873d.f6874a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f6873d.f6874a.setColorFilter(colorFilter);
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        this.f6873d.f6874a.setShapeAppearanceModel(c1946m);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        this.f6873d.f6874a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        this.f6873d.f6874a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f6873d.f6874a.setTintMode(mode);
    }
}
