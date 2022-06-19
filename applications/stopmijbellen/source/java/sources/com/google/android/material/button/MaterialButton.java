package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.C0226f;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p005a4.C0013a;
import p005a4.C0016b;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p097g.C2788a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p144k3.C3322a;
import p163m0.C3589v;
import p163m0.C3611y;
import p216r0.AbstractC4178a;
import p262v3.C4634p;
import p262v3.C4638t;
import p304z3.C5071c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends C0226f implements Checkable, AbstractC0841m {

    /* renamed from: q */
    public static final int[] f6370q = {16842911};

    /* renamed from: r */
    public static final int[] f6371r = {16842912};

    /* renamed from: d */
    public final C3322a f6372d;

    /* renamed from: f */
    public AbstractC1708b f6374f;

    /* renamed from: g */
    public PorterDuff.Mode f6375g;

    /* renamed from: h */
    public ColorStateList f6376h;

    /* renamed from: i */
    public Drawable f6377i;

    /* renamed from: j */
    public int f6378j;

    /* renamed from: k */
    public int f6379k;

    /* renamed from: l */
    public int f6380l;

    /* renamed from: m */
    public int f6381m;

    /* renamed from: p */
    public int f6384p;

    /* renamed from: e */
    public final LinkedHashSet<AbstractC1707a> f6373e = new LinkedHashSet<>();

    /* renamed from: n */
    public boolean f6382n = false;

    /* renamed from: o */
    public boolean f6383o = false;

    /* renamed from: com.google.android.material.button.MaterialButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$a.class */
    public interface AbstractC1707a {
        /* renamed from: a */
        void mo4708a(MaterialButton materialButton, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$b.class */
    public interface AbstractC1708b {
    }

    /* renamed from: com.google.android.material.button.MaterialButton$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$c.class */
    public static class C1709c extends AbstractC4178a {
        public static final Parcelable.Creator<C1709c> CREATOR = new C1710a();

        /* renamed from: c */
        public boolean f6385c;

        /* renamed from: com.google.android.material.button.MaterialButton$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$c$a.class */
        public static final class C1710a implements Parcelable.ClassLoaderCreator<C1709c> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1709c(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1709c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1709c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1709c[i];
            }
        }

        public C1709c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                C1709c.class.getClassLoader();
            }
            this.f6385c = parcel.readInt() != 1 ? false : true;
        }

        public C1709c(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f6385c ? 1 : 0);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130969279, 2131887050), attributeSet, 2130969279);
        boolean z = false;
        Context context2 = getContext();
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11036q, 2130969279, 2131887050, new int[0]);
        this.f6381m = m687d.getDimensionPixelSize(12, 0);
        this.f6375g = C4638t.m684b(m687d.getInt(15, -1), PorterDuff.Mode.SRC_IN);
        this.f6376h = C5071c.m72a(getContext(), m687d, 14);
        this.f6377i = C5071c.m70c(getContext(), m687d, 10);
        this.f6384p = m687d.getInteger(11, 1);
        this.f6378j = m687d.getDimensionPixelSize(13, 0);
        C3322a c3322a = new C3322a(this, C0827i.m7304b(context2, attributeSet, 2130969279, 2131887050).m7299a());
        this.f6372d = c3322a;
        c3322a.f11257c = m687d.getDimensionPixelOffset(1, 0);
        c3322a.f11258d = m687d.getDimensionPixelOffset(2, 0);
        c3322a.f11259e = m687d.getDimensionPixelOffset(3, 0);
        c3322a.f11260f = m687d.getDimensionPixelOffset(4, 0);
        if (m687d.hasValue(8)) {
            int dimensionPixelSize = m687d.getDimensionPixelSize(8, -1);
            c3322a.f11261g = dimensionPixelSize;
            c3322a.m2381e(c3322a.f11256b.m7300f(dimensionPixelSize));
            c3322a.f11270p = true;
        }
        c3322a.f11262h = m687d.getDimensionPixelSize(20, 0);
        c3322a.f11263i = C4638t.m684b(m687d.getInt(7, -1), PorterDuff.Mode.SRC_IN);
        c3322a.f11264j = C5071c.m72a(getContext(), m687d, 6);
        c3322a.f11265k = C5071c.m72a(getContext(), m687d, 19);
        c3322a.f11266l = C5071c.m72a(getContext(), m687d, 16);
        c3322a.f11271q = m687d.getBoolean(5, false);
        c3322a.f11273s = m687d.getDimensionPixelSize(9, 0);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2069f = C3589v.C3594e.m2069f(this);
        int paddingTop = getPaddingTop();
        int m2070e = C3589v.C3594e.m2070e(this);
        int paddingBottom = getPaddingBottom();
        if (m687d.hasValue(0)) {
            c3322a.f11269o = true;
            setSupportBackgroundTintList(c3322a.f11264j);
            setSupportBackgroundTintMode(c3322a.f11263i);
        } else {
            c3322a.m2379g();
        }
        C3589v.C3594e.m2064k(this, m2069f + c3322a.f11257c, paddingTop + c3322a.f11259e, m2070e + c3322a.f11258d, paddingBottom + c3322a.f11260f);
        m687d.recycle();
        setCompoundDrawablePadding(this.f6381m);
        m4717g(this.f6377i != null ? true : z);
    }

    private String getA11yClassName() {
        return (m4723a() ? CompoundButton.class : Button.class).getName();
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

    /* renamed from: a */
    public boolean m4723a() {
        C3322a c3322a = this.f6372d;
        return c3322a != null && c3322a.f11271q;
    }

    /* renamed from: b */
    public final boolean m4722b() {
        int i = this.f6384p;
        return i == 3 || i == 4;
    }

    /* renamed from: c */
    public final boolean m4721c() {
        int i = this.f6384p;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m4720d() {
        int i = this.f6384p;
        return i == 16 || i == 32;
    }

    /* renamed from: e */
    public final boolean m4719e() {
        C3322a c3322a = this.f6372d;
        return c3322a != null && !c3322a.f11269o;
    }

    /* renamed from: f */
    public final void m4718f() {
        if (m4721c()) {
            setCompoundDrawablesRelative(this.f6377i, null, null, null);
        } else if (m4722b()) {
            setCompoundDrawablesRelative(null, null, this.f6377i, null);
        } else if (!m4720d()) {
        } else {
            setCompoundDrawablesRelative(null, this.f6377i, null, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bb, code lost:
        if (r0 == r7.f6377i) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ce, code lost:
        if (r0 == r7.f6377i) goto L26;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4717g(boolean r8) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.m4717g(boolean):void");
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
        return m4719e() ? this.f6372d.f11261g : 0;
    }

    public Drawable getIcon() {
        return this.f6377i;
    }

    public int getIconGravity() {
        return this.f6384p;
    }

    public int getIconPadding() {
        return this.f6381m;
    }

    public int getIconSize() {
        return this.f6378j;
    }

    public ColorStateList getIconTint() {
        return this.f6376h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f6375g;
    }

    public int getInsetBottom() {
        return this.f6372d.f11260f;
    }

    public int getInsetTop() {
        return this.f6372d.f11259e;
    }

    public ColorStateList getRippleColor() {
        return m4719e() ? this.f6372d.f11266l : null;
    }

    public C0827i getShapeAppearanceModel() {
        if (m4719e()) {
            return this.f6372d.f11256b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        return m4719e() ? this.f6372d.f11265k : null;
    }

    public int getStrokeWidth() {
        return m4719e() ? this.f6372d.f11262h : 0;
    }

    @Override // androidx.appcompat.widget.C0226f
    public ColorStateList getSupportBackgroundTintList() {
        return m4719e() ? this.f6372d.f11264j : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.C0226f
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m4719e() ? this.f6372d.f11263i : super.getSupportBackgroundTintMode();
    }

    /* renamed from: h */
    public final void m4716h(int i, int i2) {
        if (this.f6377i == null || getLayout() == null) {
            return;
        }
        if (!m4721c() && !m4722b()) {
            if (!m4720d()) {
                return;
            }
            this.f6379k = 0;
            if (this.f6384p == 16) {
                this.f6380l = 0;
                m4717g(false);
                return;
            }
            int i3 = this.f6378j;
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.f6377i.getIntrinsicHeight();
            }
            int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.f6381m) - getPaddingBottom()) / 2;
            if (this.f6380l == textHeight) {
                return;
            }
            this.f6380l = textHeight;
            m4717g(false);
            return;
        }
        this.f6380l = 0;
        int i5 = this.f6384p;
        boolean z = true;
        if (i5 == 1 || i5 == 3) {
            this.f6379k = 0;
            m4717g(false);
            return;
        }
        int i6 = this.f6378j;
        int i7 = i6;
        if (i6 == 0) {
            i7 = this.f6377i.getIntrinsicWidth();
        }
        int textWidth = getTextWidth();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2070e = (((((i - textWidth) - C3589v.C3594e.m2070e(this)) - i7) - this.f6381m) - C3589v.C3594e.m2069f(this)) / 2;
        boolean z2 = C3589v.C3594e.m2071d(this) == 1;
        if (this.f6384p != 4) {
            z = false;
        }
        int i8 = m2070e;
        if (z2 != z) {
            i8 = -m2070e;
        }
        if (this.f6379k == i8) {
            return;
        }
        this.f6379k = i8;
        m4717g(false);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f6382n;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m4719e()) {
            C3102d.m2644H(this, this.f6372d.m2384b());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m4723a()) {
            Button.mergeDrawableStates(onCreateDrawableState, f6370q);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, f6371r);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.C0226f, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.C0226f, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(m4723a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.C0226f, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C3322a c3322a;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (c3322a = this.f6372d) == null || (drawable = c3322a.f11267m) == null) {
            return;
        }
        drawable.setBounds(c3322a.f11257c, c3322a.f11259e, (i3 - i) - c3322a.f11258d, (i4 - i2) - c3322a.f11260f);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1709c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1709c c1709c = (C1709c) parcelable;
        super.onRestoreInstanceState(c1709c.f13167a);
        setChecked(c1709c.f6385c);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        C1709c c1709c = new C1709c(super.onSaveInstanceState());
        c1709c.f6385c = this.f6382n;
        return c1709c;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m4716h(i, i2);
    }

    @Override // androidx.appcompat.widget.C0226f, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m4716h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f6377i != null) {
            if (!this.f6377i.setState(getDrawableState())) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!m4719e()) {
            super.setBackgroundColor(i);
            return;
        }
        C3322a c3322a = this.f6372d;
        if (c3322a.m2384b() == null) {
            return;
        }
        c3322a.m2384b().setTint(i);
    }

    @Override // androidx.appcompat.widget.C0226f, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m4719e()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            C3322a c3322a = this.f6372d;
            c3322a.f11269o = true;
            c3322a.f11255a.setSupportBackgroundTintList(c3322a.f11264j);
            c3322a.f11255a.setSupportBackgroundTintMode(c3322a.f11263i);
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.C0226f, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C2788a.m3015b(getContext(), i) : null);
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
        if (m4719e()) {
            this.f6372d.f11271q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!m4723a() || !isEnabled() || this.f6382n == z) {
            return;
        }
        this.f6382n = z;
        refreshDrawableState();
        if (this.f6383o) {
            return;
        }
        this.f6383o = true;
        Iterator<AbstractC1707a> it2 = this.f6373e.iterator();
        while (it2.hasNext()) {
            it2.next().mo4708a(this, this.f6382n);
        }
        this.f6383o = false;
    }

    public void setCornerRadius(int i) {
        if (m4719e()) {
            C3322a c3322a = this.f6372d;
            if (c3322a.f11270p && c3322a.f11261g == i) {
                return;
            }
            c3322a.f11261g = i;
            c3322a.f11270p = true;
            c3322a.m2381e(c3322a.f11256b.m7300f(i));
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m4719e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m4719e()) {
            C0822f m2384b = this.f6372d.m2384b();
            C0822f.C0824b c0824b = m2384b.f3010a;
            if (c0824b.f3048o == f) {
                return;
            }
            c0824b.f3048o = f;
            m2384b.m7307x();
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f6377i != drawable) {
            this.f6377i = drawable;
            m4717g(true);
            m4716h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f6384p != i) {
            this.f6384p = i;
            m4716h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.f6381m != i) {
            this.f6381m = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C2788a.m3015b(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.f6378j == i) {
                return;
            }
            this.f6378j = i;
            m4717g(true);
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f6376h != colorStateList) {
            this.f6376h = colorStateList;
            m4717g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f6375g != mode) {
            this.f6375g = mode;
            m4717g(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C2788a.m3016a(getContext(), i));
    }

    public void setInsetBottom(int i) {
        C3322a c3322a = this.f6372d;
        c3322a.m2380f(c3322a.f11259e, i);
    }

    public void setInsetTop(int i) {
        C3322a c3322a = this.f6372d;
        c3322a.m2380f(i, c3322a.f11260f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(AbstractC1708b abstractC1708b) {
        this.f6374f = abstractC1708b;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        AbstractC1708b abstractC1708b = this.f6374f;
        if (abstractC1708b != null) {
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m4719e()) {
            C3322a c3322a = this.f6372d;
            if (c3322a.f11266l == colorStateList) {
                return;
            }
            c3322a.f11266l = colorStateList;
            boolean z = C3322a.f11253t;
            if (z && (c3322a.f11255a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) c3322a.f11255a.getBackground()).setColor(C0016b.m8930a(colorStateList));
            } else if (z || !(c3322a.f11255a.getBackground() instanceof C0013a)) {
            } else {
                ((C0013a) c3322a.f11255a.getBackground()).setTintList(C0016b.m8930a(colorStateList));
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (m4719e()) {
            setRippleColor(C2788a.m3016a(getContext(), i));
        }
    }

    @Override // p029c4.AbstractC0841m
    public void setShapeAppearanceModel(C0827i c0827i) {
        if (m4719e()) {
            this.f6372d.m2381e(c0827i);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m4719e()) {
            C3322a c3322a = this.f6372d;
            c3322a.f11268n = z;
            c3322a.m2378h();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m4719e()) {
            C3322a c3322a = this.f6372d;
            if (c3322a.f11265k == colorStateList) {
                return;
            }
            c3322a.f11265k = colorStateList;
            c3322a.m2378h();
        }
    }

    public void setStrokeColorResource(int i) {
        if (m4719e()) {
            setStrokeColor(C2788a.m3016a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m4719e()) {
            C3322a c3322a = this.f6372d;
            if (c3322a.f11262h == i) {
                return;
            }
            c3322a.f11262h = i;
            c3322a.m2378h();
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m4719e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.C0226f
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!m4719e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        C3322a c3322a = this.f6372d;
        if (c3322a.f11264j == colorStateList) {
            return;
        }
        c3322a.f11264j = colorStateList;
        if (c3322a.m2384b() == null) {
            return;
        }
        c3322a.m2384b().setTintList(c3322a.f11264j);
    }

    @Override // androidx.appcompat.widget.C0226f
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!m4719e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        C3322a c3322a = this.f6372d;
        if (c3322a.f11263i == mode) {
            return;
        }
        c3322a.f11263i = mode;
        if (c3322a.m2384b() == null || c3322a.f11263i == null) {
            return;
        }
        c3322a.m2384b().setTintMode(c3322a.f11263i);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f6382n);
    }
}
