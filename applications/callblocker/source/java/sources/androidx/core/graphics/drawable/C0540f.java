package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class C0540f extends Drawable.ConstantState {

    /* renamed from: a */
    int f1995a;

    /* renamed from: b */
    Drawable.ConstantState f1996b;

    /* renamed from: c */
    ColorStateList f1997c;

    /* renamed from: d */
    PorterDuff.Mode f1998d;

    public C0540f(C0540f c0540f) {
        this.f1997c = null;
        this.f1998d = C0538d.f1987a;
        if (c0540f != null) {
            this.f1995a = c0540f.f1995a;
            this.f1996b = c0540f.f1996b;
            this.f1997c = c0540f.f1997c;
            this.f1998d = c0540f.f1998d;
        }
    }

    /* renamed from: a */
    public boolean m20574a() {
        return this.f1996b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return (this.f1996b != null ? this.f1996b.getChangingConfigurations() : 0) | this.f1995a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0539e(this, resources) : new C0538d(this, resources);
    }
}
