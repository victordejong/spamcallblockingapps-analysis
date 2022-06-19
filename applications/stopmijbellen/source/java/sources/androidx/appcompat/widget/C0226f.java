package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import me.zhanghai.android.materialprogressbar.C3681R;
import p196p0.AbstractC3984b;
import p196p0.AbstractC3995i;
import p196p0.C3992g;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public class C0226f extends Button implements AbstractC3984b, AbstractC3995i {

    /* renamed from: a */
    public final C0221e f933a;

    /* renamed from: b */
    public final C0196a0 f934b;

    /* renamed from: c */
    public C0251m f935c;

    public C0226f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.buttonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0226f(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0221e c0221e = new C0221e(this);
        this.f933a = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f934b = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        c0196a0.m8586b();
        getEmojiTextViewHelper().m8467a(attributeSet, i);
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f935c == null) {
            this.f935c = new C0251m(this);
        }
        return this.f935c;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f933a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeMaxTextSize();
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f904e);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeMinTextSize();
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f903d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeStepGranularity();
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f902c);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0196a0 c0196a0 = this.f934b;
        return c0196a0 != null ? c0196a0.f826i.f905f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC3984b.f12534Q) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return 0;
        }
        return c0196a0.f826i.f900a;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f933a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f933a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        C0289x0 c0289x0 = this.f934b.f825h;
        return c0289x0 != null ? c0289x0.f1131a : null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        C0289x0 c0289x0 = this.f934b.f825h;
        return c0289x0 != null ? c0289x0.f1132b : null;
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
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null || AbstractC3984b.f12534Q) {
            return;
        }
        c0196a0.f826i.m8561a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null || AbstractC3984b.f12534Q || !c0196a0.m8584d()) {
            return;
        }
        this.f934b.f826i.m8561a();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8580h(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8579i(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8578j(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f933a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f933a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().f1015b.f14578a.mo542d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f1015b.f14578a.mo545a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z) {
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 != null) {
            c0196a0.f818a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f933a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f933a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    @Override // p196p0.AbstractC3995i
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f934b.m8577k(colorStateList);
        this.f934b.m8586b();
    }

    @Override // p196p0.AbstractC3995i
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f934b.m8576l(mode);
        this.f934b.m8586b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 != null) {
            c0196a0.m8582f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        boolean z = AbstractC3984b.f12534Q;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C0196a0 c0196a0 = this.f934b;
        if (c0196a0 == null || z || c0196a0.m8584d()) {
            return;
        }
        c0196a0.f826i.m8556f(i, f);
    }
}
