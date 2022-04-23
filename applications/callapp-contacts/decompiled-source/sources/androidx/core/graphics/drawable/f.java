package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class f extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    int f1918a;

    /* renamed from: b  reason: collision with root package name */
    Drawable.ConstantState f1919b;

    /* renamed from: c  reason: collision with root package name */
    ColorStateList f1920c;

    /* renamed from: d  reason: collision with root package name */
    PorterDuff.Mode f1921d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(f fVar) {
        this.f1920c = null;
        this.f1921d = d.f1913a;
        if (fVar != null) {
            this.f1918a = fVar.f1918a;
            this.f1919b = fVar.f1919b;
            this.f1920c = fVar.f1920c;
            this.f1921d = fVar.f1921d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f1918a;
        Drawable.ConstantState constantState = this.f1919b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
