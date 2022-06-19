package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class C0845f extends Drawable.ConstantState {

    /* renamed from: a */
    int f3595a;

    /* renamed from: b */
    Drawable.ConstantState f3596b;

    /* renamed from: c */
    ColorStateList f3597c;

    /* renamed from: d */
    PorterDuff.Mode f3598d;

    public C0845f(C0845f c0845f) {
        this.f3597c = null;
        this.f3598d = C0843d.f3587a;
        if (c0845f != null) {
            this.f3595a = c0845f.f3595a;
            this.f3596b = c0845f.f3596b;
            this.f3597c = c0845f.f3597c;
            this.f3598d = c0845f.f3598d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f3595a;
        Drawable.ConstantState constantState = this.f3596b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0844e(this, resources) : new C0843d(this, resources);
    }
}
