package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.google.android.material.chip.C8061a;
import com.google.android.material.internal.C8203l;
import com.google.android.material.internal.C8209q;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.AbstractC1702a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p105u.AbstractC1924f;
import p078c.p084c.p085a.p096b.p105u.C1920d;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1942i;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C8061a.AbstractC8062a, AbstractC1962p {

    /* renamed from: g */
    private static final int f36421g = C1895k.Widget_MaterialComponents_Chip_Action;

    /* renamed from: h */
    private static final Rect f36422h = new Rect();

    /* renamed from: i */
    private static final int[] f36423i = {16842913};

    /* renamed from: j */
    private static final int[] f36424j = {16842911};

    /* renamed from: k */
    private C8061a f36425k;

    /* renamed from: l */
    private InsetDrawable f36426l;

    /* renamed from: m */
    private RippleDrawable f36427m;

    /* renamed from: n */
    private View.OnClickListener f36428n;

    /* renamed from: o */
    private CompoundButton.OnCheckedChangeListener f36429o;

    /* renamed from: p */
    private boolean f36430p;

    /* renamed from: q */
    private boolean f36431q;

    /* renamed from: r */
    private boolean f36432r;

    /* renamed from: s */
    private boolean f36433s;

    /* renamed from: t */
    private boolean f36434t;

    /* renamed from: u */
    private int f36435u;

    /* renamed from: v */
    private int f36436v;

    /* renamed from: w */
    private final C8056c f36437w;

    /* renamed from: x */
    private final Rect f36438x;

    /* renamed from: y */
    private final RectF f36439y;

    /* renamed from: z */
    private final AbstractC1924f f36440z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public class C8054a extends AbstractC1924f {
        C8054a() {
            Chip.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: a */
        public void mo4476a(int i) {
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: b */
        public void mo4475b(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            chip.setText(chip.f36425k.m5150R2() ? Chip.this.f36425k.m5101n1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$b.class */
    public class C8055b extends ViewOutlineProvider {
        C8055b() {
            Chip.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f36425k != null) {
                Chip.this.f36425k.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$c.class */
    public class C8056c extends AbstractC1702a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8056c(Chip chip) {
            super(chip);
            Chip.this = r4;
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: B */
        protected int mo4226B(float f, float f2) {
            return (!Chip.this.m5234n() || !Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 0 : 1;
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: C */
        protected void mo4225C(List<Integer> list) {
            list.add(0);
            if (!Chip.this.m5234n() || !Chip.this.m5229s() || Chip.this.f36428n == null) {
                return;
            }
            list.add(1);
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: L */
        protected boolean mo4224L(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i != 1) {
                    return false;
                }
                return Chip.this.m5228t();
            }
            return false;
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: O */
        protected void mo5221O(C1634c c1634c) {
            c1634c.m29493a0(Chip.this.m5230r());
            c1634c.m29487d0(Chip.this.isClickable());
            if (Chip.this.m5230r() || Chip.this.isClickable()) {
                c1634c.m29489c0(Chip.this.m5230r() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                c1634c.m29489c0("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                c1634c.m29521D0(text);
            } else {
                c1634c.m29481g0(text);
            }
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: P */
        protected void mo4223P(int i, C1634c c1634c) {
            CharSequence charSequence = "";
            if (i != 1) {
                c1634c.m29481g0("");
                c1634c.m29497X(Chip.f36422h);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                c1634c.m29481g0(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = C1894j.mtrl_chip_close_icon_content_description;
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                c1634c.m29481g0(context.getString(i2, charSequence).trim());
            }
            c1634c.m29497X(Chip.this.getCloseIconTouchBoundsInt());
            c1634c.m29492b(C1634c.C1635a.f6286e);
            c1634c.m29479h0(Chip.this.isEnabled());
        }

        @Override // p020b.p055j.p056a.AbstractC1702a
        /* renamed from: Q */
        protected void mo5220Q(int i, boolean z) {
            if (i == 1) {
                Chip.this.f36433s = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.chipStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Chip(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: A */
    private void m5249A() {
        C8061a c8061a;
        if (TextUtils.isEmpty(getText()) || (c8061a = this.f36425k) == null) {
            return;
        }
        int m5158P0 = (int) (c8061a.m5158P0() + this.f36425k.m5097p1() + this.f36425k.m5077w0());
        int m5143U0 = (int) (this.f36425k.m5143U0() + this.f36425k.m5094q1() + this.f36425k.m5089s0());
        int i = m5158P0;
        int i2 = m5143U0;
        if (this.f36426l != null) {
            Rect rect = new Rect();
            this.f36426l.getPadding(rect);
            i2 = m5143U0 + rect.left;
            i = m5158P0 + rect.right;
        }
        C1679w.m29339F0(this, i2, getPaddingTop(), i, getPaddingBottom());
    }

    /* renamed from: B */
    private void m5248B() {
        TextPaint paint = getPaint();
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            paint.drawableState = c8061a.getState();
        }
        C1920d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m28669j(getContext(), paint, this.f36440z);
        }
    }

    /* renamed from: C */
    private void m5247C(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) == 8388627) {
            return;
        }
        Log.w("Chip", "Chip text must be vertically center and start aligned");
    }

    public RectF getCloseIconTouchBounds() {
        this.f36439y.setEmpty();
        if (m5234n() && this.f36428n != null) {
            this.f36425k.m5119e1(this.f36439y);
        }
        return this.f36439y;
    }

    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f36438x.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f36438x;
    }

    private C1920d getTextAppearance() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5099o1() : null;
    }

    /* renamed from: i */
    private void m5239i(C8061a c8061a) {
        c8061a.m5078v2(this);
    }

    /* renamed from: j */
    private int[] m5238j() {
        int i = isEnabled() ? 1 : 0;
        int i2 = i;
        if (this.f36433s) {
            i2 = i + 1;
        }
        int i3 = i2;
        if (this.f36432r) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (this.f36431q) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        if (isChecked()) {
            i5 = i4 + 1;
        }
        int[] iArr = new int[i5];
        int i6 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i6 = 1;
        }
        int i7 = i6;
        if (this.f36433s) {
            iArr[i6] = 16842908;
            i7 = i6 + 1;
        }
        int i8 = i7;
        if (this.f36432r) {
            iArr[i7] = 16843623;
            i8 = i7 + 1;
        }
        int i9 = i8;
        if (this.f36431q) {
            iArr[i8] = 16842919;
            i9 = i8 + 1;
        }
        if (isChecked()) {
            iArr[i9] = 16842913;
        }
        return iArr;
    }

    /* renamed from: l */
    private void m5236l() {
        if (getBackgroundDrawable() == this.f36426l && this.f36425k.getCallback() == null) {
            this.f36425k.setCallback(this.f36426l);
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: m */
    private boolean m5235m(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = AbstractC1702a.class.getDeclaredField("p");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.f36437w)).intValue() == Integer.MIN_VALUE) {
                    return false;
                }
                Method declaredMethod = AbstractC1702a.class.getDeclaredMethod("X", Integer.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f36437w, Integer.MIN_VALUE);
                return true;
            } catch (IllegalAccessException e) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e);
                return false;
            } catch (NoSuchFieldException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
                return false;
            } catch (NoSuchMethodException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
                return false;
            } catch (InvocationTargetException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
                return false;
            }
        }
        return false;
    }

    /* renamed from: n */
    public boolean m5234n() {
        C8061a c8061a = this.f36425k;
        return (c8061a == null || c8061a.m5134X0() == null) ? false : true;
    }

    /* renamed from: o */
    private void m5233o(Context context, AttributeSet attributeSet, int i) {
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.Chip, i, f36421g, new int[0]);
        this.f36434t = m4462h.getBoolean(C1896l.Chip_ensureMinTouchTargetSize, false);
        this.f36436v = (int) Math.ceil(m4462h.getDimension(C1896l.Chip_chipMinTouchTargetSize, (float) Math.ceil(C8209q.m4450c(getContext(), 48))));
        m4462h.recycle();
    }

    /* renamed from: p */
    private void m5232p() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new C8055b());
        }
    }

    /* renamed from: q */
    private void m5231q(int i, int i2, int i3, int i4) {
        this.f36426l = new InsetDrawable((Drawable) this.f36425k, i, i2, i3, i4);
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f36432r != z) {
            this.f36432r = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f36431q != z) {
            this.f36431q = z;
            refreshDrawableState();
        }
    }

    /* renamed from: u */
    private void m5227u() {
        if (this.f36426l != null) {
            this.f36426l = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            m5223y();
        }
    }

    /* renamed from: w */
    private void m5225w(C8061a c8061a) {
        if (c8061a != null) {
            c8061a.m5078v2(null);
        }
    }

    /* renamed from: x */
    private void m5224x() {
        if (!m5234n() || !m5229s() || this.f36428n == null) {
            C1679w.m29273r0(this, null);
        } else {
            C1679w.m29273r0(this, this.f36437w);
        }
    }

    /* renamed from: y */
    private void m5223y() {
        if (C1928b.f6876a) {
            m5222z();
            return;
        }
        this.f36425k.m5153Q2(true);
        C1679w.m29267u0(this, getBackgroundDrawable());
        m5249A();
        m5236l();
    }

    /* renamed from: z */
    private void m5222z() {
        this.f36427m = new RippleDrawable(C1928b.m28658d(this.f36425k.m5105l1()), getBackgroundDrawable(), null);
        this.f36425k.m5153Q2(false);
        C1679w.m29267u0(this, this.f36427m);
        m5249A();
    }

    @Override // com.google.android.material.chip.C8061a.AbstractC8062a
    /* renamed from: a */
    public void mo5065a() {
        m5237k(this.f36436v);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m5235m(motionEvent) || this.f36437w.m29167v(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f36437w.m29166w(keyEvent) || this.f36437w.m29194A() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C8061a c8061a = this.f36425k;
        if ((c8061a == null || !c8061a.m5079v1()) ? false : this.f36425k.m5090r2(m5238j())) {
            invalidate();
        }
    }

    public Drawable getBackgroundDrawable() {
        Drawable drawable = this.f36426l;
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = this.f36425k;
        }
        return drawable2;
    }

    public Drawable getCheckedIcon() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5170L0() : null;
    }

    public ColorStateList getCheckedIconTint() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5167M0() : null;
    }

    public ColorStateList getChipBackgroundColor() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5164N0() : null;
    }

    public float getChipCornerRadius() {
        C8061a c8061a = this.f36425k;
        float f = 0.0f;
        if (c8061a != null) {
            f = Math.max(0.0f, c8061a.m5161O0());
        }
        return f;
    }

    public Drawable getChipDrawable() {
        return this.f36425k;
    }

    public float getChipEndPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5158P0() : 0.0f;
    }

    public Drawable getChipIcon() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5155Q0() : null;
    }

    public float getChipIconSize() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5152R0() : 0.0f;
    }

    public ColorStateList getChipIconTint() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5149S0() : null;
    }

    public float getChipMinHeight() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5146T0() : 0.0f;
    }

    public float getChipStartPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5143U0() : 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5140V0() : null;
    }

    public float getChipStrokeWidth() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5137W0() : 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5134X0() : null;
    }

    public CharSequence getCloseIconContentDescription() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5131Y0() : null;
    }

    public float getCloseIconEndPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5129Z0() : 0.0f;
    }

    public float getCloseIconSize() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5127a1() : 0.0f;
    }

    public float getCloseIconStartPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5125b1() : 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5121d1() : null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5113h1() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f36437w.m29194A() == 1 || this.f36437w.m29165x() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public C1904h getHideMotionSpec() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5111i1() : null;
    }

    public float getIconEndPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5109j1() : 0.0f;
    }

    public float getIconStartPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5107k1() : 0.0f;
    }

    public ColorStateList getRippleColor() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5105l1() : null;
    }

    public C1946m getShapeAppearanceModel() {
        return this.f36425k.m28648D();
    }

    public C1904h getShowMotionSpec() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5103m1() : null;
    }

    public float getTextEndPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5097p1() : 0.0f;
    }

    public float getTextStartPadding() {
        C8061a c8061a = this.f36425k;
        return c8061a != null ? c8061a.m5094q1() : 0.0f;
    }

    /* renamed from: k */
    public boolean m5237k(int i) {
        this.f36436v = i;
        int i2 = 0;
        if (!m5226v()) {
            if (this.f36426l != null) {
                m5227u();
                return false;
            }
            m5223y();
            return false;
        }
        int max = Math.max(0, i - this.f36425k.getIntrinsicHeight());
        int max2 = Math.max(0, i - this.f36425k.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.f36426l != null) {
                m5227u();
                return false;
            }
            m5223y();
            return false;
        }
        int i3 = max2 > 0 ? max2 / 2 : 0;
        if (max > 0) {
            i2 = max / 2;
        }
        if (this.f36426l != null) {
            Rect rect = new Rect();
            this.f36426l.getPadding(rect);
            if (rect.top == i2 && rect.bottom == i2 && rect.left == i3 && rect.right == i3) {
                m5223y();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i) {
                setMinHeight(i);
            }
            if (getMinWidth() != i) {
                setMinWidth(i);
            }
        } else {
            setMinHeight(i);
            setMinWidth(i);
        }
        m5231q(i3, i2, i3, i2);
        m5223y();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28579f(this, this.f36425k);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f36423i);
        }
        if (m5230r()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f36424j);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f36437w.m29186K(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m5230r() || isClickable()) {
            accessibilityNodeInfo.setClassName(m5230r() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(m5230r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            C1634c.m29513H0(accessibilityNodeInfo).m29483f0(C1634c.C1637c.m29436a(chipGroup.m4648b(this), 1, chipGroup.mo4647c() ? chipGroup.m5209o(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f36435u != i) {
            this.f36435u = i;
            m5249A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L24;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r4
            android.graphics.RectF r0 = r0.getCloseIconTouchBounds()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L5c
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L41
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L2e
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L52
            goto L6a
        L2e:
            r0 = r4
            boolean r0 = r0.f36431q
            if (r0 == 0) goto L6a
            r0 = r7
            if (r0 != 0) goto L65
            r0 = r4
            r1 = 0
            r0.setCloseIconPressed(r1)
            goto L65
        L41:
            r0 = r4
            boolean r0 = r0.f36431q
            if (r0 == 0) goto L52
            r0 = r4
            boolean r0 = r0.m5228t()
            r0 = 1
            r6 = r0
            goto L54
        L52:
            r0 = 0
            r6 = r0
        L54:
            r0 = r4
            r1 = 0
            r0.setCloseIconPressed(r1)
            goto L6c
        L5c:
            r0 = r7
            if (r0 == 0) goto L6a
            r0 = r4
            r1 = 1
            r0.setCloseIconPressed(r1)
        L65:
            r0 = 1
            r6 = r0
            goto L6c
        L6a:
            r0 = 0
            r6 = r0
        L6c:
            r0 = r6
            if (r0 != 0) goto L78
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L7b
        L78:
            r0 = 1
            r8 = r0
        L7b:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: r */
    public boolean m5230r() {
        C8061a c8061a = this.f36425k;
        return c8061a != null && c8061a.m5082u1();
    }

    /* renamed from: s */
    public boolean m5229s() {
        C8061a c8061a = this.f36425k;
        return c8061a != null && c8061a.m5076w1();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f36427m) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f36427m) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5193D1(z);
        }
    }

    public void setCheckableResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5190E1(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C8061a c8061a = this.f36425k;
        if (c8061a == null) {
            this.f36430p = z;
        } else if (!c8061a.m5082u1()) {
        } else {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked == z || (onCheckedChangeListener = this.f36429o) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5187F1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5184G1(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5181H1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5178I1(i);
        }
    }

    public void setCheckedIconVisible(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5175J1(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5172K1(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5169L1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5166M1(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5163N1(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5160O1(i);
        }
    }

    public void setChipDrawable(C8061a c8061a) {
        C8061a c8061a2 = this.f36425k;
        if (c8061a2 != c8061a) {
            m5225w(c8061a2);
            this.f36425k = c8061a;
            c8061a.m5183G2(false);
            m5239i(this.f36425k);
            m5237k(this.f36436v);
        }
    }

    public void setChipEndPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5157P1(f);
        }
    }

    public void setChipEndPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5154Q1(i);
        }
    }

    public void setChipIcon(Drawable drawable) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5151R1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5148S1(i);
        }
    }

    public void setChipIconSize(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5145T1(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5142U1(i);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5139V1(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5136W1(i);
        }
    }

    public void setChipIconVisible(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5133X1(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5130Y1(z);
        }
    }

    public void setChipMinHeight(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5128Z1(f);
        }
    }

    public void setChipMinHeightResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5126a2(i);
        }
    }

    public void setChipStartPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5124b2(f);
        }
    }

    public void setChipStartPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5122c2(i);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5120d2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5118e2(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5116f2(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5114g2(i);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5110i2(drawable);
        }
        m5224x();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5108j2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5106k2(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5104l2(i);
        }
    }

    public void setCloseIconResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5102m2(i);
        }
        m5224x();
    }

    public void setCloseIconSize(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5100n2(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5098o2(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5096p2(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5093q2(i);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5087s2(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5084t2(i);
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5081u2(z);
        }
        m5224x();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 != 0) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 != 0) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m28626Z(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f36425k == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C8061a c8061a = this.f36425k;
        if (c8061a == null) {
            return;
        }
        c8061a.m5075w2(truncateAt);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f36434t = z;
        m5237k(this.f36436v);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(C1904h c1904h) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5072x2(c1904h);
        }
    }

    public void setHideMotionSpecResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5069y2(i);
        }
    }

    public void setIconEndPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5066z2(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5201A2(i);
        }
    }

    public void setIconStartPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5198B2(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5195C2(i);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f36425k != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5192D2(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f36429o = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f36428n = onClickListener;
        m5224x();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5189E2(colorStateList);
        }
        if (!this.f36425k.m5088s1()) {
            m5222z();
        }
    }

    public void setRippleColorResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5186F2(i);
            if (this.f36425k.m5088s1()) {
                return;
            }
            m5222z();
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        this.f36425k.setShapeAppearanceModel(c1946m);
    }

    public void setShowMotionSpec(C1904h c1904h) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5180H2(c1904h);
        }
    }

    public void setShowMotionSpecResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5177I2(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        C8061a c8061a = this.f36425k;
        if (c8061a == null) {
            return;
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        super.setText(c8061a.m5150R2() ? null : charSequence2, bufferType);
        C8061a c8061a2 = this.f36425k;
        if (c8061a2 == null) {
            return;
        }
        c8061a2.m5174J2(charSequence2);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5168L2(i);
        }
        m5248B();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5168L2(i);
        }
        m5248B();
    }

    public void setTextAppearance(C1920d c1920d) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5171K2(c1920d);
        }
        m5248B();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5165M2(f);
        }
    }

    public void setTextEndPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5162N2(i);
        }
    }

    public void setTextStartPadding(float f) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5159O2(f);
        }
    }

    public void setTextStartPaddingResource(int i) {
        C8061a c8061a = this.f36425k;
        if (c8061a != null) {
            c8061a.m5156P2(i);
        }
    }

    /* renamed from: t */
    public boolean m5228t() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f36428n;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.f36437w.m29178W(1, 1);
        return z;
    }

    /* renamed from: v */
    public boolean m5226v() {
        return this.f36434t;
    }
}
