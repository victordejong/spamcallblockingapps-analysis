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
import androidx.appcompat.C0083a;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.AbstractC0621b;
import androidx.core.widget.C0628i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC0594t, AbstractC0621b {

    /* renamed from: a */
    private final C0347f f983a;

    /* renamed from: b */
    private final C0362t f984b;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f983a = new C0347f(this);
        this.f983a.m21327a(attributeSet, i);
        this.f984b = new C0362t(this);
        this.f984b.m21255a(attributeSet, i);
        this.f984b.m21250b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f983a != null) {
            this.f983a.m21323c();
        }
        if (this.f984b != null) {
            this.f984b.m21250b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        return f2184d ? super.getAutoSizeMaxTextSize() : this.f984b != null ? this.f984b.m21243h() : -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        return f2184d ? super.getAutoSizeMinTextSize() : this.f984b != null ? this.f984b.m21244g() : -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        return f2184d ? super.getAutoSizeStepGranularity() : this.f984b != null ? this.f984b.m21245f() : -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        return f2184d ? super.getAutoSizeTextAvailableSizes() : this.f984b != null ? this.f984b.m21242i() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 1;
        if (!f2184d) {
            i = this.f984b != null ? this.f984b.m21246e() : 0;
        } else if (super.getAutoSizeTextType() != 1) {
            i = 0;
        }
        return i;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f983a != null ? this.f983a.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f983a != null ? this.f983a.m21326b() : null;
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
        if (this.f984b != null) {
            this.f984b.m21252a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f984b == null || f2184d || !this.f984b.m21247d()) {
            return;
        }
        this.f984b.m21248c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f2184d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (this.f984b == null) {
        } else {
            this.f984b.m21264a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (f2184d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (this.f984b == null) {
        } else {
            this.f984b.m21251a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2184d) {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else if (this.f984b == null) {
        } else {
            this.f984b.m21266a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f983a != null) {
            this.f983a.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f983a != null) {
            this.f983a.m21331a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0628i.m20140a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        if (this.f984b != null) {
            this.f984b.m21253a(z);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f983a != null) {
            this.f983a.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f983a != null) {
            this.f983a.m21329a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f984b != null) {
            this.f984b.m21263a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2184d) {
            super.setTextSize(i, f);
        } else if (this.f984b == null) {
        } else {
            this.f984b.m21265a(i, f);
        }
    }
}
