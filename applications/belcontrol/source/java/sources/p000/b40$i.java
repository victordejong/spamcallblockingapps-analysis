package p000;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
/* renamed from: b40$i */
/* loaded from: classes-dex2jar.jar:b40$i.class */
public class b40$i extends Drawable.ConstantState {

    /* renamed from: a */
    public final Drawable.ConstantState f1778a;

    public b40$i(Drawable.ConstantState constantState) {
        this.f1778a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        return this.f1778a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f1778a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        b40 b40Var = new b40();
        ((a40) b40Var).a = (VectorDrawable) this.f1778a.newDrawable();
        return b40Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        b40 b40Var = new b40();
        ((a40) b40Var).a = (VectorDrawable) this.f1778a.newDrawable(resources);
        return b40Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        b40 b40Var = new b40();
        ((a40) b40Var).a = (VectorDrawable) this.f1778a.newDrawable(resources, theme);
        return b40Var;
    }
}
