package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.p012v4.media.AbstractC0081a;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.facebook.ads.AdError;
import com.google.android.gms.common.api.Api;
import com.google.android.material.chip.C1724a;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import p005a4.C0016b;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p090f3.C2733g;
import p097g.C2788a;
import p098g0.C2789a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p141k0.C3308a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p177n3.C3714a;
import p227s0.AbstractC4265a;
import p262v3.C4634p;
import p304z3.C5071c;
import p304z3.C5072d;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C1724a.AbstractC1725a, AbstractC0841m {

    /* renamed from: v */
    public static final Rect f6406v = new Rect();

    /* renamed from: w */
    public static final int[] f6407w = {16842913};

    /* renamed from: x */
    public static final int[] f6408x = {16842911};

    /* renamed from: e */
    public C1724a f6409e;

    /* renamed from: f */
    public InsetDrawable f6410f;

    /* renamed from: g */
    public RippleDrawable f6411g;

    /* renamed from: h */
    public View.OnClickListener f6412h;

    /* renamed from: i */
    public CompoundButton.OnCheckedChangeListener f6413i;

    /* renamed from: j */
    public boolean f6414j;

    /* renamed from: k */
    public boolean f6415k;

    /* renamed from: l */
    public boolean f6416l;

    /* renamed from: m */
    public boolean f6417m;

    /* renamed from: n */
    public boolean f6418n;

    /* renamed from: o */
    public int f6419o;

    /* renamed from: p */
    public int f6420p;

    /* renamed from: q */
    public final C1718b f6421q;

    /* renamed from: r */
    public boolean f6422r;

    /* renamed from: s */
    public final Rect f6423s = new Rect();

    /* renamed from: t */
    public final RectF f6424t = new RectF();

    /* renamed from: u */
    public final AbstractC0081a f6425u = new C1717a();

    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public class C1717a extends AbstractC0081a {
        public C1717a() {
            Chip.this = r4;
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: A */
        public void mo58A(int i) {
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: B */
        public void mo57B(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            C1724a c1724a = chip.f6409e;
            chip.setText(c1724a.f6455G0 ? c1724a.f6454G : chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip$b.class */
    public class C1718b extends AbstractC4265a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1718b(Chip chip) {
            super(chip);
            Chip.this = r4;
        }

        @Override // p227s0.AbstractC4265a
        /* renamed from: m */
        public void mo1179m(List<Integer> list) {
            list.add(0);
            Chip chip = Chip.this;
            Rect rect = Chip.f6406v;
            if (chip.m4704e()) {
                Chip chip2 = Chip.this;
                C1724a c1724a = chip2.f6409e;
                boolean z = false;
                if (c1724a != null) {
                    z = false;
                    if (c1724a.f6463M) {
                        z = true;
                    }
                }
                if (!z || chip2.f6412h == null) {
                    return;
                }
                list.add(1);
            }
        }

        @Override // p227s0.AbstractC4265a
        /* renamed from: p */
        public boolean mo1176p(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i != 1) {
                    return false;
                }
                return Chip.this.m4702g();
            }
            return false;
        }

        @Override // p227s0.AbstractC4265a
        /* renamed from: q */
        public void mo1175q(int i, C3694b c3694b) {
            CharSequence charSequence = "";
            if (i != 1) {
                c3694b.f12070a.setContentDescription("");
                c3694b.f12070a.setBoundsInParent(Chip.f6406v);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                c3694b.f12070a.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                c3694b.f12070a.setContentDescription(context.getString(2131820884, charSequence).trim());
            }
            c3694b.f12070a.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            c3694b.m1883a(C3694b.C3695a.f12075g);
            c3694b.f12070a.setEnabled(Chip.this.isEnabled());
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130968779, 2131887064), attributeSet, 2130968779);
        int resourceId;
        Context context2 = getContext();
        if (attributeSet != null) {
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
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        C1724a c1724a = new C1724a(context2, attributeSet, 2130968779, 2131887064);
        Context context3 = c1724a.f6483h0;
        int[] iArr = C3260w0.f11026g;
        TypedArray m687d = C4634p.m687d(context3, attributeSet, iArr, 2130968779, 2131887064, new int[0]);
        c1724a.f6459I0 = m687d.hasValue(37);
        ColorStateList m72a = C5071c.m72a(c1724a.f6483h0, m687d, 24);
        if (c1724a.f6501z != m72a) {
            c1724a.f6501z = m72a;
            c1724a.onStateChange(c1724a.getState());
        }
        c1724a.m4677P(C5071c.m72a(c1724a.f6483h0, m687d, 11));
        c1724a.m4670W(m687d.getDimension(19, 0.0f));
        if (m687d.hasValue(12)) {
            c1724a.m4676Q(m687d.getDimension(12, 0.0f));
        }
        c1724a.m4668Y(C5071c.m72a(c1724a.f6483h0, m687d, 22));
        c1724a.m4667Z(m687d.getDimension(23, 0.0f));
        c1724a.m4657j0(C5071c.m72a(c1724a.f6483h0, m687d, 36));
        c1724a.m4656k0(m687d.getText(5));
        C5072d c5072d = (!m687d.hasValue(0) || (resourceId = m687d.getResourceId(0, 0)) == 0) ? null : new C5072d(c1724a.f6483h0, resourceId);
        c5072d.f15390k = m687d.getDimension(1, c5072d.f15390k);
        c1724a.m4655l0(c5072d);
        int i = m687d.getInt(3, 0);
        if (i == 1) {
            c1724a.f6453F0 = TextUtils.TruncateAt.START;
        } else if (i == 2) {
            c1724a.f6453F0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i == 3) {
            c1724a.f6453F0 = TextUtils.TruncateAt.END;
        }
        c1724a.m4671V(m687d.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c1724a.m4671V(m687d.getBoolean(15, false));
        }
        c1724a.m4674S(C5071c.m70c(c1724a.f6483h0, m687d, 14));
        if (m687d.hasValue(17)) {
            c1724a.m4672U(C5071c.m72a(c1724a.f6483h0, m687d, 17));
        }
        c1724a.m4673T(m687d.getDimension(16, -1.0f));
        c1724a.m4660g0(m687d.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c1724a.m4660g0(m687d.getBoolean(26, false));
        }
        c1724a.m4666a0(C5071c.m70c(c1724a.f6483h0, m687d, 25));
        c1724a.m4661f0(C5071c.m72a(c1724a.f6483h0, m687d, 30));
        c1724a.m4664c0(m687d.getDimension(28, 0.0f));
        c1724a.m4681L(m687d.getBoolean(6, false));
        c1724a.m4678O(m687d.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c1724a.m4678O(m687d.getBoolean(8, false));
        }
        c1724a.m4680M(C5071c.m70c(c1724a.f6483h0, m687d, 7));
        if (m687d.hasValue(9)) {
            c1724a.m4679N(C5071c.m72a(c1724a.f6483h0, m687d, 9));
        }
        c1724a.f6473X = C2733g.m3194a(c1724a.f6483h0, m687d, 39);
        c1724a.f6474Y = C2733g.m3194a(c1724a.f6483h0, m687d, 33);
        c1724a.m4669X(m687d.getDimension(21, 0.0f));
        c1724a.m4658i0(m687d.getDimension(35, 0.0f));
        c1724a.m4659h0(m687d.getDimension(34, 0.0f));
        c1724a.m4653n0(m687d.getDimension(41, 0.0f));
        c1724a.m4654m0(m687d.getDimension(40, 0.0f));
        c1724a.m4663d0(m687d.getDimension(29, 0.0f));
        c1724a.m4665b0(m687d.getDimension(27, 0.0f));
        c1724a.m4675R(m687d.getDimension(13, 0.0f));
        c1724a.f6457H0 = m687d.getDimensionPixelSize(4, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        m687d.recycle();
        C4634p.m690a(context2, attributeSet, 2130968779, 2131887064);
        C4634p.m689b(context2, attributeSet, iArr, 2130968779, 2131887064, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130968779, 2131887064);
        this.f6418n = obtainStyledAttributes.getBoolean(32, false);
        this.f6420p = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(c1724a);
        c1724a.m7315p(C3589v.C3598i.m2042i(this));
        C4634p.m690a(context2, attributeSet, 2130968779, 2131887064);
        C4634p.m689b(context2, attributeSet, iArr, 2130968779, 2131887064, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, 2130968779, 2131887064);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(C5071c.m72a(context2, obtainStyledAttributes2, 2));
        }
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.f6421q = new C1718b(this);
        m4700i();
        if (!hasValue) {
            setOutlineProvider(new C3714a(this));
        }
        setChecked(this.f6414j);
        setText(c1724a.f6454G);
        setEllipsize(c1724a.f6453F0);
        m4697l();
        if (!this.f6409e.f6455G0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m4698k();
        if (this.f6418n) {
            setMinHeight(this.f6420p);
        }
        this.f6419o = C3589v.C3594e.m2071d(this);
    }

    public RectF getCloseIconTouchBounds() {
        this.f6424t.setEmpty();
        if (m4704e() && this.f6412h != null) {
            C1724a c1724a = this.f6409e;
            c1724a.m4690C(c1724a.getBounds(), this.f6424t);
        }
        return this.f6424t;
    }

    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f6423s.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f6423s;
    }

    private C5072d getTextAppearance() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6489n0.f14322f : null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f6416l != z) {
            this.f6416l = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f6415k != z) {
            this.f6415k = z;
            refreshDrawableState();
        }
    }

    @Override // com.google.android.material.chip.C1724a.AbstractC1725a
    /* renamed from: a */
    public void mo4645a() {
        m4705d(this.f6420p);
        requestLayout();
        invalidateOutline();
    }

    /* renamed from: d */
    public boolean m4705d(int i) {
        this.f6420p = i;
        if (!this.f6418n) {
            if (this.f6410f != null) {
                m4701h();
                return false;
            }
            int[] iArr = C0016b.f15a;
            m4699j();
            return false;
        }
        int max = Math.max(0, i - ((int) this.f6409e.f6444B));
        int max2 = Math.max(0, i - this.f6409e.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.f6410f != null) {
                m4701h();
                return false;
            }
            int[] iArr2 = C0016b.f15a;
            m4699j();
            return false;
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.f6410f != null) {
            Rect rect = new Rect();
            this.f6410f.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                int[] iArr3 = C0016b.f15a;
                m4699j();
                return true;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f6410f = new InsetDrawable((Drawable) this.f6409e, i2, i3, i2, i3);
        int[] iArr4 = C0016b.f15a;
        m4699j();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e3, code lost:
        if (r9 != Integer.MIN_VALUE) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchHoverEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.dispatchHoverEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f6422r) {
            return super.dispatchKeyEvent(keyEvent);
        }
        C1718b c1718b = this.f6421q;
        Objects.requireNonNull(c1718b);
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount();
                                boolean z2 = false;
                                while (true) {
                                    z = z2;
                                    if (i < repeatCount + 1 && c1718b.m1178n(i2, null)) {
                                        i++;
                                        z2 = true;
                                    }
                                }
                            }
                            break;
                        case 23:
                            break;
                        default:
                            z = false;
                            break;
                    }
                }
                z = false;
                if (keyEvent.hasNoModifiers()) {
                    z = false;
                    if (keyEvent.getRepeatCount() == 0) {
                        int i3 = c1718b.f13381l;
                        if (i3 != Integer.MIN_VALUE) {
                            c1718b.mo1176p(i3, 16, null);
                        }
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = c1718b.m1178n(2, null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = c1718b.m1178n(1, null);
                }
            }
        }
        if (z && this.f6421q.f13381l != Integer.MIN_VALUE) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1724a c1724a = this.f6409e;
        boolean z = false;
        if (c1724a != null) {
            z = false;
            if (C1724a.m4684I(c1724a.f6464N)) {
                C1724a c1724a2 = this.f6409e;
                boolean isEnabled = isEnabled();
                int i = isEnabled ? 1 : 0;
                if (this.f6417m) {
                    i = (isEnabled ? 1 : 0) + 1;
                }
                int i2 = i;
                if (this.f6416l) {
                    i2 = i + 1;
                }
                int i3 = i2;
                if (this.f6415k) {
                    i3 = i2 + 1;
                }
                int i4 = i3;
                if (isChecked()) {
                    i4 = i3 + 1;
                }
                int[] iArr = new int[i4];
                int i5 = 0;
                if (isEnabled()) {
                    iArr[0] = 16842910;
                    i5 = 1;
                }
                int i6 = i5;
                if (this.f6417m) {
                    iArr[i5] = 16842908;
                    i6 = i5 + 1;
                }
                int i7 = i6;
                if (this.f6416l) {
                    iArr[i6] = 16843623;
                    i7 = i6 + 1;
                }
                int i8 = i7;
                if (this.f6415k) {
                    iArr[i7] = 16842919;
                    i8 = i7 + 1;
                }
                if (isChecked()) {
                    iArr[i8] = 16842913;
                }
                z = c1724a2.m4662e0(iArr);
            }
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final boolean m4704e() {
        C1724a c1724a = this.f6409e;
        return (c1724a == null || c1724a.m4687F() == null) ? false : true;
    }

    /* renamed from: f */
    public boolean m4703f() {
        C1724a c1724a = this.f6409e;
        return c1724a != null && c1724a.f6469T;
    }

    /* renamed from: g */
    public boolean m4702g() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f6412h;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        if (this.f6422r) {
            this.f6421q.m1173s(1, 1);
        }
        return z;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!m4703f()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return (!(parent instanceof ChipGroup) || !((ChipGroup) parent).f6430g) ? "android.widget.CompoundButton" : "android.widget.RadioButton";
    }

    public Drawable getBackgroundDrawable() {
        Drawable drawable = this.f6410f;
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = this.f6409e;
        }
        return drawable2;
    }

    public Drawable getCheckedIcon() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6471V : null;
    }

    public ColorStateList getCheckedIconTint() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6472W : null;
    }

    public ColorStateList getChipBackgroundColor() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6442A : null;
    }

    public float getChipCornerRadius() {
        C1724a c1724a = this.f6409e;
        float f = 0.0f;
        if (c1724a != null) {
            f = Math.max(0.0f, c1724a.m4688E());
        }
        return f;
    }

    public Drawable getChipDrawable() {
        return this.f6409e;
    }

    public float getChipEndPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6482g0 : 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        C1724a c1724a = this.f6409e;
        return (c1724a == null || (drawable = c1724a.f6458I) == null) ? null : C2789a.m3008g(drawable);
    }

    public float getChipIconSize() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6461K : 0.0f;
    }

    public ColorStateList getChipIconTint() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6460J : null;
    }

    public float getChipMinHeight() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6444B : 0.0f;
    }

    public float getChipStartPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6475Z : 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6448D : null;
    }

    public float getChipStrokeWidth() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6450E : 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.m4687F() : null;
    }

    public CharSequence getCloseIconContentDescription() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6468S : null;
    }

    public float getCloseIconEndPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6481f0 : 0.0f;
    }

    public float getCloseIconSize() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6467R : 0.0f;
    }

    public float getCloseIconStartPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6480e0 : 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6466P : null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6453F0 : null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f6422r) {
            C1718b c1718b = this.f6421q;
            if (c1718b.f13381l == 1 || c1718b.f13380k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public C2733g getHideMotionSpec() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6474Y : null;
    }

    public float getIconEndPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6477b0 : 0.0f;
    }

    public float getIconStartPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6476a0 : 0.0f;
    }

    public ColorStateList getRippleColor() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6452F : null;
    }

    public C0827i getShapeAppearanceModel() {
        return this.f6409e.f3010a.f3034a;
    }

    public C2733g getShowMotionSpec() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6473X : null;
    }

    public float getTextEndPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6479d0 : 0.0f;
    }

    public float getTextStartPadding() {
        C1724a c1724a = this.f6409e;
        return c1724a != null ? c1724a.f6478c0 : 0.0f;
    }

    /* renamed from: h */
    public final void m4701h() {
        if (this.f6410f != null) {
            this.f6410f = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            int[] iArr = C0016b.f15a;
            m4699j();
        }
    }

    /* renamed from: i */
    public final void m4700i() {
        if (m4704e()) {
            C1724a c1724a = this.f6409e;
            if ((c1724a != null && c1724a.f6463M) && this.f6412h != null) {
                C3589v.m2103u(this, this.f6421q);
                this.f6422r = true;
                return;
            }
        }
        C3589v.m2103u(this, null);
        this.f6422r = false;
    }

    /* renamed from: j */
    public final void m4699j() {
        this.f6411g = new RippleDrawable(C0016b.m8930a(this.f6409e.f6452F), getBackgroundDrawable(), null);
        this.f6409e.m4652o0(false);
        RippleDrawable rippleDrawable = this.f6411g;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(this, rippleDrawable);
        m4698k();
    }

    /* renamed from: k */
    public final void m4698k() {
        C1724a c1724a;
        if (TextUtils.isEmpty(getText()) || (c1724a = this.f6409e) == null) {
            return;
        }
        int m4689D = (int) (c1724a.m4689D() + c1724a.f6482g0 + c1724a.f6479d0);
        C1724a c1724a2 = this.f6409e;
        int m4692A = (int) (c1724a2.m4692A() + c1724a2.f6475Z + c1724a2.f6478c0);
        int i = m4689D;
        int i2 = m4692A;
        if (this.f6410f != null) {
            Rect rect = new Rect();
            this.f6410f.getPadding(rect);
            i2 = m4692A + rect.left;
            i = m4689D + rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3594e.m2064k(this, i2, paddingTop, i, paddingBottom);
    }

    /* renamed from: l */
    public final void m4697l() {
        TextPaint paint = getPaint();
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            paint.drawableState = c1724a.getState();
        }
        C5072d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m63e(getContext(), paint, this.f6425u);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3102d.m2644H(this, this.f6409e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f6407w);
        }
        if (m4703f()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f6408x);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.f6422r) {
            C1718b c1718b = this.f6421q;
            int i2 = c1718b.f13381l;
            if (i2 != Integer.MIN_VALUE) {
                c1718b.m1181k(i2);
            }
            if (!z) {
                return;
            }
            c1718b.m1178n(i, rect);
        }
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
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(m4703f());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (chipGroup.f14244c) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (i2 >= chipGroup.getChildCount()) {
                        i = -1;
                        break;
                    }
                    int i4 = i;
                    if (chipGroup.getChildAt(i2) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i2)) == this) {
                            break;
                        }
                        i4 = i + 1;
                    }
                    i2++;
                    i3 = i4;
                }
            } else {
                i = -1;
            }
            Object tag = getTag(2131296977);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3694b.C3697c.m1865a(!(tag instanceof Integer) ? -1 : ((Integer) tag).intValue(), 1, i, 1, false, isChecked()).f12088a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f6419o != i) {
            this.f6419o = i;
            m4698k();
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
            boolean r0 = r0.f6415k
            if (r0 == 0) goto L6a
            r0 = r7
            if (r0 != 0) goto L65
            r0 = r4
            r1 = 0
            r0.setCloseIconPressed(r1)
            goto L65
        L41:
            r0 = r4
            boolean r0 = r0.f6415k
            if (r0 == 0) goto L52
            r0 = r4
            boolean r0 = r0.m4702g()
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

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f6411g) {
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
        if (drawable == getBackgroundDrawable() || drawable == this.f6411g) {
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4681L(z);
        }
    }

    public void setCheckableResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4681L(c1724a.f6483h0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C1724a c1724a = this.f6409e;
        if (c1724a == null) {
            this.f6414j = z;
        } else if (!c1724a.f6469T) {
        } else {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked == z || (onCheckedChangeListener = this.f6413i) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4680M(drawable);
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4680M(C2788a.m3015b(c1724a.f6483h0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4679N(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4679N(C2788a.m3016a(c1724a.f6483h0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4678O(c1724a.f6483h0.getResources().getBoolean(i));
        }
    }

    public void setCheckedIconVisible(boolean z) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4678O(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6442A == colorStateList) {
            return;
        }
        c1724a.f6442A = colorStateList;
        c1724a.onStateChange(c1724a.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4677P(C2788a.m3016a(c1724a.f6483h0, i));
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4676Q(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4676Q(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(C1724a c1724a) {
        C1724a c1724a2 = this.f6409e;
        if (c1724a2 != c1724a) {
            if (c1724a2 != null) {
                c1724a2.f6451E0 = new WeakReference<>(null);
            }
            this.f6409e = c1724a;
            c1724a.f6455G0 = false;
            Objects.requireNonNull(c1724a);
            c1724a.f6451E0 = new WeakReference<>(this);
            m4705d(this.f6420p);
        }
    }

    public void setChipEndPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6482g0 == f) {
            return;
        }
        c1724a.f6482g0 = f;
        c1724a.invalidateSelf();
        c1724a.m4683J();
    }

    public void setChipEndPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4675R(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setChipIcon(Drawable drawable) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4674S(drawable);
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4674S(C2788a.m3015b(c1724a.f6483h0, i));
        }
    }

    public void setChipIconSize(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4673T(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4673T(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4672U(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4672U(C2788a.m3016a(c1724a.f6483h0, i));
        }
    }

    public void setChipIconVisible(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4671V(c1724a.f6483h0.getResources().getBoolean(i));
        }
    }

    public void setChipIconVisible(boolean z) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4671V(z);
        }
    }

    public void setChipMinHeight(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6444B == f) {
            return;
        }
        c1724a.f6444B = f;
        c1724a.invalidateSelf();
        c1724a.m4683J();
    }

    public void setChipMinHeightResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4670W(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setChipStartPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6475Z == f) {
            return;
        }
        c1724a.f6475Z = f;
        c1724a.invalidateSelf();
        c1724a.m4683J();
    }

    public void setChipStartPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4669X(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4668Y(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4668Y(C2788a.m3016a(c1724a.f6483h0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4667Z(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4667Z(c1724a.f6483h0.getResources().getDimension(i));
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4666a0(drawable);
        }
        m4700i();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6468S == charSequence) {
            return;
        }
        C3308a m2393c = C3308a.m2393c();
        c1724a.f6468S = m2393c.m2392d(charSequence, m2393c.f11223c, true);
        c1724a.invalidateSelf();
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4665b0(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4665b0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4666a0(C2788a.m3015b(c1724a.f6483h0, i));
        }
        m4700i();
    }

    public void setCloseIconSize(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4664c0(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4664c0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4663d0(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4663d0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4661f0(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4661f0(C2788a.m3016a(c1724a.f6483h0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4660g0(z);
        }
        m4700i();
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            C0822f.C0824b c0824b = c1724a.f3010a;
            if (c0824b.f3048o == f) {
                return;
            }
            c0824b.f3048o = f;
            c1724a.m7307x();
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f6409e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C1724a c1724a = this.f6409e;
        if (c1724a == null) {
            return;
        }
        c1724a.f6453F0 = truncateAt;
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f6418n = z;
        m4705d(this.f6420p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(C2733g c2733g) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.f6474Y = c2733g;
        }
    }

    public void setHideMotionSpecResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.f6474Y = C2733g.m3193b(c1724a.f6483h0, i);
        }
    }

    public void setIconEndPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4659h0(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4659h0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4658i0(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4658i0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f6409e == null) {
            return;
        }
        super.setLayoutDirection(i);
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
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.f6457H0 = i;
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
        this.f6413i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f6412h = onClickListener;
        m4700i();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4657j0(colorStateList);
        }
        if (!this.f6409e.f6447C0) {
            m4699j();
        }
    }

    public void setRippleColorResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4657j0(C2788a.m3016a(c1724a.f6483h0, i));
            if (this.f6409e.f6447C0) {
                return;
            }
            m4699j();
        }
    }

    @Override // p029c4.AbstractC0841m
    public void setShapeAppearanceModel(C0827i c0827i) {
        C1724a c1724a = this.f6409e;
        c1724a.f3010a.f3034a = c0827i;
        c1724a.invalidateSelf();
    }

    public void setShowMotionSpec(C2733g c2733g) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.f6473X = c2733g;
        }
    }

    public void setShowMotionSpecResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.f6473X = C2733g.m3193b(c1724a.f6483h0, i);
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
        C1724a c1724a = this.f6409e;
        if (c1724a == null) {
            return;
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        super.setText(c1724a.f6455G0 ? null : charSequence2, bufferType);
        C1724a c1724a2 = this.f6409e;
        if (c1724a2 == null) {
            return;
        }
        c1724a2.m4656k0(charSequence2);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4655l0(new C5072d(c1724a.f6483h0, i));
        }
        m4697l();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4655l0(new C5072d(c1724a.f6483h0, i));
        }
        m4697l();
    }

    public void setTextAppearance(C5072d c5072d) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4655l0(c5072d);
        }
        m4697l();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6479d0 == f) {
            return;
        }
        c1724a.f6479d0 = f;
        c1724a.invalidateSelf();
        c1724a.m4683J();
    }

    public void setTextEndPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4654m0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }

    public void setTextStartPadding(float f) {
        C1724a c1724a = this.f6409e;
        if (c1724a == null || c1724a.f6478c0 == f) {
            return;
        }
        c1724a.f6478c0 = f;
        c1724a.invalidateSelf();
        c1724a.m4683J();
    }

    public void setTextStartPaddingResource(int i) {
        C1724a c1724a = this.f6409e;
        if (c1724a != null) {
            c1724a.m4653n0(c1724a.f6483h0.getResources().getDimension(i));
        }
    }
}
