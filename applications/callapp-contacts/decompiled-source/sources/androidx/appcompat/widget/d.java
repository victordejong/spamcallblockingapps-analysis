package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.a;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final View f1081a;

    /* renamed from: d  reason: collision with root package name */
    private z f1084d;
    private z e;
    private z f;

    /* renamed from: c  reason: collision with root package name */
    private int f1083c = -1;

    /* renamed from: b  reason: collision with root package name */
    private final f f1082b = f.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(View view) {
        this.f1081a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f == null) {
            this.f = new z();
        }
        z zVar = this.f;
        zVar.a();
        ColorStateList w = v.w(this.f1081a);
        if (w != null) {
            zVar.f1155d = true;
            zVar.f1152a = w;
        }
        PorterDuff.Mode x = v.x(this.f1081a);
        if (x != null) {
            zVar.f1154c = true;
            zVar.f1153b = x;
        }
        if (!zVar.f1155d && !zVar.f1154c) {
            return false;
        }
        f.a(drawable, zVar, this.f1081a.getDrawableState());
        return true;
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1084d == null) {
                this.f1084d = new z();
            }
            this.f1084d.f1152a = colorStateList;
            this.f1084d.f1155d = true;
        } else {
            this.f1084d = null;
        }
        d();
    }

    private boolean e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1084d != null : i == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f1083c = -1;
        b(null);
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f1083c = i;
        f fVar = this.f1082b;
        b(fVar != null ? fVar.c(this.f1081a.getContext(), i) : null);
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new z();
        }
        this.e.f1152a = colorStateList;
        this.e.f1155d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new z();
        }
        this.e.f1153b = mode;
        this.e.f1154c = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AttributeSet attributeSet, int i) {
        ab a2 = ab.a(this.f1081a.getContext(), attributeSet, a.j.ViewBackgroundHelper, i, 0);
        View view = this.f1081a;
        v.a(view, view.getContext(), a.j.ViewBackgroundHelper, attributeSet, a2.f1044a, i);
        try {
            if (a2.g(a.j.ViewBackgroundHelper_android_background)) {
                this.f1083c = a2.g(a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList c2 = this.f1082b.c(this.f1081a.getContext(), this.f1083c);
                if (c2 != null) {
                    b(c2);
                }
            }
            if (a2.g(a.j.ViewBackgroundHelper_backgroundTint)) {
                v.a(this.f1081a, a2.e(a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.g(a.j.ViewBackgroundHelper_backgroundTintMode)) {
                v.a(this.f1081a, p.a(a2.a(a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a2.f1044a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ColorStateList b() {
        z zVar = this.e;
        if (zVar != null) {
            return zVar.f1152a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PorterDuff.Mode c() {
        z zVar = this.e;
        if (zVar != null) {
            return zVar.f1153b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        Drawable background = this.f1081a.getBackground();
        if (background == null) {
            return;
        }
        if (!e() || !a(background)) {
            z zVar = this.e;
            if (zVar != null) {
                f.a(background, zVar, this.f1081a.getDrawableState());
                return;
            }
            z zVar2 = this.f1084d;
            if (zVar2 != null) {
                f.a(background, zVar2, this.f1081a.getDrawableState());
            }
        }
    }
}
