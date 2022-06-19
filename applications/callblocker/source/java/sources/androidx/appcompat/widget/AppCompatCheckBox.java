package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.AbstractC0630j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckBox.class */
public class AppCompatCheckBox extends CheckBox implements AbstractC0594t, AbstractC0630j {

    /* renamed from: a */
    private final C0349h f985a;

    /* renamed from: b */
    private final C0347f f986b;

    /* renamed from: c */
    private final C0362t f987c;

    public AppCompatCheckBox(Context context) {
        this(context, null);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f985a = new C0349h(this);
        this.f985a.m21317a(attributeSet, i);
        this.f986b = new C0347f(this);
        this.f986b.m21327a(attributeSet, i);
        this.f987c = new C0362t(this);
        this.f987c.m21255a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f986b != null) {
            this.f986b.m21323c();
        }
        if (this.f987c != null) {
            this.f987c.m21250b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        int i = compoundPaddingLeft;
        if (this.f985a != null) {
            i = this.f985a.m21320a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f986b != null ? this.f986b.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f986b != null ? this.f986b.m21326b() : null;
    }

    @Override // androidx.core.widget.AbstractC0630j
    public ColorStateList getSupportButtonTintList() {
        return this.f985a != null ? this.f985a.m21321a() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.f985a != null ? this.f985a.m21316b() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f986b != null) {
            this.f986b.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f986b != null) {
            this.f986b.m21331a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0094a.m22275b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.f985a != null) {
            this.f985a.m21315c();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f986b != null) {
            this.f986b.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f986b != null) {
            this.f986b.m21329a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0630j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        if (this.f985a != null) {
            this.f985a.m21319a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0630j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        if (this.f985a != null) {
            this.f985a.m21318a(mode);
        }
    }
}
