package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.AbstractC0630j;
/* renamed from: androidx.appcompat.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o.class */
public class C0357o extends RadioButton implements AbstractC0594t, AbstractC0630j {

    /* renamed from: a */
    private final C0349h f1478a;

    /* renamed from: b */
    private final C0347f f1479b;

    /* renamed from: c */
    private final C0362t f1480c;

    public C0357o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.radioButtonStyle);
    }

    public C0357o(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f1478a = new C0349h(this);
        this.f1478a.m21317a(attributeSet, i);
        this.f1479b = new C0347f(this);
        this.f1479b.m21327a(attributeSet, i);
        this.f1480c = new C0362t(this);
        this.f1480c.m21255a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1479b != null) {
            this.f1479b.m21323c();
        }
        if (this.f1480c != null) {
            this.f1480c.m21250b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        int i = compoundPaddingLeft;
        if (this.f1478a != null) {
            i = this.f1478a.m21320a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f1479b != null ? this.f1479b.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f1479b != null ? this.f1479b.m21326b() : null;
    }

    @Override // androidx.core.widget.AbstractC0630j
    public ColorStateList getSupportButtonTintList() {
        return this.f1478a != null ? this.f1478a.m21321a() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.f1478a != null ? this.f1478a.m21316b() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f1479b != null) {
            this.f1479b.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f1479b != null) {
            this.f1479b.m21331a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0094a.m22275b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.f1478a != null) {
            this.f1478a.m21315c();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f1479b != null) {
            this.f1479b.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f1479b != null) {
            this.f1479b.m21329a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0630j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        if (this.f1478a != null) {
            this.f1478a.m21319a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0630j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        if (this.f1478a != null) {
            this.f1478a.m21318a(mode);
        }
    }
}
