package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0628i;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4740h;
import com.google.android.material.p159q.C4743k;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton implements Checkable, AbstractC4758n {

    /* renamed from: a */
    private static final int[] f19865a = {16842911};

    /* renamed from: b */
    private static final int[] f19866b = {16842912};

    /* renamed from: c */
    private static final int f19867c = C4492a.C4503k.Widget_MaterialComponents_Button;

    /* renamed from: e */
    private final C4577a f19868e;

    /* renamed from: f */
    private final LinkedHashSet<AbstractC4575a> f19869f;

    /* renamed from: g */
    private AbstractC4576b f19870g;

    /* renamed from: h */
    private PorterDuff.Mode f19871h;

    /* renamed from: i */
    private ColorStateList f19872i;

    /* renamed from: j */
    private Drawable f19873j;

    /* renamed from: k */
    private int f19874k;

    /* renamed from: l */
    private int f19875l;

    /* renamed from: m */
    private int f19876m;

    /* renamed from: n */
    private boolean f19877n;

    /* renamed from: o */
    private boolean f19878o;

    /* renamed from: p */
    private int f19879p;

    /* renamed from: com.google.android.material.button.MaterialButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$a.class */
    public interface AbstractC4575a {
        /* renamed from: a */
        void m3503a(MaterialButton materialButton, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$b.class */
    interface AbstractC4576b {
        /* renamed from: a */
        void m3502a(MaterialButton materialButton, boolean z);
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f19867c), attributeSet, i);
        this.f19869f = new LinkedHashSet<>();
        this.f19877n = false;
        this.f19878o = false;
        Context context2 = getContext();
        TypedArray m2825a = C4702i.m2825a(context2, attributeSet, C4492a.C4504l.MaterialButton, i, f19867c, new int[0]);
        this.f19876m = m2825a.getDimensionPixelSize(C4492a.C4504l.MaterialButton_iconPadding, 0);
        this.f19871h = C4703j.m2816a(m2825a.getInt(C4492a.C4504l.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f19872i = C4718c.m2784a(getContext(), m2825a, C4492a.C4504l.MaterialButton_iconTint);
        this.f19873j = C4718c.m2780b(getContext(), m2825a, C4492a.C4504l.MaterialButton_icon);
        this.f19879p = m2825a.getInteger(C4492a.C4504l.MaterialButton_iconGravity, 1);
        this.f19874k = m2825a.getDimensionPixelSize(C4492a.C4504l.MaterialButton_iconSize, 0);
        this.f19868e = new C4577a(this, C4743k.m2673a(context2, attributeSet, i, f19867c).m2654a());
        this.f19868e.m3497a(m2825a);
        m2825a.recycle();
        setCompoundDrawablePadding(this.f19876m);
        m3508a(this.f19873j != null);
    }

    /* renamed from: a */
    private void m3508a(boolean z) {
        if (this.f19873j != null) {
            this.f19873j = C0535a.m20584g(this.f19873j).mutate();
            C0535a.m20595a(this.f19873j, this.f19872i);
            if (this.f19871h != null) {
                C0535a.m20592a(this.f19873j, this.f19871h);
            }
            this.f19873j.setBounds(this.f19875l, 0, (this.f19874k != 0 ? this.f19874k : this.f19873j.getIntrinsicWidth()) + this.f19875l, this.f19874k != 0 ? this.f19874k : this.f19873j.getIntrinsicHeight());
        }
        boolean z2 = this.f19879p == 1 || this.f19879p == 2;
        if (z) {
            m3506b(z2);
            return;
        }
        Drawable[] m20135b = C0628i.m20135b(this);
        if (!((z2 && m20135b[0] != this.f19873j) || (!z2 && m20135b[2] != this.f19873j))) {
            return;
        }
        m3506b(z2);
    }

    /* renamed from: b */
    private void m3507b() {
        boolean z = true;
        if (this.f19873j == null || getLayout() == null) {
            return;
        }
        if (this.f19879p == 1 || this.f19879p == 3) {
            this.f19875l = 0;
            m3508a(false);
            return;
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        int measuredWidth = (((((getMeasuredWidth() - Math.min((int) paint.measureText(str), getLayout().getEllipsizedWidth())) - C0595u.m20314j(this)) - (this.f19874k == 0 ? this.f19873j.getIntrinsicWidth() : this.f19874k)) - this.f19876m) - C0595u.m20316i(this)) / 2;
        boolean m3505c = m3505c();
        if (this.f19879p != 4) {
            z = false;
        }
        int i = measuredWidth;
        if (m3505c != z) {
            i = -measuredWidth;
        }
        if (this.f19875l == i) {
            return;
        }
        this.f19875l = i;
        m3508a(false);
    }

    /* renamed from: b */
    private void m3506b(boolean z) {
        if (z) {
            C0628i.m20141a(this, this.f19873j, null, null, null);
        } else {
            C0628i.m20141a(this, null, null, this.f19873j, null);
        }
    }

    /* renamed from: c */
    private boolean m3505c() {
        boolean z = true;
        if (C0595u.m20320g(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    private boolean m3504d() {
        return this.f19868e != null && !this.f19868e.m3492b();
    }

    private String getA11yClassName() {
        return (m3509a() ? CompoundButton.class : Button.class).getName();
    }

    /* renamed from: a */
    public boolean m3509a() {
        return this.f19868e != null && this.f19868e.m3477j();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        return m3504d() ? this.f19868e.m3479h() : 0;
    }

    public Drawable getIcon() {
        return this.f19873j;
    }

    public int getIconGravity() {
        return this.f19879p;
    }

    public int getIconPadding() {
        return this.f19876m;
    }

    public int getIconSize() {
        return this.f19874k;
    }

    public ColorStateList getIconTint() {
        return this.f19872i;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f19871h;
    }

    public ColorStateList getRippleColor() {
        return m3504d() ? this.f19868e.m3482e() : null;
    }

    public C4743k getShapeAppearanceModel() {
        if (m3504d()) {
            return this.f19868e.m3475l();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        return m3504d() ? this.f19868e.m3481f() : null;
    }

    public int getStrokeWidth() {
        return m3504d() ? this.f19868e.m3480g() : 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return m3504d() ? this.f19868e.m3487c() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m3504d() ? this.f19868e.m3483d() : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f19877n;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2682a(this, this.f19868e.m3478i());
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m3509a()) {
            mergeDrawableStates(onCreateDrawableState, f19865a);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f19866b);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(m3509a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || this.f19868e == null) {
            return;
        }
        this.f19868e.m3499a(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m3507b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m3507b();
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (m3504d()) {
            this.f19868e.m3500a(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m3504d()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            Log.w("MaterialButton", "Do not set the background; MaterialButton manages its own background drawable.");
            this.f19868e.m3501a();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = C0094a.m22275b(getContext(), i);
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (m3504d()) {
            this.f19868e.m3488b(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!m3509a() || !isEnabled() || this.f19877n == z) {
            return;
        }
        this.f19877n = z;
        refreshDrawableState();
        if (this.f19878o) {
            return;
        }
        this.f19878o = true;
        Iterator<AbstractC4575a> it = this.f19869f.iterator();
        while (it.hasNext()) {
            it.next().m3503a(this, this.f19877n);
        }
        this.f19878o = false;
    }

    public void setCornerRadius(int i) {
        if (m3504d()) {
            this.f19868e.m3486c(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m3504d()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m3504d()) {
            this.f19868e.m3478i().m2687r(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f19873j != drawable) {
            this.f19873j = drawable;
            m3508a(true);
        }
    }

    public void setIconGravity(int i) {
        if (this.f19879p != i) {
            this.f19879p = i;
            m3507b();
        }
    }

    public void setIconPadding(int i) {
        if (this.f19876m != i) {
            this.f19876m = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = C0094a.m22275b(getContext(), i);
        }
        setIcon(drawable);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f19874k == i) {
            return;
        }
        this.f19874k = i;
        m3508a(true);
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f19872i != colorStateList) {
            this.f19872i = colorStateList;
            m3508a(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f19871h != mode) {
            this.f19871h = mode;
            m3508a(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C0094a.m22277a(getContext(), i));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(AbstractC4576b abstractC4576b) {
        this.f19870g = abstractC4576b;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f19870g != null) {
            this.f19870g.m3502a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m3504d()) {
            this.f19868e.m3490b(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (m3504d()) {
            setRippleColor(C0094a.m22277a(getContext(), i));
        }
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        if (m3504d()) {
            this.f19868e.m3494a(c4743k);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m3504d()) {
            this.f19868e.m3493a(z);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m3504d()) {
            this.f19868e.m3485c(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (m3504d()) {
            setStrokeColor(C0094a.m22277a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m3504d()) {
            this.f19868e.m3491b(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m3504d()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (m3504d()) {
            this.f19868e.m3498a(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (m3504d()) {
            this.f19868e.m3496a(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f19877n);
    }
}
