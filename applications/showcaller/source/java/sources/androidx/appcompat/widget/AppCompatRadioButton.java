package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.core.widget.AbstractC0654m;
import p020b.p021a.C1423a;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRadioButton.class */
public class AppCompatRadioButton extends RadioButton implements AbstractC0654m, AbstractC1678v {

    /* renamed from: d */
    private final C0285e f906d;

    /* renamed from: e */
    private final C0283d f907e;

    /* renamed from: f */
    private final C0308m f908f;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0285e c0285e = new C0285e(this);
        this.f906d = c0285e;
        c0285e.m34971e(attributeSet, i);
        C0283d c0283d = new C0283d(this);
        this.f907e = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f908f = c0308m;
        c0308m.m34849m(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f907e;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f908f;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0285e c0285e = this.f906d;
        int i = compoundPaddingLeft;
        if (c0285e != null) {
            i = c0285e.m34974b(compoundPaddingLeft);
        }
        return i;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f907e;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f907e;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // androidx.core.widget.AbstractC0654m
    public ColorStateList getSupportButtonTintList() {
        C0285e c0285e = this.f906d;
        return c0285e != null ? c0285e.m34973c() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0285e c0285e = this.f906d;
        return c0285e != null ? c0285e.m34972d() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f907e;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f907e;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C1433a.m30126d(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0285e c0285e = this.f906d;
        if (c0285e != null) {
            c0285e.m34970f();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f907e;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f907e;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0654m
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0285e c0285e = this.f906d;
        if (c0285e != null) {
            c0285e.m34969g(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0654m
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0285e c0285e = this.f906d;
        if (c0285e != null) {
            c0285e.m34968h(mode);
        }
    }
}
