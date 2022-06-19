package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.AbstractC0607j;
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
public class C0344q extends RadioButton implements AbstractC0551t, AbstractC0607j {

    /* renamed from: a */
    private final C0334h f1392a;

    /* renamed from: b */
    private final C0331e f1393b;

    /* renamed from: c */
    private final C0349v f1394c;

    public C0344q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.radioButtonStyle);
    }

    public C0344q(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.f1392a = new C0334h(this);
        this.f1392a.m7078a(attributeSet, i);
        this.f1393b = new C0331e(this);
        this.f1393b.m7088a(attributeSet, i);
        this.f1394c = new C0349v(this);
        this.f1394c.m7016a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.f1393b;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0349v c0349v = this.f1394c;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0334h c0334h = this.f1392a;
        int i = compoundPaddingLeft;
        if (c0334h != null) {
            i = c0334h.m7081a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.f1393b;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.f1393b;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0334h c0334h = this.f1392a;
        return c0334h != null ? c0334h.m7082a() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0334h c0334h = this.f1392a;
        return c0334h != null ? c0334h.m7077b() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.f1393b;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.f1393b;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0062a.m7983b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0334h c0334h = this.f1392a;
        if (c0334h != null) {
            c0334h.m7076c();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.f1393b;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.f1393b;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0607j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0334h c0334h = this.f1392a;
        if (c0334h != null) {
            c0334h.m7080a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0607j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0334h c0334h = this.f1392a;
        if (c0334h != null) {
            c0334h.m7079a(mode);
        }
    }
}
