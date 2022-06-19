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
import androidx.appcompat.C0051a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.AbstractC0598b;
import androidx.core.widget.C0605i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC0551t, AbstractC0598b {
    private final C0331e mBackgroundTintHelper;
    private final C0349v mTextHelper;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.mBackgroundTintHelper = new C0331e(this);
        this.mBackgroundTintHelper.m7088a(attributeSet, i);
        this.mTextHelper = new C0349v(this);
        this.mTextHelper.m7016a(attributeSet, i);
        this.mTextHelper.m7011b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
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

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f2027d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7004h();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f2027d) {
            return super.getAutoSizeMinTextSize();
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7005g();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f2027d) {
            return super.getAutoSizeStepGranularity();
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7006f();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f2027d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0349v c0349v = this.mTextHelper;
        return c0349v != null ? c0349v.m7003i() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (f2027d) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return 0;
        }
        return c0349v.m7007e();
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
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7013a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.mTextHelper == null || f2027d || !this.mTextHelper.m7008d()) {
            return;
        }
        this.mTextHelper.m7009c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f2027d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return;
        }
        c0349v.m7025a(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (f2027d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return;
        }
        c0349v.m7012a(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2027d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return;
        }
        c0349v.m7027a(i);
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

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7014a(z);
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

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7024a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2027d) {
            super.setTextSize(i, f);
            return;
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v == null) {
            return;
        }
        c0349v.m7026a(i, f);
    }
}
