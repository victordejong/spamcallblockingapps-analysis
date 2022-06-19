package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.AbstractC0607j;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public class C0332f extends CheckBox implements AbstractC0551t, AbstractC0607j {
    private final C0331e mBackgroundTintHelper;
    private final C0334h mCompoundButtonHelper;
    private final C0349v mTextHelper;

    public C0332f(Context context) {
        this(context, null);
    }

    public C0332f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.checkboxStyle);
    }

    public C0332f(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.mCompoundButtonHelper = new C0334h(this);
        this.mCompoundButtonHelper.m7078a(attributeSet, i);
        this.mBackgroundTintHelper = new C0331e(this);
        this.mBackgroundTintHelper.m7088a(attributeSet, i);
        this.mTextHelper = new C0349v(this);
        this.mTextHelper.m7016a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0334h c0334h = this.mCompoundButtonHelper;
        int i = compoundPaddingLeft;
        if (c0334h != null) {
            i = c0334h.m7081a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.mBackgroundTintHelper;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.mBackgroundTintHelper;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0334h c0334h = this.mCompoundButtonHelper;
        return c0334h != null ? c0334h.m7082a() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0334h c0334h = this.mCompoundButtonHelper;
        return c0334h != null ? c0334h.m7077b() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.mBackgroundTintHelper;
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
        C0334h c0334h = this.mCompoundButtonHelper;
        if (c0334h != null) {
            c0334h.m7076c();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0607j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0334h c0334h = this.mCompoundButtonHelper;
        if (c0334h != null) {
            c0334h.m7080a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0607j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0334h c0334h = this.mCompoundButtonHelper;
        if (c0334h != null) {
            c0334h.m7079a(mode);
        }
    }
}
