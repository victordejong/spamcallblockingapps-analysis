package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton implements AbstractC1678v {

    /* renamed from: d */
    private final C0283d f945d;

    /* renamed from: e */
    private final C0308m f946e;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0283d c0283d = new C0283d(this);
        this.f945d = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f946e = c0308m;
        c0308m.m34849m(attributeSet, i);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f945d;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f946e;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f945d;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f945d;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f945d;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f945d;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f945d;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f945d;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }
}
