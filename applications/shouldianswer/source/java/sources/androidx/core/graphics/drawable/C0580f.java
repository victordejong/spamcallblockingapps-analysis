package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class C0580f extends Drawable.ConstantState {

    /* renamed from: a */
    int f1950a;

    /* renamed from: b */
    Drawable.ConstantState f1951b;

    /* renamed from: c */
    ColorStateList f1952c;

    /* renamed from: d */
    PorterDuff.Mode f1953d;

    public C0580f(C0580f c0580f) {
        this.f1952c = null;
        this.f1953d = C0578d.f1942a;
        if (c0580f != null) {
            this.f1950a = c0580f.f1950a;
            this.f1951b = c0580f.f1951b;
            this.f1952c = c0580f.f1952c;
            this.f1953d = c0580f.f1953d;
        }
    }

    /* renamed from: a */
    public boolean m6112a() {
        return this.f1951b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1950a;
        Drawable.ConstantState constantState = this.f1951b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0579e(this, resources) : new C0578d(this, resources);
    }
}
