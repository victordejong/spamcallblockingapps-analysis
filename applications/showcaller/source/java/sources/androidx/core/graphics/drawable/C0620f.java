package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class C0620f extends Drawable.ConstantState {

    /* renamed from: a */
    int f3008a;

    /* renamed from: b */
    Drawable.ConstantState f3009b;

    /* renamed from: c */
    ColorStateList f3010c;

    /* renamed from: d */
    PorterDuff.Mode f3011d;

    public C0620f(C0620f c0620f) {
        this.f3010c = null;
        this.f3011d = C0618d.f3000d;
        if (c0620f != null) {
            this.f3008a = c0620f.f3008a;
            this.f3009b = c0620f.f3009b;
            this.f3010c = c0620f.f3010c;
            this.f3011d = c0620f.f3011d;
        }
    }

    /* renamed from: a */
    public boolean m33204a() {
        return this.f3009b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f3008a;
        Drawable.ConstantState constantState = this.f3009b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0619e(this, resources) : new C0618d(this, resources);
    }
}
