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
import androidx.core.graphics.drawable.C0283a;
import androidx.core.widget.C0299i;
import d.a.a;
import d.a.j;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: O */
    private static final Property<SwitchCompat, Float> f481O = new C0116a(Float.class, "thumbPos");

    /* renamed from: P */
    private static final int[] f482P = {16842912};

    /* renamed from: A */
    private int f483A;

    /* renamed from: B */
    private int f484B;

    /* renamed from: C */
    private int f485C;

    /* renamed from: D */
    private int f486D;

    /* renamed from: E */
    private int f487E;

    /* renamed from: F */
    private int f488F;

    /* renamed from: G */
    private final TextPaint f489G;

    /* renamed from: H */
    private ColorStateList f490H;

    /* renamed from: I */
    private Layout f491I;

    /* renamed from: J */
    private Layout f492J;

    /* renamed from: K */
    private TransformationMethod f493K;

    /* renamed from: L */
    ObjectAnimator f494L;

    /* renamed from: M */
    private final C0142l f495M;

    /* renamed from: N */
    private final Rect f496N;

    /* renamed from: b */
    private Drawable f497b;

    /* renamed from: c */
    private ColorStateList f498c;

    /* renamed from: d */
    private PorterDuff.Mode f499d;

    /* renamed from: e */
    private boolean f500e;

    /* renamed from: f */
    private boolean f501f;

    /* renamed from: g */
    private Drawable f502g;

    /* renamed from: h */
    private ColorStateList f503h;

    /* renamed from: i */
    private PorterDuff.Mode f504i;

    /* renamed from: j */
    private boolean f505j;

    /* renamed from: k */
    private boolean f506k;

    /* renamed from: l */
    private int f507l;

    /* renamed from: m */
    private int f508m;

    /* renamed from: n */
    private int f509n;

    /* renamed from: o */
    private boolean f510o;

    /* renamed from: p */
    private CharSequence f511p;

    /* renamed from: q */
    private CharSequence f512q;

    /* renamed from: r */
    private boolean f513r;

    /* renamed from: s */
    private int f514s;

    /* renamed from: t */
    private int f515t;

    /* renamed from: u */
    private float f516u;

    /* renamed from: v */
    private float f517v;

    /* renamed from: w */
    private VelocityTracker f518w;

    /* renamed from: x */
    private int f519x;

    /* renamed from: y */
    float f520y;

    /* renamed from: z */
    private int f521z;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    class C0116a extends Property<SwitchCompat, Float> {
        C0116a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f520y);
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
        this(context, attributeSet, a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f498c = null;
        this.f499d = null;
        this.f500e = false;
        this.f501f = false;
        this.f503h = null;
        this.f504i = null;
        this.f505j = false;
        this.f506k = false;
        this.f518w = VelocityTracker.obtain();
        this.f496N = new Rect();
        C0161y.m14406a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f489G = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = j.SwitchCompat;
        C0127d0 m14618v = C0127d0.m14618v(context, attributeSet, iArr, i, 0);
        t.l0(this, context, iArr, attributeSet, m14618v.m14622r(), i, 0);
        Drawable m14633g = m14618v.m14633g(j.SwitchCompat_android_thumb);
        this.f497b = m14633g;
        if (m14633g != null) {
            m14633g.setCallback(this);
        }
        Drawable m14633g2 = m14618v.m14633g(j.SwitchCompat_track);
        this.f502g = m14633g2;
        if (m14633g2 != null) {
            m14633g2.setCallback(this);
        }
        this.f511p = m14618v.m14624p(j.SwitchCompat_android_textOn);
        this.f512q = m14618v.m14624p(j.SwitchCompat_android_textOff);
        this.f513r = m14618v.m14639a(j.SwitchCompat_showText, true);
        this.f507l = m14618v.m14634f(j.SwitchCompat_thumbTextPadding, 0);
        this.f508m = m14618v.m14634f(j.SwitchCompat_switchMinWidth, 0);
        this.f509n = m14618v.m14634f(j.SwitchCompat_switchPadding, 0);
        this.f510o = m14618v.m14639a(j.SwitchCompat_splitTrack, false);
        ColorStateList m14637c = m14618v.m14637c(j.SwitchCompat_thumbTint);
        if (m14637c != null) {
            this.f498c = m14637c;
            this.f500e = true;
        }
        PorterDuff.Mode m14470e = C0147p.m14470e(m14618v.m14629k(j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f499d != m14470e) {
            this.f499d = m14470e;
            this.f501f = true;
        }
        if (this.f500e || this.f501f) {
            m14716b();
        }
        ColorStateList m14637c2 = m14618v.m14637c(j.SwitchCompat_trackTint);
        if (m14637c2 != null) {
            this.f503h = m14637c2;
            this.f505j = true;
        }
        PorterDuff.Mode m14470e2 = C0147p.m14470e(m14618v.m14629k(j.SwitchCompat_trackTintMode, -1), null);
        if (this.f504i != m14470e2) {
            this.f504i = m14470e2;
            this.f506k = true;
        }
        if (this.f505j || this.f506k) {
            m14715c();
        }
        int m14626n = m14618v.m14626n(j.SwitchCompat_switchTextAppearance, 0);
        if (m14626n != 0) {
            setSwitchTextAppearance(context, m14626n);
        }
        C0142l c0142l = new C0142l(this);
        this.f495M = c0142l;
        c0142l.m14546m(attributeSet, i);
        m14618v.m14617w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f515t = viewConfiguration.getScaledTouchSlop();
        this.f519x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private void m14717a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f481O, z ? 1.0f : 0.0f);
        this.f494L = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f494L.setAutoCancel(true);
        }
        this.f494L.start();
    }

    /* renamed from: b */
    private void m14716b() {
        Drawable drawable = this.f497b;
        if (drawable != null) {
            if (!this.f500e && !this.f501f) {
                return;
            }
            Drawable mutate = C0283a.m13461r(drawable).mutate();
            this.f497b = mutate;
            if (this.f500e) {
                C0283a.m13464o(mutate, this.f498c);
            }
            if (this.f501f) {
                C0283a.m13463p(this.f497b, this.f499d);
            }
            if (!this.f497b.isStateful()) {
                return;
            }
            this.f497b.setState(getDrawableState());
        }
    }

    /* renamed from: c */
    private void m14715c() {
        Drawable drawable = this.f502g;
        if (drawable != null) {
            if (!this.f505j && !this.f506k) {
                return;
            }
            Drawable mutate = C0283a.m13461r(drawable).mutate();
            this.f502g = mutate;
            if (this.f505j) {
                C0283a.m13464o(mutate, this.f503h);
            }
            if (this.f506k) {
                C0283a.m13463p(this.f502g, this.f504i);
            }
            if (!this.f502g.isStateful()) {
                return;
            }
            this.f502g.setState(getDrawableState());
        }
    }

    /* renamed from: d */
    private void m14714d() {
        ObjectAnimator objectAnimator = this.f494L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* renamed from: e */
    private void m14713e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: f */
    private static float m14712f(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: g */
    private boolean m14711g(float f, float f2) {
        int i;
        if (this.f497b == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f497b.getPadding(this.f496N);
        int i2 = this.f486D;
        int i3 = (this.f485C + thumbOffset) - this.f515t;
        int i4 = this.f484B;
        Rect rect = this.f496N;
        int i5 = rect.left;
        int i6 = rect.right;
        int i7 = this.f488F;
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
        return this.f520y > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0139j0.m14565b(this) ? 1.0f - this.f520y : this.f520y) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f502g;
        if (drawable != null) {
            Rect rect = this.f496N;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f497b;
            Rect m14471d = drawable2 != null ? C0147p.m14471d(drawable2) : C0147p.f668c;
            return ((((this.f521z - this.f484B) - rect.left) - rect.right) - m14471d.left) - m14471d.right;
        }
        return 0;
    }

    /* renamed from: h */
    private Layout m14710h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f493K;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f489G;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* renamed from: i */
    private void m14709i(int i, int i2) {
        setSwitchTypeface(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: j */
    private void m14708j(MotionEvent motionEvent) {
        this.f514s = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f518w.computeCurrentVelocity(1000);
            float xVelocity = this.f518w.getXVelocity();
            if (Math.abs(xVelocity) <= this.f519x) {
                z = getTargetCheckedState();
            } else if (!C0139j0.m14565b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m14713e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Rect rect = this.f496N;
        int i6 = this.f485C;
        int i7 = this.f486D;
        int i8 = this.f487E;
        int i9 = this.f488F;
        int thumbOffset = getThumbOffset() + i6;
        Drawable drawable = this.f497b;
        Rect m14471d = drawable != null ? C0147p.m14471d(drawable) : C0147p.f668c;
        Drawable drawable2 = this.f502g;
        int i10 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = rect.left;
            int i12 = thumbOffset + i11;
            if (m14471d != null) {
                int i13 = m14471d.left;
                i3 = i6;
                if (i13 > i11) {
                    i3 = i6 + (i13 - i11);
                }
                int i14 = m14471d.top;
                int i15 = rect.top;
                i4 = i14 > i15 ? (i14 - i15) + i7 : i7;
                int i16 = m14471d.right;
                int i17 = rect.right;
                i2 = i8;
                if (i16 > i17) {
                    i2 = i8 - (i16 - i17);
                }
                int i18 = m14471d.bottom;
                int i19 = rect.bottom;
                i6 = i3;
                i8 = i2;
                i5 = i4;
                if (i18 > i19) {
                    i = i9 - (i18 - i19);
                    this.f502g.setBounds(i3, i4, i2, i);
                    i10 = i12;
                }
            } else {
                i5 = i7;
            }
            i4 = i5;
            i = i9;
            i2 = i8;
            i3 = i6;
            this.f502g.setBounds(i3, i4, i2, i);
            i10 = i12;
        }
        Drawable drawable3 = this.f497b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = i10 - rect.left;
            int i21 = i10 + this.f484B + rect.right;
            this.f497b.setBounds(i20, i7, i21, i9);
            Drawable background = getBackground();
            if (background != null) {
                C0283a.m13467l(background, i20, i7, i21, i9);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f497b;
        if (drawable != null) {
            C0283a.m13468k(drawable, f, f2);
        }
        Drawable drawable2 = this.f502g;
        if (drawable2 != null) {
            C0283a.m13468k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f497b;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f502g;
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
        if (!C0139j0.m14565b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f521z;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f509n;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0139j0.m14565b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f521z;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f509n;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f513r;
    }

    public boolean getSplitTrack() {
        return this.f510o;
    }

    public int getSwitchMinWidth() {
        return this.f508m;
    }

    public int getSwitchPadding() {
        return this.f509n;
    }

    public CharSequence getTextOff() {
        return this.f512q;
    }

    public CharSequence getTextOn() {
        return this.f511p;
    }

    public Drawable getThumbDrawable() {
        return this.f497b;
    }

    public int getThumbTextPadding() {
        return this.f507l;
    }

    public ColorStateList getThumbTintList() {
        return this.f498c;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f499d;
    }

    public Drawable getTrackDrawable() {
        return this.f502g;
    }

    public ColorStateList getTrackTintList() {
        return this.f503h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f504i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f497b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f502g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f494L;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f494L.end();
        this.f494L = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f482P);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f496N;
        Drawable drawable = this.f502g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f486D;
        int i3 = this.f488F;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f497b;
        if (drawable != null) {
            if (!this.f510o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m14471d = C0147p.m14471d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m14471d.left;
                rect.right -= m14471d.right;
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
        Layout layout = getTargetCheckedState() ? this.f491I : this.f492J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f490H;
            if (colorStateList != null) {
                this.f489G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f489G.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.f511p : this.f512q;
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
        if (this.f497b != null) {
            Rect rect = this.f496N;
            Drawable drawable = this.f502g;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m14471d = C0147p.m14471d(this.f497b);
            i5 = Math.max(0, m14471d.left - rect.left);
            i11 = Math.max(0, m14471d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0139j0.m14565b(this)) {
            int paddingLeft = getPaddingLeft() + i5;
            i7 = paddingLeft;
            i6 = ((this.f521z + paddingLeft) - i5) - i11;
        } else {
            i6 = (getWidth() - getPaddingRight()) - i11;
            i7 = (i6 - this.f521z) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i10 = this.f483A;
            i9 = paddingTop - (i10 / 2);
        } else if (gravity == 80) {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f483A;
            this.f485C = i7;
            this.f486D = i9;
            this.f488F = i8;
            this.f487E = i6;
        } else {
            i9 = getPaddingTop();
            i10 = this.f483A;
        }
        i8 = i10 + i9;
        this.f485C = i7;
        this.f486D = i9;
        this.f488F = i8;
        this.f487E = i6;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f513r) {
            if (this.f491I == null) {
                this.f491I = m14710h(this.f511p);
            }
            if (this.f492J == null) {
                this.f492J = m14710h(this.f512q);
            }
        }
        Rect rect = this.f496N;
        Drawable drawable = this.f497b;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f497b.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f497b.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f484B = Math.max(this.f513r ? Math.max(this.f491I.getWidth(), this.f492J.getWidth()) + (this.f507l * 2) : 0, i4);
        Drawable drawable2 = this.f502g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f502g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f497b;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect m14471d = C0147p.m14471d(drawable3);
            i9 = Math.max(i6, m14471d.left);
            i8 = Math.max(i7, m14471d.right);
        }
        int max = Math.max(this.f508m, (this.f484B * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f521z = max;
        this.f483A = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f511p : this.f512q;
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
        if (getWindowToken() != null && t.S(this)) {
            m14717a(isChecked);
            return;
        }
        m14714d();
        setThumbPosition(isChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0299i.m13386s(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f513r != z) {
            this.f513r = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f510o = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f508m = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f509n = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        C0127d0 m14620t = C0127d0.m14620t(context, i, j.TextAppearance);
        ColorStateList m14637c = m14620t.m14637c(j.TextAppearance_android_textColor);
        if (m14637c == null) {
            m14637c = getTextColors();
        }
        this.f490H = m14637c;
        int m14634f = m14620t.m14634f(j.TextAppearance_android_textSize, 0);
        if (m14634f != 0) {
            float f = m14634f;
            if (f != this.f489G.getTextSize()) {
                this.f489G.setTextSize(f);
                requestLayout();
            }
        }
        m14709i(m14620t.m14629k(j.TextAppearance_android_typeface, -1), m14620t.m14629k(j.TextAppearance_android_textStyle, -1));
        this.f493K = m14620t.m14639a(j.TextAppearance_textAllCaps, false) ? new d.a.n.a(getContext()) : null;
        m14620t.m14617w();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f489G.getTypeface() == null || this.f489G.getTypeface().equals(typeface)) && (this.f489G.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f489G.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i <= 0) {
            this.f489G.setFakeBoldText(false);
            this.f489G.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(defaultFromStyle);
        int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        TextPaint textPaint = this.f489G;
        if ((style & 1) != 0) {
            z = true;
        }
        textPaint.setFakeBoldText(z);
        TextPaint textPaint2 = this.f489G;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint2.setTextSkewX(f);
    }

    public void setTextOff(CharSequence charSequence) {
        this.f512q = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f511p = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f497b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f497b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f520y = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(d.a.k.a.a.d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f507l = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f498c = colorStateList;
        this.f500e = true;
        m14716b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f499d = mode;
        this.f501f = true;
        m14716b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f502g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f502g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(d.a.k.a.a.d(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f503h = colorStateList;
        this.f505j = true;
        m14715c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f504i = mode;
        this.f506k = true;
        m14715c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f497b || drawable == this.f502g;
    }
}
