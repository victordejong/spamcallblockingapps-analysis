package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.AbstractC0632l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView implements AbstractC0594t, AbstractC0632l {

    /* renamed from: a */
    private final C0347f f993a;

    /* renamed from: b */
    private final C0353k f994b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f993a = new C0347f(this);
        this.f993a.m21327a(attributeSet, i);
        this.f994b = new C0353k(this);
        this.f994b.m21286a(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f993a != null) {
            this.f993a.m21323c();
        }
        if (this.f994b != null) {
            this.f994b.m21283d();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f993a != null ? this.f993a.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f993a != null ? this.f993a.m21326b() : null;
    }

    @Override // androidx.core.widget.AbstractC0632l
    public ColorStateList getSupportImageTintList() {
        return this.f994b != null ? this.f994b.m21285b() : null;
    }

    @Override // androidx.core.widget.AbstractC0632l
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f994b != null ? this.f994b.m21284c() : null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f994b.m21291a() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f993a != null) {
            this.f993a.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f993a != null) {
            this.f993a.m21331a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (this.f994b != null) {
            this.f994b.m21283d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.f994b != null) {
            this.f994b.m21283d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (this.f994b != null) {
            this.f994b.m21290a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.f994b != null) {
            this.f994b.m21283d();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f993a != null) {
            this.f993a.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f993a != null) {
            this.f993a.m21329a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0632l
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f994b != null) {
            this.f994b.m21289a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0632l
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f994b != null) {
            this.f994b.m21288a(mode);
        }
    }
}
