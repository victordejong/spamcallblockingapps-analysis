package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.view.u;
import androidx.core.widget.k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView implements u, k {

    /* renamed from: a  reason: collision with root package name */
    private final d f905a;

    /* renamed from: b  reason: collision with root package name */
    private final h f906b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        d dVar = new d(this);
        this.f905a = dVar;
        dVar.a(attributeSet, i);
        h hVar = new h(this);
        this.f906b = hVar;
        hVar.a(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f905a;
        if (dVar != null) {
            dVar.d();
        }
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.d();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f905a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f905a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public ColorStateList getSupportImageTintList() {
        h hVar = this.f906b;
        if (hVar != null) {
            return hVar.b();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public PorterDuff.Mode getSupportImageTintMode() {
        h hVar = this.f906b;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f906b.a() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f905a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f905a;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.d();
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f905a;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f905a;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintList(ColorStateList colorStateList) {
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        h hVar = this.f906b;
        if (hVar != null) {
            hVar.a(mode);
        }
    }
}
