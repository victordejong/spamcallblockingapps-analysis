package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.core.widget.AbstractC0642d;
import androidx.core.widget.AbstractC0655n;
import androidx.core.widget.C0649k;
import p020b.p021a.C1423a;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC1678v, AbstractC0642d, AbstractC0655n {

    /* renamed from: d */
    private final C0283d f886d;

    /* renamed from: e */
    private final C0308m f887e;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0283d c0283d = new C0283d(this);
        this.f886d = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f887e = c0308m;
        c0308m.m34849m(attributeSet, i);
        c0308m.m34860b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f886d;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f887e;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34857e();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeMinTextSize();
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34856f();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeStepGranularity();
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34855g();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0308m c0308m = this.f887e;
        return c0308m != null ? c0308m.m34854h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC0642d.f3097a) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return 0;
        }
        return c0308m.m34853i();
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f886d;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f886d;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f887e.m34852j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f887e.m34851k();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0308m c0308m = this.f887e;
        if (c0308m != null) {
            c0308m.m34847o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0308m c0308m = this.f887e;
        if (c0308m == null || AbstractC0642d.f3097a || !c0308m.m34850l()) {
            return;
        }
        this.f887e.m34859c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34842t(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34841u(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34840v(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f886d;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f886d;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0649k.m33072s(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C0308m c0308m = this.f887e;
        if (c0308m != null) {
            c0308m.m34843s(z);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f886d;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f886d;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0655n
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f887e.m34839w(colorStateList);
        this.f887e.m34860b();
    }

    @Override // androidx.core.widget.AbstractC0655n
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f887e.m34838x(mode);
        this.f887e.m34860b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0308m c0308m = this.f887e;
        if (c0308m != null) {
            c0308m.m34845q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (AbstractC0642d.f3097a) {
            super.setTextSize(i, f);
            return;
        }
        C0308m c0308m = this.f887e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34864A(i, f);
    }
}
