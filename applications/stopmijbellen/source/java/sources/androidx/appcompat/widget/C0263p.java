package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
public class C0263p extends ImageView {

    /* renamed from: a */
    public final C0221e f1062a;

    /* renamed from: b */
    public final C0260o f1063b;

    /* renamed from: c */
    public boolean f1064c = false;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0263p(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0221e c0221e = new C0221e(this);
        this.f1062a = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0260o c0260o = new C0260o(this);
        this.f1063b = c0260o;
        c0260o.m8456b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f1062a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8457a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f1062a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f1062a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportImageTintList() {
        C0289x0 c0289x0;
        C0260o c0260o = this.f1063b;
        return (c0260o == null || (c0289x0 = c0260o.f1053b) == null) ? null : c0289x0.f1131a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C0289x0 c0289x0;
        C0260o c0260o = this.f1063b;
        return (c0260o == null || (c0289x0 = c0260o.f1053b) == null) ? null : c0289x0.f1132b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        boolean z = true;
        if (!(!(this.f1063b.f1052a.getBackground() instanceof RippleDrawable)) || !super.hasOverlappingRendering()) {
            z = false;
        }
        return z;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f1062a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f1062a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8457a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        C0260o c0260o = this.f1063b;
        if (c0260o != null && drawable != null && !this.f1064c) {
            c0260o.f1055d = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        C0260o c0260o2 = this.f1063b;
        if (c0260o2 != null) {
            c0260o2.m8457a();
            if (this.f1064c) {
                return;
            }
            C0260o c0260o3 = this.f1063b;
            if (c0260o3.f1052a.getDrawable() == null) {
                return;
            }
            c0260o3.f1052a.getDrawable().setLevel(c0260o3.f1055d);
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.f1064c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8455c(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8457a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f1062a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f1062a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8454d(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0260o c0260o = this.f1063b;
        if (c0260o != null) {
            c0260o.m8453e(mode);
        }
    }
}
