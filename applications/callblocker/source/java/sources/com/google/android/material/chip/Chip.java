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
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.p029d.p031b.AbstractC0636a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.chip.C4587a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p156n.AbstractC4723f;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p156n.C4719d;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4740h;
import com.google.android.material.p159q.C4743k;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C4587a.AbstractC4588a, AbstractC4758n {

    /* renamed from: a */
    private static final Rect f19899a = new Rect();

    /* renamed from: b */
    private static final int[] f19900b = {16842913};

    /* renamed from: c */
    private static final int[] f19901c = {16842911};

    /* renamed from: d */
    private C4587a f19902d;

    /* renamed from: e */
    private InsetDrawable f19903e;

    /* renamed from: f */
    private RippleDrawable f19904f;

    /* renamed from: g */
    private View.OnClickListener f19905g;

    /* renamed from: h */
    private CompoundButton.OnCheckedChangeListener f19906h;

    /* renamed from: i */
    private boolean f19907i;

    /* renamed from: j */
    private boolean f19908j;

    /* renamed from: k */
    private boolean f19909k;

    /* renamed from: l */
    private boolean f19910l;

    /* renamed from: m */
    private boolean f19911m;

    /* renamed from: n */
    private int f19912n;

    /* renamed from: o */
    private int f19913o;

    /* renamed from: p */
    private final C4581a f19914p;

    /* renamed from: q */
    private final Rect f19915q;

    /* renamed from: r */
    private final RectF f19916r;

    /* renamed from: s */
    private final AbstractC4723f f19917s;

    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public class C4581a extends AbstractC0636a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4581a(Chip chip) {
            super(chip);
            Chip.this = r4;
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: a */
        protected int mo3443a(float f, float f2) {
            return (!Chip.this.m3446n() || !Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 0 : 1;
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: a */
        protected void mo3442a(int i, C0553c c0553c) {
            if (i != 1) {
                c0553c.m20487e("");
                c0553c.m20507b(Chip.f19899a);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                c0553c.m20487e(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = C4492a.C4502j.mtrl_chip_close_icon_content_description;
                if (TextUtils.isEmpty(text)) {
                    text = "";
                }
                c0553c.m20487e(context.getString(i2, text).trim());
            }
            c0553c.m20507b(Chip.this.getCloseIconTouchBoundsInt());
            c0553c.m20516a(C0553c.C0554a.f2035e);
            c0553c.m20477h(Chip.this.isEnabled());
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: a */
        protected void mo3441a(int i, boolean z) {
            if (i == 1) {
                Chip.this.f19910l = z;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: a */
        protected void mo3440a(C0553c c0553c) {
            c0553c.m20510a(Chip.this.m3457d());
            c0553c.m20480g(Chip.this.isClickable());
            if (Chip.this.m3457d() || Chip.this.isClickable()) {
                c0553c.m20504b(Chip.this.m3457d() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                c0553c.m20504b("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                c0553c.m20496c(text);
            } else {
                c0553c.m20487e(text);
            }
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: a */
        protected void mo3439a(List<Integer> list) {
            list.add(0);
            if (!Chip.this.m3446n() || !Chip.this.m3459c()) {
                return;
            }
            list.add(1);
        }

        @Override // androidx.p029d.p031b.AbstractC0636a
        /* renamed from: b */
        protected boolean mo3438b(int i, int i2, Bundle bundle) {
            boolean z;
            if (i2 == 16) {
                if (i == 0) {
                    z = Chip.this.performClick();
                } else if (i == 1) {
                    z = Chip.this.m3462b();
                }
                return z;
            }
            z = false;
            return z;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19915q = new Rect();
        this.f19916r = new RectF();
        this.f19917s = new AbstractC4723f() { // from class: com.google.android.material.chip.Chip.1
            @Override // com.google.android.material.p156n.AbstractC4723f
            /* renamed from: a */
            public void mo2764a(int i2) {
            }

            @Override // com.google.android.material.p156n.AbstractC4723f
            /* renamed from: a */
            public void mo2763a(Typeface typeface, boolean z) {
                Chip.this.setText(Chip.this.f19902d.m3415K() ? Chip.this.f19902d.m3320n() : Chip.this.getText());
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }
        };
        m3467a(attributeSet);
        C4587a m3411a = C4587a.m3411a(context, attributeSet, i, C4492a.C4503k.Widget_MaterialComponents_Chip_Action);
        m3468a(context, attributeSet, i);
        setChipDrawable(m3411a);
        m3411a.m2687r(C0595u.m20310n(this));
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.Chip, i, C4492a.C4503k.Widget_MaterialComponents_Chip_Action, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(C4718c.m2784a(context, m2825a, C4492a.C4504l.Chip_android_textColor));
        }
        boolean hasValue = m2825a.hasValue(C4492a.C4504l.Chip_shapeAppearance);
        m2825a.recycle();
        this.f19914p = new C4581a(this);
        if (Build.VERSION.SDK_INT >= 24) {
            C0595u.m20345a(this, this.f19914p);
        } else {
            m3453g();
        }
        if (!hasValue) {
            m3451i();
        }
        setChecked(this.f19907i);
        setText(m3411a.m3320n());
        setEllipsize(m3411a.m3316p());
        setIncludeFontPadding(false);
        m3445o();
        if (!this.f19902d.m3415K()) {
            setSingleLine();
        }
        setGravity(8388627);
        m3452h();
        if (m3455e()) {
            setMinHeight(this.f19913o);
        }
        this.f19912n = C0595u.m20320g(this);
    }

    /* renamed from: a */
    private void m3469a(int i, int i2, int i3, int i4) {
        this.f19903e = new InsetDrawable((Drawable) this.f19902d, i, i2, i3, i4);
    }

    /* renamed from: a */
    private void m3468a(Context context, AttributeSet attributeSet, int i) {
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.Chip, i, C4492a.C4503k.Widget_MaterialComponents_Chip_Action, new int[0]);
        this.f19911m = m2825a.getBoolean(C4492a.C4504l.Chip_ensureMinTouchTargetSize, false);
        this.f19913o = (int) Math.ceil(m2825a.getDimension(C4492a.C4504l.Chip_chipMinTouchTargetSize, (float) Math.ceil(C4703j.m2815a(getContext(), 48))));
        m2825a.recycle();
    }

    /* renamed from: a */
    private void m3467a(AttributeSet attributeSet) {
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

    /* renamed from: a */
    private void m3463a(C4587a c4587a) {
        if (c4587a != null) {
            c4587a.m3401a((C4587a.AbstractC4588a) null);
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: a */
    private boolean m3466a(MotionEvent motionEvent) {
        Field declaredField;
        boolean z;
        if (motionEvent.getAction() == 10) {
            try {
                declaredField = AbstractC0636a.class.getDeclaredField("k");
                declaredField.setAccessible(true);
            } catch (IllegalAccessException e) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e);
            } catch (NoSuchFieldException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            } catch (NoSuchMethodException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (InvocationTargetException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            }
            if (((Integer) declaredField.get(this.f19914p)).intValue() != Integer.MIN_VALUE) {
                Method declaredMethod = AbstractC0636a.class.getDeclaredMethod("e", Integer.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f19914p, Integer.valueOf((int) RecyclerView.UNDEFINED_DURATION));
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    private void m3460b(C4587a c4587a) {
        c4587a.m3401a(this);
    }

    /* renamed from: g */
    private void m3453g() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        if (!m3446n() || !m3459c()) {
            C0595u.m20345a(this, (C0549a) null);
        } else {
            C0595u.m20345a(this, this.f19914p);
        }
    }

    public RectF getCloseIconTouchBounds() {
        this.f19916r.setEmpty();
        if (m3446n()) {
            this.f19902d.m3406a(this.f19916r);
        }
        return this.f19916r;
    }

    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f19915q.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f19915q;
    }

    private C4719d getTextAppearance() {
        return this.f19902d != null ? this.f19902d.m3318o() : null;
    }

    /* renamed from: h */
    private void m3452h() {
        if (TextUtils.isEmpty(getText()) || this.f19902d == null) {
            return;
        }
        C0595u.m20355a(this, (int) (this.f19902d.m3423C() + this.f19902d.m3420F() + this.f19902d.m3375c()), getPaddingTop(), (int) (this.f19902d.m3416J() + this.f19902d.m3419G() + this.f19902d.m3367d()), getPaddingBottom());
    }

    /* renamed from: i */
    private void m3451i() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.chip.Chip.2
                @Override // android.view.ViewOutlineProvider
                @TargetApi(21)
                public void getOutline(View view, Outline outline) {
                    if (Chip.this.f19902d != null) {
                        Chip.this.f19902d.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
    }

    /* renamed from: j */
    private void m3450j() {
        if (C4727b.f20437a) {
            m3448l();
            return;
        }
        this.f19902d.m3398a(true);
        C0595u.m20350a(this, getBackgroundDrawable());
        m3449k();
    }

    /* renamed from: k */
    private void m3449k() {
        if (getBackgroundDrawable() == this.f19903e && this.f19902d.getCallback() == null) {
            this.f19902d.setCallback(this.f19903e);
        }
    }

    /* renamed from: l */
    private void m3448l() {
        this.f19904f = new RippleDrawable(C4727b.m2756b(this.f19902d.m3323m()), getBackgroundDrawable(), null);
        this.f19902d.m3398a(false);
        C0595u.m20350a(this, this.f19904f);
    }

    /* renamed from: m */
    private int[] m3447m() {
        int i;
        int i2 = isEnabled() ? 1 : 0;
        int i3 = i2;
        if (this.f19910l) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (this.f19909k) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        if (this.f19908j) {
            i5 = i4 + 1;
        }
        int i6 = i5;
        if (isChecked()) {
            i6 = i5 + 1;
        }
        int[] iArr = new int[i6];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        } else {
            i = 0;
        }
        int i7 = i;
        if (this.f19910l) {
            iArr[i] = 16842908;
            i7 = i + 1;
        }
        int i8 = i7;
        if (this.f19909k) {
            iArr[i7] = 16843623;
            i8 = i7 + 1;
        }
        int i9 = i8;
        if (this.f19908j) {
            iArr[i8] = 16842919;
            i9 = i8 + 1;
        }
        if (isChecked()) {
            iArr[i9] = 16842913;
        }
        return iArr;
    }

    /* renamed from: n */
    public boolean m3446n() {
        return (this.f19902d == null || this.f19902d.m3306u() == null) ? false : true;
    }

    /* renamed from: o */
    private void m3445o() {
        TextPaint paint = getPaint();
        if (this.f19902d != null) {
            paint.drawableState = this.f19902d.getState();
        }
        C4719d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m2769b(getContext(), paint, this.f19917s);
        }
    }

    /* renamed from: p */
    private void m3444p() {
        if (this.f19903e != null) {
            this.f19903e = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            m3450j();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f19909k != z) {
            this.f19909k = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f19908j != z) {
            this.f19908j = z;
            refreshDrawableState();
        }
    }

    @Override // com.google.android.material.chip.C4587a.AbstractC4588a
    /* renamed from: a */
    public void mo3294a() {
        m3470a(this.f19913o);
        m3450j();
        m3452h();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* renamed from: a */
    public boolean m3470a(int i) {
        int i2 = 0;
        boolean z = false;
        this.f19913o = i;
        if (!m3455e()) {
            m3444p();
        } else {
            int max = Math.max(0, i - this.f19902d.getIntrinsicHeight());
            int max2 = Math.max(0, i - this.f19902d.getIntrinsicWidth());
            if (max2 > 0 || max > 0) {
                int i3 = max2 > 0 ? max2 / 2 : 0;
                if (max > 0) {
                    i2 = max / 2;
                }
                if (this.f19903e != null) {
                    Rect rect = new Rect();
                    this.f19903e.getPadding(rect);
                    if (rect.top == i2 && rect.bottom == i2 && rect.left == i3 && rect.right == i3) {
                        z = true;
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
                m3469a(i3, i2, i3, i2);
                z = true;
            } else {
                m3444p();
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m3462b() {
        boolean z = false;
        playSoundEffect(0);
        if (this.f19905g != null) {
            this.f19905g.onClick(this);
            z = true;
        }
        this.f19914p.m20116a(1, 1);
        return z;
    }

    /* renamed from: c */
    public boolean m3459c() {
        return this.f19902d != null && this.f19902d.m3308t();
    }

    /* renamed from: d */
    public boolean m3457d() {
        return this.f19902d != null && this.f19902d.m3298y();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m3466a(motionEvent) || this.f19914p.m20109a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return (!this.f19914p.m20110a(keyEvent) || this.f19914p.m20101c() == Integer.MIN_VALUE) ? super.dispatchKeyEvent(keyEvent) : true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        boolean z = false;
        if (this.f19902d != null) {
            z = false;
            if (this.f19902d.m3352f()) {
                z = this.f19902d.m3397a(m3447m());
            }
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: e */
    public boolean m3455e() {
        return this.f19911m;
    }

    public Drawable getBackgroundDrawable() {
        return this.f19903e == null ? this.f19902d : this.f19903e;
    }

    public Drawable getCheckedIcon() {
        return this.f19902d != null ? this.f19902d.m3296z() : null;
    }

    public ColorStateList getChipBackgroundColor() {
        return this.f19902d != null ? this.f19902d.m3342h() : null;
    }

    public float getChipCornerRadius() {
        return this.f19902d != null ? this.f19902d.m3332j() : 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f19902d;
    }

    public float getChipEndPadding() {
        return this.f19902d != null ? this.f19902d.m3416J() : 0.0f;
    }

    public Drawable getChipIcon() {
        return this.f19902d != null ? this.f19902d.m3314q() : null;
    }

    public float getChipIconSize() {
        return this.f19902d != null ? this.f19902d.m3310s() : 0.0f;
    }

    public ColorStateList getChipIconTint() {
        return this.f19902d != null ? this.f19902d.m3312r() : null;
    }

    public float getChipMinHeight() {
        return this.f19902d != null ? this.f19902d.m3337i() : 0.0f;
    }

    public float getChipStartPadding() {
        return this.f19902d != null ? this.f19902d.m3423C() : 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        return this.f19902d != null ? this.f19902d.m3329k() : null;
    }

    public float getChipStrokeWidth() {
        return this.f19902d != null ? this.f19902d.m3326l() : 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        return this.f19902d != null ? this.f19902d.m3306u() : null;
    }

    public CharSequence getCloseIconContentDescription() {
        return this.f19902d != null ? this.f19902d.m3300x() : null;
    }

    public float getCloseIconEndPadding() {
        return this.f19902d != null ? this.f19902d.m3417I() : 0.0f;
    }

    public float getCloseIconSize() {
        return this.f19902d != null ? this.f19902d.m3302w() : 0.0f;
    }

    public float getCloseIconStartPadding() {
        return this.f19902d != null ? this.f19902d.m3418H() : 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        return this.f19902d != null ? this.f19902d.m3304v() : null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        return this.f19902d != null ? this.f19902d.m3316p() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f19914p.m20101c() == 1 || this.f19914p.m20105b() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public C4512h getHideMotionSpec() {
        return this.f19902d != null ? this.f19902d.m3425B() : null;
    }

    public float getIconEndPadding() {
        return this.f19902d != null ? this.f19902d.m3421E() : 0.0f;
    }

    public float getIconStartPadding() {
        return this.f19902d != null ? this.f19902d.m3422D() : 0.0f;
    }

    public ColorStateList getRippleColor() {
        return this.f19902d != null ? this.f19902d.m3323m() : null;
    }

    public C4743k getShapeAppearanceModel() {
        return this.f19902d.m2743L();
    }

    public C4512h getShowMotionSpec() {
        return this.f19902d != null ? this.f19902d.m3427A() : null;
    }

    public float getTextEndPadding() {
        return this.f19902d != null ? this.f19902d.m3419G() : 0.0f;
    }

    public float getTextStartPadding() {
        return this.f19902d != null ? this.f19902d.m3420F() : 0.0f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2682a(this, this.f19902d);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f19900b);
        }
        if (m3457d()) {
            mergeDrawableStates(onCreateDrawableState, f19901c);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f19914p.m20106a(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 7:
                setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
                break;
            case 10:
                setCloseIconHovered(false);
                break;
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m3457d() || isClickable()) {
            accessibilityNodeInfo.setClassName(m3457d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(m3457d());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) ? null : PointerIcon.getSystemIcon(getContext(), 1002);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f19912n != i) {
            this.f19912n = i;
            m3452h();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        switch (actionMasked) {
            case 0:
                if (contains) {
                    setCloseIconPressed(true);
                    z = true;
                    break;
                }
                z = false;
                break;
            case 1:
                if (this.f19908j) {
                    m3462b();
                    z = true;
                    setCloseIconPressed(false);
                    break;
                }
                z = false;
                setCloseIconPressed(false);
            case 2:
                if (this.f19908j) {
                    if (!contains) {
                        setCloseIconPressed(false);
                    }
                    z = true;
                    break;
                }
                z = false;
                break;
            case 3:
                z = false;
                setCloseIconPressed(false);
                break;
            default:
                z = false;
                break;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f19904f) {
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
        if (drawable == getBackgroundDrawable() || drawable == this.f19904f) {
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
        if (this.f19902d != null) {
            this.f19902d.m3360d(z);
        }
    }

    public void setCheckableResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3317o(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f19902d == null) {
            this.f19907i = z;
        } else if (!this.f19902d.m3298y()) {
        } else {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked == z || this.f19906h == null) {
                return;
            }
            this.f19906h.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        if (this.f19902d != null) {
            this.f19902d.m3369c(drawable);
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
        if (this.f19902d != null) {
            this.f19902d.m3313q(i);
        }
    }

    public void setCheckedIconVisible(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3315p(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        if (this.f19902d != null) {
            this.f19902d.m3353e(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        if (this.f19902d != null) {
            this.f19902d.m3410a(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3412a(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3385b(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3373c(i);
        }
    }

    public void setChipDrawable(C4587a c4587a) {
        if (this.f19902d != c4587a) {
            m3463a(this.f19902d);
            this.f19902d = c4587a;
            this.f19902d.m3347f(false);
            m3460b(this.f19902d);
            m3470a(this.f19913o);
            m3450j();
        }
    }

    public void setChipEndPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3322m(f);
        }
    }

    public void setChipEndPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3426A(i);
        }
    }

    public void setChipIcon(Drawable drawable) {
        if (this.f19902d != null) {
            this.f19902d.m3405a(drawable);
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
        if (this.f19902d != null) {
            this.f19902d.m3335i(i);
        }
    }

    public void setChipIconSize(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3366d(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3327k(i);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        if (this.f19902d != null) {
            this.f19902d.m3364d(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3330j(i);
        }
    }

    public void setChipIconVisible(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3340h(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        if (this.f19902d != null) {
            this.f19902d.m3376b(z);
        }
    }

    public void setChipMinHeight(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3413a(f);
        }
    }

    public void setChipMinHeightResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3384b(i);
        }
    }

    public void setChipStartPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3351f(f);
        }
    }

    public void setChipStartPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3307t(i);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        if (this.f19902d != null) {
            this.f19902d.m3383b(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3365d(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3374c(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3358e(i);
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
        if (this.f19902d != null) {
            this.f19902d.m3380b(drawable);
        }
        m3453g();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        if (this.f19902d != null) {
            this.f19902d.m3377b(charSequence);
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
        if (this.f19902d != null) {
            this.f19902d.m3325l(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3295z(i);
        }
    }

    public void setCloseIconResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3324l(i);
        }
        m3453g();
    }

    public void setCloseIconSize(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3359e(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3319n(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3328k(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3297y(i);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        if (this.f19902d != null) {
            this.f19902d.m3357e(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3321m(i);
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        if (this.f19902d != null) {
            this.f19902d.m3368c(z);
        }
        m3453g();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (this.f19902d != null) {
            this.f19902d.m2687r(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f19902d == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        if (this.f19902d == null) {
            return;
        }
        this.f19902d.m3404a(truncateAt);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f19911m = z;
        m3470a(this.f19913o);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(C4512h c4512h) {
        if (this.f19902d != null) {
            this.f19902d.m3379b(c4512h);
        }
    }

    public void setHideMotionSpecResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3309s(i);
        }
    }

    public void setIconEndPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3341h(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3303v(i);
        }
    }

    public void setIconStartPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3345g(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3305u(i);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f19902d != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        if (this.f19902d != null) {
            this.f19902d.m3424B(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f19906h = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f19905g = onClickListener;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f19902d != null) {
            this.f19902d.m3372c(colorStateList);
        }
        if (!this.f19902d.m3414a()) {
            m3448l();
        }
    }

    public void setRippleColorResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3350f(i);
            if (this.f19902d.m3414a()) {
                return;
            }
            m3448l();
        }
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        this.f19902d.setShapeAppearanceModel(c4743k);
    }

    public void setShowMotionSpec(C4512h c4512h) {
        if (this.f19902d != null) {
            this.f19902d.m3402a(c4512h);
        }
    }

    public void setShowMotionSpecResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3311r(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f19902d == null) {
            return;
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        super.setText(this.f19902d.m3415K() ? null : charSequence2, bufferType);
        if (this.f19902d == null) {
            return;
        }
        this.f19902d.m3399a(charSequence2);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        if (this.f19902d != null) {
            this.f19902d.m3344g(i);
        }
        m3445o();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f19902d != null) {
            this.f19902d.m3344g(i);
        }
        m3445o();
    }

    public void setTextAppearance(C4719d c4719d) {
        if (this.f19902d != null) {
            this.f19902d.m3400a(c4719d);
        }
        m3445o();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3331j(f);
        }
    }

    public void setTextEndPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3299x(i);
        }
    }

    public void setTextStartPadding(float f) {
        if (this.f19902d != null) {
            this.f19902d.m3336i(f);
        }
    }

    public void setTextStartPaddingResource(int i) {
        if (this.f19902d != null) {
            this.f19902d.m3301w(i);
        }
    }
}
