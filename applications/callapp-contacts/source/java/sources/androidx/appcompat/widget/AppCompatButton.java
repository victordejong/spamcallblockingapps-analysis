package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.C0142a;
import androidx.core.view.AbstractC0925u;
import androidx.core.widget.AbstractC0953b;
import androidx.core.widget.AbstractC0962j;
import androidx.core.widget.C0959h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC0925u, AbstractC0953b, AbstractC0962j {

    /* renamed from: a */
    private final C0390d f1136a;

    /* renamed from: b */
    private final C0399l f1137b;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0390d c0390d = new C0390d(this);
        this.f1136a = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0399l c0399l = new C0399l(this);
        this.f1137b = c0399l;
        c0399l.m45694a(attributeSet, i);
        c0399l.m45705a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0399l c0399l = this.f1137b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f3859d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1622d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f3859d) {
            return super.getAutoSizeMinTextSize();
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1621c);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f3859d) {
            return super.getAutoSizeStepGranularity();
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1620b);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f3859d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0399l c0399l = this.f1137b;
        return c0399l != null ? c0399l.f1599a.f1623e : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f3859d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return 0;
        }
        return c0399l.f1599a.f1619a;
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
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
        C0399l c0399l = this.f1137b;
        if (c0399l != null) {
            c0399l.m45691b();
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f1137b == null || f3859d || !this.f1137b.f1599a.m45673b()) {
            return;
        }
        this.f1137b.f1599a.m45688a();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f3859d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45702a(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f3859d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45692a(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f3859d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45704a(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0959h.m43961a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C0399l c0399l = this.f1137b;
        if (c0399l != null) {
            c0399l.m45693a(z);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1136a;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0962j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1137b.m45698a(colorStateList);
        this.f1137b.m45705a();
    }

    @Override // androidx.core.widget.AbstractC0962j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1137b.m45697a(mode);
        this.f1137b.m45705a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0399l c0399l = this.f1137b;
        if (c0399l != null) {
            c0399l.m45701a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f3859d) {
            super.setTextSize(i, f);
            return;
        }
        C0399l c0399l = this.f1137b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45703a(i, f);
    }
}
