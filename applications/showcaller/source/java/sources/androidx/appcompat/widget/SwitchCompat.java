package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
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
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0649k;
import p020b.p021a.C1423a;
import p020b.p021a.C1430h;
import p020b.p021a.C1432j;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p021a.p027n.C1453a;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: d */
    private static final Property<SwitchCompat, Float> f1124d = new C0268a(Float.class, "thumbPos");

    /* renamed from: e */
    private static final int[] f1125e = {16842912};

    /* renamed from: A */
    private VelocityTracker f1126A;

    /* renamed from: B */
    private int f1127B;

    /* renamed from: C */
    float f1128C;

    /* renamed from: D */
    private int f1129D;

    /* renamed from: E */
    private int f1130E;

    /* renamed from: F */
    private int f1131F;

    /* renamed from: G */
    private int f1132G;

    /* renamed from: H */
    private int f1133H;

    /* renamed from: I */
    private int f1134I;

    /* renamed from: J */
    private int f1135J;

    /* renamed from: K */
    private final TextPaint f1136K;

    /* renamed from: L */
    private ColorStateList f1137L;

    /* renamed from: M */
    private Layout f1138M;

    /* renamed from: N */
    private Layout f1139N;

    /* renamed from: O */
    private TransformationMethod f1140O;

    /* renamed from: P */
    ObjectAnimator f1141P;

    /* renamed from: Q */
    private final C0308m f1142Q;

    /* renamed from: R */
    private final Rect f1143R;

    /* renamed from: f */
    private Drawable f1144f;

    /* renamed from: g */
    private ColorStateList f1145g;

    /* renamed from: h */
    private PorterDuff.Mode f1146h;

    /* renamed from: i */
    private boolean f1147i;

    /* renamed from: j */
    private boolean f1148j;

    /* renamed from: k */
    private Drawable f1149k;

    /* renamed from: l */
    private ColorStateList f1150l;

    /* renamed from: m */
    private PorterDuff.Mode f1151m;

    /* renamed from: n */
    private boolean f1152n;

    /* renamed from: o */
    private boolean f1153o;

    /* renamed from: p */
    private int f1154p;

    /* renamed from: q */
    private int f1155q;

    /* renamed from: r */
    private int f1156r;

    /* renamed from: s */
    private boolean f1157s;

    /* renamed from: t */
    private CharSequence f1158t;

    /* renamed from: u */
    private CharSequence f1159u;

    /* renamed from: v */
    private boolean f1160v;

    /* renamed from: w */
    private int f1161w;

    /* renamed from: x */
    private int f1162x;

    /* renamed from: y */
    private float f1163y;

    /* renamed from: z */
    private float f1164z;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    class C0268a extends Property<SwitchCompat, Float> {
        C0268a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1128C);
        }

        /* renamed from: b */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1145g = null;
        this.f1146h = null;
        this.f1147i = false;
        this.f1148j = false;
        this.f1150l = null;
        this.f1151m = null;
        this.f1152n = false;
        this.f1153o = false;
        this.f1126A = VelocityTracker.obtain();
        this.f1143R = new Rect();
        C0339z.m34687a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f1136K = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = C1432j.SwitchCompat;
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, iArr, i, 0);
        C1679w.m29277p0(this, context, iArr, attributeSet, m34946v.m34950r(), i, 0);
        Drawable m34961g = m34946v.m34961g(C1432j.SwitchCompat_android_thumb);
        this.f1144f = m34961g;
        if (m34961g != null) {
            m34961g.setCallback(this);
        }
        Drawable m34961g2 = m34946v.m34961g(C1432j.SwitchCompat_track);
        this.f1149k = m34961g2;
        if (m34961g2 != null) {
            m34961g2.setCallback(this);
        }
        this.f1158t = m34946v.m34952p(C1432j.SwitchCompat_android_textOn);
        this.f1159u = m34946v.m34952p(C1432j.SwitchCompat_android_textOff);
        this.f1160v = m34946v.m34967a(C1432j.SwitchCompat_showText, true);
        this.f1154p = m34946v.m34962f(C1432j.SwitchCompat_thumbTextPadding, 0);
        this.f1155q = m34946v.m34962f(C1432j.SwitchCompat_switchMinWidth, 0);
        this.f1156r = m34946v.m34962f(C1432j.SwitchCompat_switchPadding, 0);
        this.f1157s = m34946v.m34967a(C1432j.SwitchCompat_splitTrack, false);
        ColorStateList m34965c = m34946v.m34965c(C1432j.SwitchCompat_thumbTint);
        if (m34965c != null) {
            this.f1145g = m34965c;
            this.f1147i = true;
        }
        PorterDuff.Mode m34773e = C0317q.m34773e(m34946v.m34957k(C1432j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1146h != m34773e) {
            this.f1146h = m34773e;
            this.f1148j = true;
        }
        if (this.f1147i || this.f1148j) {
            m35051b();
        }
        ColorStateList m34965c2 = m34946v.m34965c(C1432j.SwitchCompat_trackTint);
        if (m34965c2 != null) {
            this.f1150l = m34965c2;
            this.f1152n = true;
        }
        PorterDuff.Mode m34773e2 = C0317q.m34773e(m34946v.m34957k(C1432j.SwitchCompat_trackTintMode, -1), null);
        if (this.f1151m != m34773e2) {
            this.f1151m = m34773e2;
            this.f1153o = true;
        }
        if (this.f1152n || this.f1153o) {
            m35050c();
        }
        int m34954n = m34946v.m34954n(C1432j.SwitchCompat_switchTextAppearance, 0);
        if (m34954n != 0) {
            setSwitchTextAppearance(context, m34954n);
        }
        C0308m c0308m = new C0308m(this);
        this.f1142Q = c0308m;
        c0308m.m34849m(attributeSet, i);
        m34946v.m34945w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1162x = viewConfiguration.getScaledTouchSlop();
        this.f1127B = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private void m35052a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f1124d, z ? 1.0f : 0.0f);
        this.f1141P = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1141P.setAutoCancel(true);
        }
        this.f1141P.start();
    }

    /* renamed from: b */
    private void m35051b() {
        Drawable drawable = this.f1144f;
        if (drawable != null) {
            if (!this.f1147i && !this.f1148j) {
                return;
            }
            Drawable mutate = C0615a.m33212r(drawable).mutate();
            this.f1144f = mutate;
            if (this.f1147i) {
                C0615a.m33215o(mutate, this.f1145g);
            }
            if (this.f1148j) {
                C0615a.m33214p(this.f1144f, this.f1146h);
            }
            if (!this.f1144f.isStateful()) {
                return;
            }
            this.f1144f.setState(getDrawableState());
        }
    }

    /* renamed from: c */
    private void m35050c() {
        Drawable drawable = this.f1149k;
        if (drawable != null) {
            if (!this.f1152n && !this.f1153o) {
                return;
            }
            Drawable mutate = C0615a.m33212r(drawable).mutate();
            this.f1149k = mutate;
            if (this.f1152n) {
                C0615a.m33215o(mutate, this.f1150l);
            }
            if (this.f1153o) {
                C0615a.m33214p(this.f1149k, this.f1151m);
            }
            if (!this.f1149k.isStateful()) {
                return;
            }
            this.f1149k.setState(getDrawableState());
        }
    }

    /* renamed from: d */
    private void m35049d() {
        ObjectAnimator objectAnimator = this.f1141P;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* renamed from: e */
    private void m35048e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: f */
    private static float m35047f(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: g */
    private boolean m35046g(float f, float f2) {
        int i;
        if (this.f1144f == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1144f.getPadding(this.f1143R);
        int i2 = this.f1133H;
        int i3 = (this.f1132G + thumbOffset) - this.f1162x;
        int i4 = this.f1131F;
        Rect rect = this.f1143R;
        int i5 = rect.left;
        int i6 = rect.right;
        int i7 = this.f1135J;
        boolean z = false;
        if (f > i3) {
            z = false;
            if (f < i4 + i3 + i5 + i6 + i) {
                z = false;
                if (f2 > i2 - i) {
                    z = false;
                    if (f2 < i7 + i) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    private boolean getTargetCheckedState() {
        return this.f1128C > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0305k0.m34869b(this) ? 1.0f - this.f1128C : this.f1128C) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1149k;
        if (drawable != null) {
            Rect rect = this.f1143R;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f1144f;
            Rect m34774d = drawable2 != null ? C0317q.m34774d(drawable2) : C0317q.f1363c;
            return ((((this.f1129D - this.f1131F) - rect.left) - rect.right) - m34774d.left) - m34774d.right;
        }
        return 0;
    }

    /* renamed from: h */
    private Layout m35045h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f1140O;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f1136K;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: i */
    private void m35044i() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f1159u;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C1430h.abc_capital_off);
            }
            C1679w.m29333I0(this, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: j */
    private void m35043j() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f1158t;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C1430h.abc_capital_on);
            }
            C1679w.m29333I0(this, str);
        }
    }

    /* renamed from: k */
    private void m35042k(int i, int i2) {
        setSwitchTypeface(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: l */
    private void m35041l(MotionEvent motionEvent) {
        this.f1161w = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f1126A.computeCurrentVelocity(1000);
            float xVelocity = this.f1126A.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1127B) {
                z = getTargetCheckedState();
            } else if (!C0305k0.m34869b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m35048e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        Rect rect = this.f1143R;
        int i5 = this.f1132G;
        int i6 = this.f1133H;
        int i7 = this.f1134I;
        int i8 = this.f1135J;
        int thumbOffset = getThumbOffset() + i5;
        Drawable drawable = this.f1144f;
        Rect m34774d = drawable != null ? C0317q.m34774d(drawable) : C0317q.f1363c;
        Drawable drawable2 = this.f1149k;
        int i9 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i10 = rect.left;
            int i11 = thumbOffset + i10;
            if (m34774d != null) {
                int i12 = m34774d.left;
                int i13 = i5;
                if (i12 > i10) {
                    i13 = i5 + (i12 - i10);
                }
                int i14 = m34774d.top;
                int i15 = rect.top;
                i3 = i14 > i15 ? (i14 - i15) + i6 : i6;
                int i16 = m34774d.right;
                int i17 = rect.right;
                i = i7;
                if (i16 > i17) {
                    i = i7 - (i16 - i17);
                }
                int i18 = m34774d.bottom;
                int i19 = rect.bottom;
                i5 = i13;
                i7 = i;
                i4 = i3;
                if (i18 > i19) {
                    i5 = i13;
                    i2 = i8 - (i18 - i19);
                    this.f1149k.setBounds(i5, i3, i, i2);
                    i9 = i11;
                }
            } else {
                i4 = i6;
            }
            i2 = i8;
            i3 = i4;
            i = i7;
            this.f1149k.setBounds(i5, i3, i, i2);
            i9 = i11;
        }
        Drawable drawable3 = this.f1144f;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = i9 - rect.left;
            int i21 = i9 + this.f1131F + rect.right;
            this.f1144f.setBounds(i20, i6, i21, i8);
            Drawable background = getBackground();
            if (background != null) {
                C0615a.m33218l(background, i20, i6, i21, i8);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f1144f;
        if (drawable != null) {
            C0615a.m33219k(drawable, f, f2);
        }
        Drawable drawable2 = this.f1149k;
        if (drawable2 != null) {
            C0615a.m33219k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1144f;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f1149k;
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
        if (!C0305k0.m34869b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f1129D;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f1156r;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0305k0.m34869b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f1129D;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f1156r;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f1160v;
    }

    public boolean getSplitTrack() {
        return this.f1157s;
    }

    public int getSwitchMinWidth() {
        return this.f1155q;
    }

    public int getSwitchPadding() {
        return this.f1156r;
    }

    public CharSequence getTextOff() {
        return this.f1159u;
    }

    public CharSequence getTextOn() {
        return this.f1158t;
    }

    public Drawable getThumbDrawable() {
        return this.f1144f;
    }

    public int getThumbTextPadding() {
        return this.f1154p;
    }

    public ColorStateList getThumbTintList() {
        return this.f1145g;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f1146h;
    }

    public Drawable getTrackDrawable() {
        return this.f1149k;
    }

    public ColorStateList getTrackTintList() {
        return this.f1150l;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f1151m;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1144f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1149k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1141P;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f1141P.end();
        this.f1141P = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f1125e);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f1143R;
        Drawable drawable = this.f1149k;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f1133H;
        int i3 = this.f1135J;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f1144f;
        if (drawable != null) {
            if (!this.f1157s || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m34774d = C0317q.m34774d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m34774d.left;
                rect.right -= m34774d.right;
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
        Layout layout = getTargetCheckedState() ? this.f1138M : this.f1139N;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f1137L;
            if (colorStateList != null) {
                this.f1136K.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f1136K.drawableState = drawableState;
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
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1158t : this.f1159u;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
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
        if (this.f1144f != null) {
            Rect rect = this.f1143R;
            Drawable drawable = this.f1149k;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m34774d = C0317q.m34774d(this.f1144f);
            i5 = Math.max(0, m34774d.left - rect.left);
            i11 = Math.max(0, m34774d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0305k0.m34869b(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.f1129D + i6) - i5) - i11;
        } else {
            int width = (getWidth() - getPaddingRight()) - i11;
            i7 = width;
            i6 = (width - this.f1129D) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i10 = this.f1130E;
            i9 = paddingTop - (i10 / 2);
        } else if (gravity == 80) {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f1130E;
            this.f1132G = i6;
            this.f1133H = i9;
            this.f1135J = i8;
            this.f1134I = i7;
        } else {
            i9 = getPaddingTop();
            i10 = this.f1130E;
        }
        i8 = i10 + i9;
        this.f1132G = i6;
        this.f1133H = i9;
        this.f1135J = i8;
        this.f1134I = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f1160v) {
            if (this.f1138M == null) {
                this.f1138M = m35045h(this.f1158t);
            }
            if (this.f1139N == null) {
                this.f1139N = m35045h(this.f1159u);
            }
        }
        Rect rect = this.f1143R;
        Drawable drawable = this.f1144f;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1144f.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f1144f.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f1131F = Math.max(this.f1160v ? Math.max(this.f1138M.getWidth(), this.f1139N.getWidth()) + (this.f1154p * 2) : 0, i4);
        Drawable drawable2 = this.f1149k;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1149k.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1144f;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect m34774d = C0317q.m34774d(drawable3);
            i9 = Math.max(i6, m34774d.left);
            i8 = Math.max(i7, m34774d.right);
        }
        int max = Math.max(this.f1155q, (this.f1131F * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f1129D = max;
        this.f1130E = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1158t : this.f1159u;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L44;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            m35043j();
        } else {
            m35044i();
        }
        if (getWindowToken() != null && C1679w.m29313V(this)) {
            m35052a(isChecked);
            return;
        }
        m35049d();
        setThumbPosition(isChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0649k.m33072s(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f1160v != z) {
            this.f1160v = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f1157s = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f1155q = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f1156r = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        C0286e0 m34948t = C0286e0.m34948t(context, i, C1432j.TextAppearance);
        ColorStateList m34965c = m34948t.m34965c(C1432j.TextAppearance_android_textColor);
        if (m34965c != null) {
            this.f1137L = m34965c;
        } else {
            this.f1137L = getTextColors();
        }
        int m34962f = m34948t.m34962f(C1432j.TextAppearance_android_textSize, 0);
        if (m34962f != 0) {
            float f = m34962f;
            if (f != this.f1136K.getTextSize()) {
                this.f1136K.setTextSize(f);
                requestLayout();
            }
        }
        m35042k(m34948t.m34957k(C1432j.TextAppearance_android_typeface, -1), m34948t.m34957k(C1432j.TextAppearance_android_textStyle, -1));
        if (m34948t.m34967a(C1432j.TextAppearance_textAllCaps, false)) {
            this.f1140O = new C1453a(getContext());
        } else {
            this.f1140O = null;
        }
        m34948t.m34945w();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f1136K.getTypeface() == null || this.f1136K.getTypeface().equals(typeface)) && (this.f1136K.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f1136K.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i <= 0) {
            this.f1136K.setFakeBoldText(false);
            this.f1136K.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(defaultFromStyle);
        int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        TextPaint textPaint = this.f1136K;
        if ((style & 1) != 0) {
            z = true;
        }
        textPaint.setFakeBoldText(z);
        TextPaint textPaint2 = this.f1136K;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint2.setTextSkewX(f);
    }

    public void setTextOff(CharSequence charSequence) {
        this.f1159u = charSequence;
        requestLayout();
        if (!isChecked()) {
            m35044i();
        }
    }

    public void setTextOn(CharSequence charSequence) {
        this.f1158t = charSequence;
        requestLayout();
        if (isChecked()) {
            m35043j();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1144f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1144f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f1128C = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C1433a.m30126d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f1154p = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f1145g = colorStateList;
        this.f1147i = true;
        m35051b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f1146h = mode;
        this.f1148j = true;
        m35051b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1149k;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1149k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C1433a.m30126d(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f1150l = colorStateList;
        this.f1152n = true;
        m35050c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f1151m = mode;
        this.f1153o = true;
        m35050c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1144f || drawable == this.f1149k;
    }
}
