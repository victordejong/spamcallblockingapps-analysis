package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.appcompat.C0142a;
import androidx.core.view.AbstractC0925u;
import androidx.core.widget.AbstractC0963k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageButton.class */
public class AppCompatImageButton extends ImageButton implements AbstractC0925u, AbstractC0963k {

    /* renamed from: a */
    private final C0390d f1146a;

    /* renamed from: b */
    private final C0395h f1147b;

    public AppCompatImageButton(Context context) {
        this(context, null);
    }

    public AppCompatImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.imageButtonStyle);
    }

    public AppCompatImageButton(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0390d c0390d = new C0390d(this);
        this.f1146a = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0395h c0395h = new C0395h(this);
        this.f1147b = c0395h;
        c0395h.m45714a(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45711d();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0963k
    public ColorStateList getSupportImageTintList() {
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            return c0395h.m45713b();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0963k
    public PorterDuff.Mode getSupportImageTintMode() {
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            return c0395h.m45712c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1147b.m45719a() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45711d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45711d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f1147b.m45718a(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45711d();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1146a;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0963k
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45717a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0963k
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0395h c0395h = this.f1147b;
        if (c0395h != null) {
            c0395h.m45716a(mode);
        }
    }
}
