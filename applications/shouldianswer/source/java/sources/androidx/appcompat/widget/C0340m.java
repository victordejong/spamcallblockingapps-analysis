package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.AbstractC0609l;
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public class C0340m extends ImageView implements AbstractC0551t, AbstractC0609l {

    /* renamed from: a */
    private final C0331e f1382a;

    /* renamed from: b */
    private final C0339l f1383b;

    public C0340m(Context context) {
        this(context, null);
    }

    public C0340m(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0340m(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.f1382a = new C0331e(this);
        this.f1382a.m7088a(attributeSet, i);
        this.f1383b = new C0339l(this);
        this.f1383b.m7047a(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.f1382a;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7044d();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.f1382a;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.f1382a;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    @Override // androidx.core.widget.AbstractC0609l
    public ColorStateList getSupportImageTintList() {
        C0339l c0339l = this.f1383b;
        return c0339l != null ? c0339l.m7046b() : null;
    }

    @Override // androidx.core.widget.AbstractC0609l
    public PorterDuff.Mode getSupportImageTintMode() {
        C0339l c0339l = this.f1383b;
        return c0339l != null ? c0339l.m7045c() : null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1383b.m7052a() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.f1382a;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.f1382a;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7044d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7044d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7051a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7044d();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.f1382a;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.f1382a;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0609l
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7050a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0609l
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0339l c0339l = this.f1383b;
        if (c0339l != null) {
            c0339l.m7049a(mode);
        }
    }
}
