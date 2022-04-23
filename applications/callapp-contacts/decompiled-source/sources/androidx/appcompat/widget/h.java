package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.a;
import androidx.appcompat.a.a.a;
import androidx.core.view.v;
import androidx.core.widget.e;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f1096a;

    /* renamed from: b  reason: collision with root package name */
    private z f1097b;

    /* renamed from: c  reason: collision with root package name */
    private z f1098c;

    /* renamed from: d  reason: collision with root package name */
    private z f1099d;

    public h(ImageView imageView) {
        this.f1096a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f1099d == null) {
            this.f1099d = new z();
        }
        z zVar = this.f1099d;
        zVar.a();
        ColorStateList a2 = e.a(this.f1096a);
        if (a2 != null) {
            zVar.f1155d = true;
            zVar.f1152a = a2;
        }
        PorterDuff.Mode b2 = e.b(this.f1096a);
        if (b2 != null) {
            zVar.f1154c = true;
            zVar.f1153b = b2;
        }
        if (!zVar.f1155d && !zVar.f1154c) {
            return false;
        }
        f.a(drawable, zVar, this.f1096a.getDrawableState());
        return true;
    }

    private boolean e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1097b != null : i == 21;
    }

    public final void a(int i) {
        if (i != 0) {
            Drawable b2 = a.b(this.f1096a.getContext(), i);
            if (b2 != null) {
                p.b(b2);
            }
            this.f1096a.setImageDrawable(b2);
        } else {
            this.f1096a.setImageDrawable(null);
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (this.f1098c == null) {
            this.f1098c = new z();
        }
        this.f1098c.f1152a = colorStateList;
        this.f1098c.f1155d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PorterDuff.Mode mode) {
        if (this.f1098c == null) {
            this.f1098c = new z();
        }
        this.f1098c.f1153b = mode;
        this.f1098c.f1154c = true;
        d();
    }

    public final void a(AttributeSet attributeSet, int i) {
        ab a2 = ab.a(this.f1096a.getContext(), attributeSet, a.j.AppCompatImageView, i, 0);
        ImageView imageView = this.f1096a;
        v.a(imageView, imageView.getContext(), a.j.AppCompatImageView, attributeSet, a2.f1044a, i);
        try {
            Drawable drawable = this.f1096a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int g = a2.g(a.j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (g != -1) {
                    Drawable b2 = androidx.appcompat.a.a.a.b(this.f1096a.getContext(), g);
                    drawable2 = b2;
                    if (b2 != null) {
                        this.f1096a.setImageDrawable(b2);
                        drawable2 = b2;
                    }
                }
            }
            if (drawable2 != null) {
                p.b(drawable2);
            }
            if (a2.g(a.j.AppCompatImageView_tint)) {
                e.a(this.f1096a, a2.e(a.j.AppCompatImageView_tint));
            }
            if (a2.g(a.j.AppCompatImageView_tintMode)) {
                e.a(this.f1096a, p.a(a2.a(a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a2.f1044a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1096a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ColorStateList b() {
        z zVar = this.f1098c;
        if (zVar != null) {
            return zVar.f1152a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PorterDuff.Mode c() {
        z zVar = this.f1098c;
        if (zVar != null) {
            return zVar.f1153b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        Drawable drawable = this.f1096a.getDrawable();
        if (drawable != null) {
            p.b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!e() || !a(drawable)) {
            z zVar = this.f1098c;
            if (zVar != null) {
                f.a(drawable, zVar, this.f1096a.getDrawableState());
                return;
            }
            z zVar2 = this.f1097b;
            if (zVar2 != null) {
                f.a(drawable, zVar2, this.f1096a.getDrawableState());
            }
        }
    }
}
