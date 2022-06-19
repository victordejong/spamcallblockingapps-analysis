package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.p011d.C0153a;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p023g.C0552u;
import androidx.core.widget.C0605i;
import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: A */
    private int f1057A;

    /* renamed from: B */
    private int f1058B;

    /* renamed from: C */
    private int f1059C;

    /* renamed from: D */
    private int f1060D;

    /* renamed from: E */
    private int f1061E;

    /* renamed from: F */
    private int f1062F;

    /* renamed from: G */
    private int f1063G;

    /* renamed from: H */
    private final TextPaint f1064H;

    /* renamed from: I */
    private ColorStateList f1065I;

    /* renamed from: J */
    private Layout f1066J;

    /* renamed from: K */
    private Layout f1067K;

    /* renamed from: L */
    private TransformationMethod f1068L;

    /* renamed from: M */
    private final C0349v f1069M;

    /* renamed from: N */
    private final Rect f1070N;

    /* renamed from: a */
    float f1071a;

    /* renamed from: b */
    ObjectAnimator f1072b;

    /* renamed from: d */
    private Drawable f1073d;

    /* renamed from: e */
    private ColorStateList f1074e;

    /* renamed from: f */
    private PorterDuff.Mode f1075f;

    /* renamed from: g */
    private boolean f1076g;

    /* renamed from: h */
    private boolean f1077h;

    /* renamed from: i */
    private Drawable f1078i;

    /* renamed from: j */
    private ColorStateList f1079j;

    /* renamed from: k */
    private PorterDuff.Mode f1080k;

    /* renamed from: l */
    private boolean f1081l;

    /* renamed from: m */
    private boolean f1082m;

    /* renamed from: n */
    private int f1083n;

    /* renamed from: o */
    private int f1084o;

    /* renamed from: p */
    private int f1085p;

    /* renamed from: q */
    private boolean f1086q;

    /* renamed from: r */
    private CharSequence f1087r;

    /* renamed from: s */
    private CharSequence f1088s;

    /* renamed from: t */
    private boolean f1089t;

    /* renamed from: u */
    private int f1090u;

    /* renamed from: v */
    private int f1091v;

    /* renamed from: w */
    private float f1092w;

    /* renamed from: x */
    private float f1093x;

    /* renamed from: y */
    private VelocityTracker f1094y;

    /* renamed from: z */
    private int f1095z;

    /* renamed from: c */
    private static final Property<SwitchCompat, Float> f1056c = new Property<SwitchCompat, Float>(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1071a);
        }

        /* renamed from: a */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    };

    /* renamed from: O */
    private static final int[] f1055O = {16842912};

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1074e = null;
        this.f1075f = null;
        this.f1076g = false;
        this.f1077h = false;
        this.f1079j = null;
        this.f1080k = null;
        this.f1081l = false;
        this.f1082m = false;
        this.f1094y = VelocityTracker.obtain();
        this.f1070N = new Rect();
        this.f1064H = new TextPaint(1);
        Resources resources = getResources();
        this.f1064H.density = resources.getDisplayMetrics().density;
        C0311as m7156a = C0311as.m7156a(context, attributeSet, C0051a.C0061j.SwitchCompat, i, 0);
        this.f1073d = m7156a.m7163a(C0051a.C0061j.SwitchCompat_android_thumb);
        Drawable drawable = this.f1073d;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.f1078i = m7156a.m7163a(C0051a.C0061j.SwitchCompat_track);
        Drawable drawable2 = this.f1078i;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.f1087r = m7156a.m7152c(C0051a.C0061j.SwitchCompat_android_textOn);
        this.f1088s = m7156a.m7152c(C0051a.C0061j.SwitchCompat_android_textOff);
        this.f1089t = m7156a.m7159a(C0051a.C0061j.SwitchCompat_showText, true);
        this.f1083n = m7156a.m7147e(C0051a.C0061j.SwitchCompat_thumbTextPadding, 0);
        this.f1084o = m7156a.m7147e(C0051a.C0061j.SwitchCompat_switchMinWidth, 0);
        this.f1085p = m7156a.m7147e(C0051a.C0061j.SwitchCompat_switchPadding, 0);
        this.f1086q = m7156a.m7159a(C0051a.C0061j.SwitchCompat_splitTrack, false);
        ColorStateList m7148e = m7156a.m7148e(C0051a.C0061j.SwitchCompat_thumbTint);
        if (m7148e != null) {
            this.f1074e = m7148e;
            this.f1076g = true;
        }
        PorterDuff.Mode m7306a = C0268aa.m7306a(m7156a.m7161a(C0051a.C0061j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1075f != m7306a) {
            this.f1075f = m7306a;
            this.f1077h = true;
        }
        if (this.f1076g || this.f1077h) {
            m7327b();
        }
        ColorStateList m7148e2 = m7156a.m7148e(C0051a.C0061j.SwitchCompat_trackTint);
        if (m7148e2 != null) {
            this.f1079j = m7148e2;
            this.f1081l = true;
        }
        PorterDuff.Mode m7306a2 = C0268aa.m7306a(m7156a.m7161a(C0051a.C0061j.SwitchCompat_trackTintMode, -1), null);
        if (this.f1080k != m7306a2) {
            this.f1080k = m7306a2;
            this.f1082m = true;
        }
        if (this.f1081l || this.f1082m) {
            m7336a();
        }
        int m7143g = m7156a.m7143g(C0051a.C0061j.SwitchCompat_switchTextAppearance, 0);
        if (m7143g != 0) {
            m7332a(context, m7143g);
        }
        this.f1069M = new C0349v(this);
        this.f1069M.m7016a(attributeSet, i);
        m7156a.m7164a();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1091v = viewConfiguration.getScaledTouchSlop();
        this.f1095z = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private static float m7334a(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: a */
    private Layout m7329a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f1068L;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f1064H;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, FlexItem.FLEX_GROW_DEFAULT, true);
    }

    /* renamed from: a */
    private void m7336a() {
        if (this.f1078i != null) {
            if (!this.f1081l && !this.f1082m) {
                return;
            }
            this.f1078i = C0575a.m6122g(this.f1078i).mutate();
            if (this.f1081l) {
                C0575a.m6133a(this.f1078i, this.f1079j);
            }
            if (this.f1082m) {
                C0575a.m6130a(this.f1078i, this.f1080k);
            }
            if (!this.f1078i.isStateful()) {
                return;
            }
            this.f1078i.setState(getDrawableState());
        }
    }

    /* renamed from: a */
    private void m7333a(int i, int i2) {
        m7331a(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: a */
    private void m7330a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: a */
    private void m7328a(boolean z) {
        this.f1072b = ObjectAnimator.ofFloat(this, f1056c, z ? 1.0f : 0.0f);
        this.f1072b.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1072b.setAutoCancel(true);
        }
        this.f1072b.start();
    }

    /* renamed from: a */
    private boolean m7335a(float f, float f2) {
        int i;
        if (this.f1073d == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1073d.getPadding(this.f1070N);
        int i2 = this.f1061E;
        int i3 = (this.f1060D + thumbOffset) - this.f1091v;
        int i4 = this.f1059C;
        int i5 = this.f1070N.left;
        int i6 = this.f1070N.right;
        int i7 = this.f1091v;
        int i8 = this.f1063G;
        boolean z = false;
        if (f > i3) {
            z = false;
            if (f < i4 + i3 + i5 + i6 + i7) {
                z = false;
                if (f2 > i2 - i) {
                    z = false;
                    if (f2 < i8 + i7) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m7327b() {
        if (this.f1073d != null) {
            if (!this.f1076g && !this.f1077h) {
                return;
            }
            this.f1073d = C0575a.m6122g(this.f1073d).mutate();
            if (this.f1076g) {
                C0575a.m6133a(this.f1073d, this.f1074e);
            }
            if (this.f1077h) {
                C0575a.m6130a(this.f1073d, this.f1075f);
            }
            if (!this.f1073d.isStateful()) {
                return;
            }
            this.f1073d.setState(getDrawableState());
        }
    }

    /* renamed from: b */
    private void m7326b(MotionEvent motionEvent) {
        this.f1090u = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f1094y.computeCurrentVelocity(1000);
            float xVelocity = this.f1094y.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1095z) {
                z = getTargetCheckedState();
            } else if (!C0321ay.m7115a(this) ? xVelocity <= FlexItem.FLEX_GROW_DEFAULT : xVelocity >= FlexItem.FLEX_GROW_DEFAULT) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m7330a(motionEvent);
    }

    /* renamed from: c */
    private void m7325c() {
        ObjectAnimator objectAnimator = this.f1072b;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private boolean getTargetCheckedState() {
        return this.f1071a > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0321ay.m7115a(this) ? 1.0f - this.f1071a : this.f1071a) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1078i;
        if (drawable != null) {
            Rect rect = this.f1070N;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f1073d;
            Rect m7305a = drawable2 != null ? C0268aa.m7305a(drawable2) : C0268aa.f1121a;
            return ((((this.f1057A - this.f1059C) - rect.left) - rect.right) - m7305a.left) - m7305a.right;
        }
        return 0;
    }

    /* renamed from: a */
    public void m7332a(Context context, int i) {
        C0311as m7158a = C0311as.m7158a(context, i, C0051a.C0061j.TextAppearance);
        ColorStateList m7148e = m7158a.m7148e(C0051a.C0061j.TextAppearance_android_textColor);
        if (m7148e != null) {
            this.f1065I = m7148e;
        } else {
            this.f1065I = getTextColors();
        }
        int m7147e = m7158a.m7147e(C0051a.C0061j.TextAppearance_android_textSize, 0);
        if (m7147e != 0) {
            float f = m7147e;
            if (f != this.f1064H.getTextSize()) {
                this.f1064H.setTextSize(f);
                requestLayout();
            }
        }
        m7333a(m7158a.m7161a(C0051a.C0061j.TextAppearance_android_typeface, -1), m7158a.m7161a(C0051a.C0061j.TextAppearance_android_textStyle, -1));
        if (m7158a.m7159a(C0051a.C0061j.TextAppearance_textAllCaps, false)) {
            this.f1068L = new C0153a(getContext());
        } else {
            this.f1068L = null;
        }
        m7158a.m7164a();
    }

    /* renamed from: a */
    public void m7331a(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i <= 0) {
            this.f1064H.setFakeBoldText(false);
            this.f1064H.setTextSkewX(FlexItem.FLEX_GROW_DEFAULT);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(defaultFromStyle);
        int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        TextPaint textPaint = this.f1064H;
        if ((style & 1) != 0) {
            z = true;
        }
        textPaint.setFakeBoldText(z);
        TextPaint textPaint2 = this.f1064H;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint2.setTextSkewX(f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Rect rect = this.f1070N;
        int i6 = this.f1060D;
        int i7 = this.f1061E;
        int i8 = this.f1062F;
        int i9 = this.f1063G;
        int thumbOffset = getThumbOffset() + i6;
        Drawable drawable = this.f1073d;
        Rect m7305a = drawable != null ? C0268aa.m7305a(drawable) : C0268aa.f1121a;
        Drawable drawable2 = this.f1078i;
        int i10 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = thumbOffset + rect.left;
            if (m7305a != null) {
                i4 = i6;
                if (m7305a.left > rect.left) {
                    i4 = i6 + (m7305a.left - rect.left);
                }
                i3 = m7305a.top > rect.top ? (m7305a.top - rect.top) + i7 : i7;
                i2 = i8;
                if (m7305a.right > rect.right) {
                    i2 = i8 - (m7305a.right - rect.right);
                }
                i6 = i4;
                i8 = i2;
                i5 = i3;
                if (m7305a.bottom > rect.bottom) {
                    i = i9 - (m7305a.bottom - rect.bottom);
                    this.f1078i.setBounds(i4, i3, i2, i);
                    i10 = i11;
                }
            } else {
                i5 = i7;
            }
            i3 = i5;
            i = i9;
            i2 = i8;
            i4 = i6;
            this.f1078i.setBounds(i4, i3, i2, i);
            i10 = i11;
        }
        Drawable drawable3 = this.f1073d;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i12 = i10 - rect.left;
            int i13 = i10 + this.f1059C + rect.right;
            this.f1073d.setBounds(i12, i7, i13, i9);
            Drawable background = getBackground();
            if (background != null) {
                C0575a.m6134a(background, i12, i7, i13, i9);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f1073d;
        if (drawable != null) {
            C0575a.m6136a(drawable, f, f2);
        }
        Drawable drawable2 = this.f1078i;
        if (drawable2 != null) {
            C0575a.m6136a(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1073d;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f1078i;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!C0321ay.m7115a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f1057A;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f1085p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0321ay.m7115a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f1057A;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f1085p;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f1089t;
    }

    public boolean getSplitTrack() {
        return this.f1086q;
    }

    public int getSwitchMinWidth() {
        return this.f1084o;
    }

    public int getSwitchPadding() {
        return this.f1085p;
    }

    public CharSequence getTextOff() {
        return this.f1088s;
    }

    public CharSequence getTextOn() {
        return this.f1087r;
    }

    public Drawable getThumbDrawable() {
        return this.f1073d;
    }

    public int getThumbTextPadding() {
        return this.f1083n;
    }

    public ColorStateList getThumbTintList() {
        return this.f1074e;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f1075f;
    }

    public Drawable getTrackDrawable() {
        return this.f1078i;
    }

    public ColorStateList getTrackTintList() {
        return this.f1079j;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f1080k;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1073d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1078i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1072b;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f1072b.end();
        this.f1072b = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f1055O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f1070N;
        Drawable drawable = this.f1078i;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f1061E;
        int i3 = this.f1063G;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f1073d;
        if (drawable != null) {
            if (!this.f1086q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m7305a = C0268aa.m7305a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m7305a.left;
                rect.right -= m7305a.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.f1066J : this.f1067K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f1065I;
            if (colorStateList != null) {
                this.f1064H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f1064H.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i = bounds.left + bounds.right;
            } else {
                i = getWidth();
            }
            canvas.translate((i / 2) - (layout.getWidth() / 2), (((i2 + i4) + (i3 - i5)) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.f1087r : this.f1088s;
        if (!TextUtils.isEmpty(charSequence)) {
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z, i, i2, i3, i4);
        int i11 = 0;
        if (this.f1073d != null) {
            Rect rect = this.f1070N;
            Drawable drawable = this.f1078i;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m7305a = C0268aa.m7305a(this.f1073d);
            i5 = Math.max(0, m7305a.left - rect.left);
            i11 = Math.max(0, m7305a.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0321ay.m7115a(this)) {
            int paddingLeft = getPaddingLeft() + i5;
            i7 = paddingLeft;
            i6 = ((this.f1057A + paddingLeft) - i5) - i11;
        } else {
            i6 = (getWidth() - getPaddingRight()) - i11;
            i7 = (i6 - this.f1057A) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i10 = this.f1058B;
            i9 = paddingTop - (i10 / 2);
        } else if (gravity == 80) {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f1058B;
            this.f1060D = i7;
            this.f1061E = i9;
            this.f1063G = i8;
            this.f1062F = i6;
        } else {
            i9 = getPaddingTop();
            i10 = this.f1058B;
        }
        i8 = i10 + i9;
        this.f1060D = i7;
        this.f1061E = i9;
        this.f1063G = i8;
        this.f1062F = i6;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f1089t) {
            if (this.f1066J == null) {
                this.f1066J = m7329a(this.f1087r);
            }
            if (this.f1067K == null) {
                this.f1067K = m7329a(this.f1088s);
            }
        }
        Rect rect = this.f1070N;
        Drawable drawable = this.f1073d;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1073d.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f1073d.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f1059C = Math.max(this.f1089t ? Math.max(this.f1066J.getWidth(), this.f1067K.getWidth()) + (this.f1083n * 2) : 0, i4);
        Drawable drawable2 = this.f1078i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1078i.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1073d;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect m7305a = C0268aa.m7305a(drawable3);
            i9 = Math.max(i6, m7305a.left);
            i8 = Math.max(i7, m7305a.right);
        }
        int max = Math.max(this.f1084o, (this.f1059C * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f1057A = max;
        this.f1058B = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1087r : this.f1088s;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L46;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (getWindowToken() != null && C0552u.m6295A(this)) {
            m7328a(isChecked);
            return;
        }
        m7325c();
        setThumbPosition(isChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f1089t != z) {
            this.f1089t = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f1086q = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f1084o = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f1085p = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f1064H.getTypeface() == null || this.f1064H.getTypeface().equals(typeface)) && (this.f1064H.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f1064H.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.f1088s = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f1087r = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1073d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1073d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f1071a = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C0062a.m7983b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f1083n = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f1074e = colorStateList;
        this.f1076g = true;
        m7327b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f1075f = mode;
        this.f1077h = true;
        m7327b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1078i;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1078i = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C0062a.m7983b(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f1079j = colorStateList;
        this.f1081l = true;
        m7336a();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f1080k = mode;
        this.f1082m = true;
        m7336a();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1073d || drawable == this.f1078i;
    }
}
