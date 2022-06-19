package p005a4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p098g0.AbstractC2790b;
/* renamed from: a4.a */
/* loaded from: classes-dex2jar.jar:a4/a.class */
public class C0013a extends Drawable implements AbstractC0841m, AbstractC2790b {

    /* renamed from: a */
    public C0015b f12a;

    /* renamed from: a4.a$b */
    /* loaded from: classes-dex2jar.jar:a4/a$b.class */
    public static final class C0015b extends Drawable.ConstantState {

        /* renamed from: a */
        public C0822f f13a;

        /* renamed from: b */
        public boolean f14b;

        public C0015b(C0015b c0015b) {
            this.f13a = (C0822f) c0015b.f13a.f3010a.newDrawable();
            this.f14b = c0015b.f14b;
        }

        public C0015b(C0822f c0822f) {
            this.f13a = c0822f;
            this.f14b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0013a(new C0015b(this), null);
        }
    }

    public C0013a(C0015b c0015b, C0014a c0014a) {
        this.f12a = c0015b;
    }

    public C0013a(C0827i c0827i) {
        this.f12a = new C0015b(new C0822f(c0827i));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        C0015b c0015b = this.f12a;
        if (c0015b.f14b) {
            c0015b.f13a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f12a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f12a.f13a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f12a = new C0015b(this.f12a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f12a.f13a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f12a.f13a.setState(iArr)) {
            onStateChange = true;
        }
        boolean m8929b = C0016b.m8929b(iArr);
        C0015b c0015b = this.f12a;
        if (c0015b.f14b != m8929b) {
            c0015b.f14b = m8929b;
            onStateChange = true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12a.f13a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12a.f13a.setColorFilter(colorFilter);
    }

    @Override // p029c4.AbstractC0841m
    public void setShapeAppearanceModel(C0827i c0827i) {
        C0822f c0822f = this.f12a.f13a;
        c0822f.f3010a.f3034a = c0827i;
        c0822f.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        this.f12a.f13a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f12a.f13a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f12a.f13a.setTintMode(mode);
    }
}
