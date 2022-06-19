package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.widget.AbstractC0656o;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView implements AbstractC1678v, AbstractC0656o {

    /* renamed from: d */
    private final C0283d f899d;

    /* renamed from: e */
    private final C0294h f900e;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0283d c0283d = new C0283d(this);
        this.f899d = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0294h c0294h = new C0294h(this);
        this.f900e = c0294h;
        c0294h.m34907f(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f899d;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34911b();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f899d;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f899d;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // androidx.core.widget.AbstractC0656o
    public ColorStateList getSupportImageTintList() {
        C0294h c0294h = this.f900e;
        return c0294h != null ? c0294h.m34910c() : null;
    }

    @Override // androidx.core.widget.AbstractC0656o
    public PorterDuff.Mode getSupportImageTintMode() {
        C0294h c0294h = this.f900e;
        return c0294h != null ? c0294h.m34909d() : null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f900e.m34908e() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f899d;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f899d;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34911b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34911b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34906g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34911b();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f899d;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f899d;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0656o
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34905h(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0656o
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0294h c0294h = this.f900e;
        if (c0294h != null) {
            c0294h.m34904i(mode);
        }
    }
}
