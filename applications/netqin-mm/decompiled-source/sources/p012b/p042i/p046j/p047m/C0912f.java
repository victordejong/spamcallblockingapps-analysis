package p012b.p042i.p046j.p047m;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: b.i.j.m.f */
/* loaded from: classes-dex2jar.jar:b/i/j/m/f.class */
public final class C0912f extends Drawable.ConstantState {

    /* renamed from: a */
    public int f4124a;

    /* renamed from: b */
    public Drawable.ConstantState f4125b;

    /* renamed from: c */
    public ColorStateList f4126c;

    /* renamed from: d */
    public PorterDuff.Mode f4127d;

    public C0912f(C0912f fVar) {
        this.f4126c = null;
        this.f4127d = C0910d.f4116g;
        if (fVar != null) {
            this.f4124a = fVar.f4124a;
            this.f4125b = fVar.f4125b;
            this.f4126c = fVar.f4126c;
            this.f4127d = fVar.f4127d;
        }
    }

    /* renamed from: a */
    public boolean m35506a() {
        return this.f4125b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f4124a;
        Drawable.ConstantState constantState = this.f4125b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0911e(this, resources) : new C0910d(this, resources);
    }
}
