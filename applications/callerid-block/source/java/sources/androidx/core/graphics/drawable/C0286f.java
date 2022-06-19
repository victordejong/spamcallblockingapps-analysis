package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
final class C0286f extends Drawable.ConstantState {

    /* renamed from: a */
    int f1692a;

    /* renamed from: b */
    Drawable.ConstantState f1693b;

    /* renamed from: c */
    ColorStateList f1694c;

    /* renamed from: d */
    PorterDuff.Mode f1695d;

    C0286f(C0286f c0286f) {
        this.f1694c = null;
        this.f1695d = d.h;
        if (c0286f != null) {
            this.f1692a = c0286f.f1692a;
            this.f1693b = c0286f.f1693b;
            this.f1694c = c0286f.f1694c;
            this.f1695d = c0286f.f1695d;
        }
    }

    /* renamed from: a */
    boolean m13458a() {
        return this.f1693b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1692a;
        Drawable.ConstantState constantState = this.f1693b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
