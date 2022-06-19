package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
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
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
import androidx.core.widget.C0959h;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C14376a;
import com.google.android.material.p372i.C14604a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.p374k.C14678m;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton implements Checkable, AbstractC14695q {

    /* renamed from: f */
    private static final int[] f52713f = {16842911};

    /* renamed from: g */
    private static final int[] f52714g = {16842912};

    /* renamed from: h */
    private static final int f52715h = C14376a.C14387k.Widget_MaterialComponents_Button;

    /* renamed from: a */
    final C14472a f52716a;

    /* renamed from: b */
    final LinkedHashSet<AbstractC14464a> f52717b;

    /* renamed from: c */
    AbstractC14465b f52718c;

    /* renamed from: e */
    public Drawable f52719e;

    /* renamed from: i */
    private PorterDuff.Mode f52720i;

    /* renamed from: j */
    private ColorStateList f52721j;

    /* renamed from: k */
    private int f52722k;

    /* renamed from: l */
    private int f52723l;

    /* renamed from: m */
    private int f52724m;

    /* renamed from: n */
    private int f52725n;

    /* renamed from: o */
    private boolean f52726o;

    /* renamed from: p */
    private boolean f52727p;

    /* renamed from: q */
    private int f52728q;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.button.MaterialButton.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean checked;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.checked = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButton$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$a.class */
    public interface AbstractC14464a {
        /* renamed from: a */
        void mo11035a(MaterialButton materialButton, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButton$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$b.class */
    interface AbstractC14465b {
        /* renamed from: a */
        void mo11028a();
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    private String m11075a() {
        return (m11060m() ? CompoundButton.class : Button.class).getName();
    }

    /* renamed from: a */
    private void m11074a(int i, int i2) {
        if (this.f52719e == null || getLayout() == null) {
            return;
        }
        if (!m11063j() && !m11062k()) {
            if (!m11061l()) {
                return;
            }
            this.f52723l = 0;
            if (this.f52728q == 16) {
                this.f52724m = 0;
                m11072a(false);
                return;
            }
            int i3 = this.f52722k;
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.f52719e.getIntrinsicHeight();
            }
            int m11066g = (((((i2 - m11066g()) - getPaddingTop()) - i4) - this.f52725n) - getPaddingBottom()) / 2;
            if (this.f52724m == m11066g) {
                return;
            }
            this.f52724m = m11066g;
            m11072a(false);
            return;
        }
        this.f52724m = 0;
        int i5 = this.f52728q;
        boolean z = true;
        if (i5 == 1 || i5 == 3) {
            this.f52723l = 0;
            m11072a(false);
            return;
        }
        int i6 = this.f52722k;
        int i7 = i6;
        if (i6 == 0) {
            i7 = this.f52719e.getIntrinsicWidth();
        }
        int m11067f = (((((i - m11067f()) - C0926v.m44089j(this)) - i7) - this.f52725n) - C0926v.m44091i(this)) / 2;
        boolean m11065h = m11065h();
        if (this.f52728q != 4) {
            z = false;
        }
        int i8 = m11067f;
        if (m11065h != z) {
            i8 = -m11067f;
        }
        if (this.f52723l == i8) {
            return;
        }
        this.f52723l = i8;
        m11072a(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
        if (r0 != r7.f52719e) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m11072a(boolean r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.m11072a(boolean):void");
    }

    /* renamed from: f */
    private int m11067f() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(str), getLayout().getEllipsizedWidth());
    }

    /* renamed from: g */
    private int m11066g() {
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

    /* renamed from: h */
    private boolean m11065h() {
        return C0926v.m44097f(this) == 1;
    }

    /* renamed from: i */
    private void m11064i() {
        if (m11063j()) {
            C0959h.m43962a(this, this.f52719e, null, null, null);
        } else if (m11062k()) {
            C0959h.m43962a(this, null, null, this.f52719e, null);
        } else if (!m11061l()) {
        } else {
            C0959h.m43962a(this, null, this.f52719e, null, null);
        }
    }

    /* renamed from: j */
    private boolean m11063j() {
        int i = this.f52728q;
        return i == 1 || i == 2;
    }

    /* renamed from: k */
    private boolean m11062k() {
        int i = this.f52728q;
        return i == 3 || i == 4;
    }

    /* renamed from: l */
    private boolean m11061l() {
        int i = this.f52728q;
        return i == 16 || i == 32;
    }

    /* renamed from: m */
    private boolean m11060m() {
        C14472a c14472a = this.f52716a;
        return c14472a != null && c14472a.f52767r;
    }

    /* renamed from: a */
    public final void m11073a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* renamed from: b */
    public final int m11071b() {
        return this.f52722k;
    }

    /* renamed from: c */
    public final int m11070c() {
        if (m11068e()) {
            return this.f52716a.f52758i;
        }
        return 0;
    }

    /* renamed from: d */
    public final C14678m m11069d() {
        if (m11068e()) {
            return this.f52716a.f52752c;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    /* renamed from: e */
    public boolean m11068e() {
        C14472a c14472a = this.f52716a;
        return c14472a != null && !c14472a.f52765p;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        return m11068e() ? this.f52716a.f52760k : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m11068e() ? this.f52716a.f52759j : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f52726o;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m11068e()) {
            C14674i.m10435a(this, this.f52716a.m11023a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m11060m()) {
            mergeDrawableStates(onCreateDrawableState, f52713f);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f52714g);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(m11075a());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(m11075a());
        accessibilityNodeInfo.setCheckable(m11060m());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C14472a c14472a;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (c14472a = this.f52716a) == null || c14472a.f52763n == null) {
            return;
        }
        c14472a.f52763n.setBounds(c14472a.f52753d, c14472a.f52755f, (i3 - i) - c14472a.f52754e, (i4 - i2) - c14472a.f52756g);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.f52726o;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m11074a(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m11074a(getMeasuredWidth(), getMeasuredHeight());
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
        if (!m11068e()) {
            super.setBackgroundColor(i);
            return;
        }
        C14472a c14472a = this.f52716a;
        if (c14472a.m11023a(false) == null) {
            return;
        }
        c14472a.m11023a(false).setTint(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (m11068e()) {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            } else {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                this.f52716a.m11022b();
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C0153a.m46374b(getContext(), i) : null);
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
        if (m11068e()) {
            this.f52716a.f52767r = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!m11060m() || !isEnabled() || this.f52726o == z) {
            return;
        }
        this.f52726o = z;
        refreshDrawableState();
        if (this.f52727p) {
            return;
        }
        this.f52727p = true;
        Iterator<AbstractC14464a> it2 = this.f52717b.iterator();
        while (it2.hasNext()) {
            it2.next().mo11035a(this, this.f52726o);
        }
        this.f52727p = false;
    }

    public void setCornerRadius(int i) {
        if (m11068e()) {
            C14472a c14472a = this.f52716a;
            if (c14472a.f52766q && c14472a.f52757h == i) {
                return;
            }
            c14472a.f52757h = i;
            c14472a.f52766q = true;
            c14472a.m11024a(c14472a.f52752c.m10429a(i));
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m11068e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m11068e()) {
            this.f52716a.m11023a(false).m10439r(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f52719e != drawable) {
            this.f52719e = drawable;
            m11072a(true);
            m11074a(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f52728q != i) {
            this.f52728q = i;
            m11074a(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.f52725n != i) {
            this.f52725n = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C0153a.m46374b(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.f52722k == i) {
                return;
            }
            this.f52722k = i;
            m11072a(true);
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f52721j != colorStateList) {
            this.f52721j = colorStateList;
            m11072a(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f52720i != mode) {
            this.f52720i = mode;
            m11072a(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C0153a.m46375a(getContext(), i));
    }

    public void setInsetBottom(int i) {
        C14472a c14472a = this.f52716a;
        c14472a.m11026a(c14472a.f52755f, i);
    }

    public void setInsetTop(int i) {
        C14472a c14472a = this.f52716a;
        c14472a.m11026a(i, c14472a.f52756g);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        AbstractC14465b abstractC14465b = this.f52718c;
        if (abstractC14465b != null) {
            abstractC14465b.mo11028a();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m11068e()) {
            C14472a c14472a = this.f52716a;
            if (c14472a.f52762m == colorStateList) {
                return;
            }
            c14472a.f52762m = colorStateList;
            if (C14472a.f52750a && (c14472a.f52751b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) c14472a.f52751b.getBackground()).setColor(C14607b.m10633b(colorStateList));
            } else if (C14472a.f52750a || !(c14472a.f52751b.getBackground() instanceof C14604a)) {
            } else {
                ((C14604a) c14472a.f52751b.getBackground()).setTintList(C14607b.m10633b(colorStateList));
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (m11068e()) {
            setRippleColor(C0153a.m46375a(getContext(), i));
        }
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        if (m11068e()) {
            this.f52716a.m11024a(c14678m);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m11068e()) {
            C14472a c14472a = this.f52716a;
            if (c14472a.f52761l == colorStateList) {
                return;
            }
            c14472a.f52761l = colorStateList;
            c14472a.m11020c();
        }
    }

    public void setStrokeColorResource(int i) {
        if (m11068e()) {
            setStrokeColor(C0153a.m46375a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m11068e()) {
            C14472a c14472a = this.f52716a;
            if (c14472a.f52758i == i) {
                return;
            }
            c14472a.f52758i = i;
            c14472a.m11020c();
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m11068e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!m11068e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        C14472a c14472a = this.f52716a;
        if (c14472a.f52760k == colorStateList) {
            return;
        }
        c14472a.f52760k = colorStateList;
        if (c14472a.m11023a(false) == null) {
            return;
        }
        C0840a.m44355a(c14472a.m11023a(false), c14472a.f52760k);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!m11068e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        C14472a c14472a = this.f52716a;
        if (c14472a.f52759j == mode) {
            return;
        }
        c14472a.f52759j = mode;
        if (c14472a.m11023a(false) == null || c14472a.f52759j == null) {
            return;
        }
        C0840a.m44352a(c14472a.m11023a(false), c14472a.f52759j);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f52726o);
    }
}
