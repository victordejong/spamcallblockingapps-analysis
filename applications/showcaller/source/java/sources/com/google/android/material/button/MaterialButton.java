package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.widget.C0649k;
import androidx.customview.view.AbsSavedState;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1942i;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton implements Checkable, AbstractC1962p {

    /* renamed from: f */
    private static final int[] f36328f = {16842911};

    /* renamed from: g */
    private static final int[] f36329g = {16842912};

    /* renamed from: h */
    private static final int f36330h = C1895k.Widget_MaterialComponents_Button;

    /* renamed from: i */
    private final C8050a f36331i;

    /* renamed from: j */
    private final LinkedHashSet<AbstractC8042a> f36332j;

    /* renamed from: k */
    private AbstractC8043b f36333k;

    /* renamed from: l */
    private PorterDuff.Mode f36334l;

    /* renamed from: m */
    private ColorStateList f36335m;

    /* renamed from: n */
    private Drawable f36336n;

    /* renamed from: o */
    private int f36337o;

    /* renamed from: p */
    private int f36338p;

    /* renamed from: q */
    private int f36339q;

    /* renamed from: r */
    private int f36340r;

    /* renamed from: s */
    private boolean f36341s;

    /* renamed from: t */
    private boolean f36342t;

    /* renamed from: u */
    private int f36343u;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8041a();

        /* renamed from: f */
        boolean f36344f;

        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState$a.class */
        static final class C8041a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8041a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            m5383b(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m5383b(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f36344f = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f36344f ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButton$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton$a.class */
    public interface AbstractC8042a {
        /* renamed from: a */
        void mo5355a(MaterialButton materialButton, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.button.MaterialButton$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton$b.class */
    public interface AbstractC8043b {
        /* renamed from: a */
        void mo5348a(MaterialButton materialButton, boolean z);
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: c */
    private boolean m5392c() {
        int i = this.f36343u;
        return i == 3 || i == 4;
    }

    /* renamed from: d */
    private boolean m5391d() {
        int i = this.f36343u;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: e */
    private boolean m5390e() {
        int i = this.f36343u;
        return i == 16 || i == 32;
    }

    /* renamed from: f */
    private boolean m5389f() {
        boolean z = true;
        if (C1679w.m29346C(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    private boolean m5388g() {
        C8050a c8050a = this.f36331i;
        return c8050a != null && !c8050a.m5323o();
    }

    private String getA11yClassName() {
        return (m5393b() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(str), getLayout().getEllipsizedWidth());
    }

    /* renamed from: i */
    private void m5386i() {
        if (m5391d()) {
            C0649k.m33079l(this, this.f36336n, null, null, null);
        } else if (m5392c()) {
            C0649k.m33079l(this, null, null, this.f36336n, null);
        } else if (!m5390e()) {
        } else {
            C0649k.m33079l(this, null, this.f36336n, null, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
        if (r0 != r7.f36336n) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m5385j(boolean r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.m5385j(boolean):void");
    }

    /* renamed from: k */
    private void m5384k(int i, int i2) {
        if (this.f36336n == null || getLayout() == null) {
            return;
        }
        if (!m5391d() && !m5392c()) {
            if (!m5390e()) {
                return;
            }
            this.f36338p = 0;
            if (this.f36343u == 16) {
                this.f36339q = 0;
                m5385j(false);
                return;
            }
            int i3 = this.f36337o;
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.f36336n.getIntrinsicHeight();
            }
            int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.f36340r) - getPaddingBottom()) / 2;
            if (this.f36339q == textHeight) {
                return;
            }
            this.f36339q = textHeight;
            m5385j(false);
            return;
        }
        this.f36339q = 0;
        int i5 = this.f36343u;
        boolean z = true;
        if (i5 == 1 || i5 == 3) {
            this.f36338p = 0;
            m5385j(false);
            return;
        }
        int i6 = this.f36337o;
        int i7 = i6;
        if (i6 == 0) {
            i7 = this.f36336n.getIntrinsicWidth();
        }
        int textWidth = (((((i - getTextWidth()) - C1679w.m29336H(this)) - i7) - this.f36340r) - C1679w.m29334I(this)) / 2;
        boolean m5389f = m5389f();
        if (this.f36343u != 4) {
            z = false;
        }
        int i8 = textWidth;
        if (m5389f != z) {
            i8 = -textWidth;
        }
        if (this.f36338p == i8) {
            return;
        }
        this.f36338p = i8;
        m5385j(false);
    }

    /* renamed from: a */
    public void m5394a(AbstractC8042a abstractC8042a) {
        this.f36332j.add(abstractC8042a);
    }

    /* renamed from: b */
    public boolean m5393b() {
        C8050a c8050a = this.f36331i;
        return c8050a != null && c8050a.m5322p();
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
        return m5388g() ? this.f36331i.m5336b() : 0;
    }

    public Drawable getIcon() {
        return this.f36336n;
    }

    public int getIconGravity() {
        return this.f36343u;
    }

    public int getIconPadding() {
        return this.f36340r;
    }

    public int getIconSize() {
        return this.f36337o;
    }

    public ColorStateList getIconTint() {
        return this.f36335m;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f36334l;
    }

    public int getInsetBottom() {
        return this.f36331i.m5335c();
    }

    public int getInsetTop() {
        return this.f36331i.m5334d();
    }

    public ColorStateList getRippleColor() {
        return m5388g() ? this.f36331i.m5330h() : null;
    }

    public C1946m getShapeAppearanceModel() {
        if (m5388g()) {
            return this.f36331i.m5329i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        return m5388g() ? this.f36331i.m5328j() : null;
    }

    public int getStrokeWidth() {
        return m5388g() ? this.f36331i.m5327k() : 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        return m5388g() ? this.f36331i.m5326l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m5388g() ? this.f36331i.m5325m() : super.getSupportBackgroundTintMode();
    }

    /* renamed from: h */
    public void m5387h(AbstractC8042a abstractC8042a) {
        this.f36332j.remove(abstractC8042a);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f36341s;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m5388g()) {
            C1942i.m28579f(this, this.f36331i.m5332f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m5393b()) {
            Button.mergeDrawableStates(onCreateDrawableState, f36328f);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, f36329g);
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
        accessibilityNodeInfo.setCheckable(m5393b());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C8050a c8050a;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (c8050a = this.f36331i) == null) {
            return;
        }
        c8050a.m5340H(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        setChecked(savedState.f36344f);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f36344f = this.f36341s;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m5384k(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m5384k(getMeasuredWidth(), getMeasuredHeight());
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
        if (m5388g()) {
            this.f36331i.m5320r(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m5388g()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f36331i.m5319s();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C1433a.m30126d(getContext(), i) : null);
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
        if (m5388g()) {
            this.f36331i.m5318t(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!m5393b() || !isEnabled() || this.f36341s == z) {
            return;
        }
        this.f36341s = z;
        refreshDrawableState();
        if (this.f36342t) {
            return;
        }
        this.f36342t = true;
        Iterator<AbstractC8042a> it = this.f36332j.iterator();
        while (it.hasNext()) {
            it.next().mo5355a(this, this.f36341s);
        }
        this.f36342t = false;
    }

    public void setCornerRadius(int i) {
        if (m5388g()) {
            this.f36331i.m5317u(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m5388g()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m5388g()) {
            this.f36331i.m5332f().m28626Z(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f36336n != drawable) {
            this.f36336n = drawable;
            m5385j(true);
            m5384k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f36343u != i) {
            this.f36343u = i;
            m5384k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.f36340r != i) {
            this.f36340r = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.f36337o == i) {
                return;
            }
            this.f36337o = i;
            m5385j(true);
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f36335m != colorStateList) {
            this.f36335m = colorStateList;
            m5385j(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f36334l != mode) {
            this.f36334l = mode;
            m5385j(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C1433a.m30127c(getContext(), i));
    }

    public void setInsetBottom(int i) {
        this.f36331i.m5316v(i);
    }

    public void setInsetTop(int i) {
        this.f36331i.m5315w(i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(AbstractC8043b abstractC8043b) {
        this.f36333k = abstractC8043b;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        AbstractC8043b abstractC8043b = this.f36333k;
        if (abstractC8043b != null) {
            abstractC8043b.mo5348a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m5388g()) {
            this.f36331i.m5314x(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (m5388g()) {
            setRippleColor(C1433a.m30127c(getContext(), i));
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        if (m5388g()) {
            this.f36331i.m5313y(c1946m);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m5388g()) {
            this.f36331i.m5312z(z);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m5388g()) {
            this.f36331i.m5347A(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (m5388g()) {
            setStrokeColor(C1433a.m30127c(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m5388g()) {
            this.f36331i.m5346B(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m5388g()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (m5388g()) {
            this.f36331i.m5345C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (m5388g()) {
            this.f36331i.m5344D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f36341s);
    }
}
