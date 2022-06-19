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
import p1727n3.p1734b.p1743f.C25499c;
import p1727n3.p1734b.p1743f.C25505f;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25535p0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView {

    /* renamed from: a */
    public final C25499c f269a;

    /* renamed from: b */
    public final C25505f f270b;

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25499c c25499c = new C25499c(this);
        this.f269a = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25505f c25505f = new C25505f(this);
        this.f270b = c25505f;
        c25505f.m3366b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f269a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3367a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f269a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f269a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    public ColorStateList getSupportImageTintList() {
        C25535p0 c25535p0;
        C25505f c25505f = this.f270b;
        return (c25505f == null || (c25535p0 = c25505f.f71374b) == null) ? null : c25535p0.f71441a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C25535p0 c25535p0;
        C25505f c25505f = this.f270b;
        return (c25505f == null || (c25535p0 = c25505f.f71374b) == null) ? null : c25535p0.f71442b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        boolean z = true;
        if (!(!(this.f270b.f71373a.getBackground() instanceof RippleDrawable)) || !super.hasOverlappingRendering()) {
            z = false;
        }
        return z;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f269a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f269a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3367a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3367a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3365c(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3367a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f269a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f269a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3364d(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C25505f c25505f = this.f270b;
        if (c25505f != null) {
            c25505f.m3363e(mode);
        }
    }
}
