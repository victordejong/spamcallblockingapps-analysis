package p098g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
/* renamed from: g0.f */
/* loaded from: classes-dex2jar.jar:g0/f.class */
public final class C2794f extends Drawable.ConstantState {

    /* renamed from: a */
    public int f9518a;

    /* renamed from: b */
    public Drawable.ConstantState f9519b;

    /* renamed from: c */
    public ColorStateList f9520c;

    /* renamed from: d */
    public PorterDuff.Mode f9521d;

    public C2794f(C2794f c2794f) {
        this.f9520c = null;
        this.f9521d = C2792d.f9510g;
        if (c2794f != null) {
            this.f9518a = c2794f.f9518a;
            this.f9519b = c2794f.f9519b;
            this.f9520c = c2794f.f9520c;
            this.f9521d = c2794f.f9521d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f9518a;
        Drawable.ConstantState constantState = this.f9519b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new C2793e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new C2793e(this, resources);
    }
}
