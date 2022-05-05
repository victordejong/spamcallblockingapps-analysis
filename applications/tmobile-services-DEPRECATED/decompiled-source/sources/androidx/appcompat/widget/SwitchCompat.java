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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: S */
    private static final Property<SwitchCompat, Float> f1299S = new Property<SwitchCompat, Float>(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1303C);
        }

        /* renamed from: b */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    };

    /* renamed from: T */
    private static final int[] f1300T = {16842912};

    /* renamed from: A */
    private VelocityTracker f1301A;

    /* renamed from: B */
    private int f1302B;

    /* renamed from: C */
    float f1303C;

    /* renamed from: D */
    private int f1304D;

    /* renamed from: E */
    private int f1305E;

    /* renamed from: F */
    private int f1306F;

    /* renamed from: G */
    private int f1307G;

    /* renamed from: H */
    private int f1308H;

    /* renamed from: I */
    private int f1309I;

    /* renamed from: J */
    private int f1310J;

    /* renamed from: K */
    private final TextPaint f1311K;

    /* renamed from: L */
    private ColorStateList f1312L;

    /* renamed from: M */
    private Layout f1313M;

    /* renamed from: N */
    private Layout f1314N;

    /* renamed from: O */
    private TransformationMethod f1315O;

    /* renamed from: P */
    ObjectAnimator f1316P;

    /* renamed from: Q */
    private final AppCompatTextHelper f1317Q;

    /* renamed from: R */
    private final Rect f1318R;

    /* renamed from: f */
    private Drawable f1319f;

    /* renamed from: g */
    private ColorStateList f1320g;

    /* renamed from: h */
    private PorterDuff.Mode f1321h;

    /* renamed from: i */
    private boolean f1322i;

    /* renamed from: j */
    private boolean f1323j;

    /* renamed from: k */
    private Drawable f1324k;

    /* renamed from: l */
    private ColorStateList f1325l;

    /* renamed from: m */
    private PorterDuff.Mode f1326m;

    /* renamed from: n */
    private boolean f1327n;

    /* renamed from: o */
    private boolean f1328o;

    /* renamed from: p */
    private int f1329p;

    /* renamed from: q */
    private int f1330q;

    /* renamed from: r */
    private int f1331r;

    /* renamed from: s */
    private boolean f1332s;

    /* renamed from: t */
    private CharSequence f1333t;

    /* renamed from: u */
    private CharSequence f1334u;

    /* renamed from: v */
    private boolean f1335v;

    /* renamed from: w */
    private int f1336w;

    /* renamed from: x */
    private int f1337x;

    /* renamed from: y */
    private float f1338y;

    /* renamed from: z */
    private float f1339z;

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1320g = null;
        this.f1321h = null;
        this.f1322i = false;
        this.f1323j = false;
        this.f1325l = null;
        this.f1326m = null;
        this.f1327n = false;
        this.f1328o = false;
        this.f1301A = VelocityTracker.obtain();
        this.f1318R = new Rect();
        ThemeUtils.m21274a(this, getContext());
        this.f1311K = new TextPaint(1);
        Resources resources = getResources();
        this.f1311K.density = resources.getDisplayMetrics().density;
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.SwitchCompat, i, 0);
        ViewCompat.m19187l0(this, context, C0042R.styleable.SwitchCompat, attributeSet, v.m21248r(), i, 0);
        Drawable g = v.m21259g(C0042R.styleable.SwitchCompat_android_thumb);
        this.f1319f = g;
        if (g != null) {
            g.setCallback(this);
        }
        Drawable g2 = v.m21259g(C0042R.styleable.SwitchCompat_track);
        this.f1324k = g2;
        if (g2 != null) {
            g2.setCallback(this);
        }
        this.f1333t = v.m21250p(C0042R.styleable.SwitchCompat_android_textOn);
        this.f1334u = v.m21250p(C0042R.styleable.SwitchCompat_android_textOff);
        this.f1335v = v.m21265a(C0042R.styleable.SwitchCompat_showText, true);
        this.f1329p = v.m21260f(C0042R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1330q = v.m21260f(C0042R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f1331r = v.m21260f(C0042R.styleable.SwitchCompat_switchPadding, 0);
        this.f1332s = v.m21265a(C0042R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList c = v.m21263c(C0042R.styleable.SwitchCompat_thumbTint);
        if (c != null) {
            this.f1320g = c;
            this.f1322i = true;
        }
        PorterDuff.Mode e = DrawableUtils.m21501e(v.m21255k(C0042R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1321h != e) {
            this.f1321h = e;
            this.f1323j = true;
        }
        if (this.f1322i || this.f1323j) {
            m21285b();
        }
        ColorStateList c2 = v.m21263c(C0042R.styleable.SwitchCompat_trackTint);
        if (c2 != null) {
            this.f1325l = c2;
            this.f1327n = true;
        }
        PorterDuff.Mode e2 = DrawableUtils.m21501e(v.m21255k(C0042R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1326m != e2) {
            this.f1326m = e2;
            this.f1328o = true;
        }
        if (this.f1327n || this.f1328o) {
            m21284c();
        }
        int n = v.m21252n(C0042R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (n != 0) {
            setSwitchTextAppearance(context, n);
        }
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1317Q = appCompatTextHelper;
        appCompatTextHelper.m21564m(attributeSet, i);
        v.m21243w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1337x = viewConfiguration.getScaledTouchSlop();
        this.f1302B = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private void m21286a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f1299S, z ? 1.0f : 0.0f);
        this.f1316P = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1316P.setAutoCancel(true);
        }
        this.f1316P.start();
    }

    /* renamed from: b */
    private void m21285b() {
        if (this.f1319f == null) {
            return;
        }
        if (this.f1322i || this.f1323j) {
            Drawable mutate = DrawableCompat.m19495r(this.f1319f).mutate();
            this.f1319f = mutate;
            if (this.f1322i) {
                DrawableCompat.m19498o(mutate, this.f1320g);
            }
            if (this.f1323j) {
                DrawableCompat.m19497p(this.f1319f, this.f1321h);
            }
            if (this.f1319f.isStateful()) {
                this.f1319f.setState(getDrawableState());
            }
        }
    }

    /* renamed from: c */
    private void m21284c() {
        if (this.f1324k == null) {
            return;
        }
        if (this.f1327n || this.f1328o) {
            Drawable mutate = DrawableCompat.m19495r(this.f1324k).mutate();
            this.f1324k = mutate;
            if (this.f1327n) {
                DrawableCompat.m19498o(mutate, this.f1325l);
            }
            if (this.f1328o) {
                DrawableCompat.m19497p(this.f1324k, this.f1326m);
            }
            if (this.f1324k.isStateful()) {
                this.f1324k.setState(getDrawableState());
            }
        }
    }

    /* renamed from: d */
    private void m21283d() {
        ObjectAnimator objectAnimator = this.f1316P;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* renamed from: e */
    private void m21282e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: f */
    private static float m21281f(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: g */
    private boolean m21280g(float f, float f2) {
        int i;
        if (this.f1319f == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1319f.getPadding(this.f1318R);
        int i2 = this.f1308H;
        int i3 = (this.f1307G + thumbOffset) - this.f1337x;
        int i4 = this.f1306F;
        Rect rect = this.f1318R;
        int i5 = rect.left;
        int i6 = rect.right;
        int i7 = this.f1310J;
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
        return this.f1303C > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((ViewUtils.m21149b(this) ? 1.0f - this.f1303C : this.f1303C) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1324k;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f1318R;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1319f;
        Rect d = drawable2 != null ? DrawableUtils.m21502d(drawable2) : DrawableUtils.f1053c;
        return ((((this.f1304D - this.f1306F) - rect.left) - rect.right) - d.left) - d.right;
    }

    /* renamed from: h */
    private Layout m21279h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f1315O;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f1311K;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* renamed from: i */
    private void m21278i(int i, int i2) {
        setSwitchTypeface(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: j */
    private void m21277j(MotionEvent motionEvent) {
        this.f1336w = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f1301A.computeCurrentVelocity(1000);
            float xVelocity = this.f1301A.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1302B) {
                z = getTargetCheckedState();
            } else if (!ViewUtils.m21149b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m21282e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.f1318R;
        int i3 = this.f1307G;
        int i4 = this.f1308H;
        int i5 = this.f1309I;
        int i6 = this.f1310J;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f1319f;
        Rect d = drawable != null ? DrawableUtils.m21502d(drawable) : DrawableUtils.f1053c;
        Drawable drawable2 = this.f1324k;
        int i7 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i8 = rect.left;
            i7 = thumbOffset + i8;
            if (d != null) {
                int i9 = d.left;
                int i10 = i3;
                if (i9 > i8) {
                    i10 = i3 + (i9 - i8);
                }
                int i11 = d.top;
                int i12 = rect.top;
                i2 = i11 > i12 ? (i11 - i12) + i4 : i4;
                int i13 = d.right;
                int i14 = rect.right;
                i5 = i5;
                if (i13 > i14) {
                    i5 -= i13 - i14;
                }
                int i15 = d.bottom;
                int i16 = rect.bottom;
                i3 = i10;
                i5 = i5;
                i2 = i2;
                if (i15 > i16) {
                    i = i6 - (i15 - i16);
                    i3 = i10;
                    this.f1324k.setBounds(i3, i2, i5, i);
                }
            } else {
                i2 = i4;
            }
            i = i6;
            this.f1324k.setBounds(i3, i2, i5, i);
        }
        Drawable drawable3 = this.f1319f;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i17 = i7 - rect.left;
            int i18 = i7 + this.f1306F + rect.right;
            this.f1319f.setBounds(i17, i4, i18, i6);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.m19501l(background, i17, i4, i18, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f1319f;
        if (drawable != null) {
            DrawableCompat.m19502k(drawable, f, f2);
        }
        Drawable drawable2 = this.f1324k;
        if (drawable2 != null) {
            DrawableCompat.m19502k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1319f;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f1324k;
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
        if (!ViewUtils.m21149b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f1304D;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f1331r;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ViewUtils.m21149b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f1304D;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f1331r;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f1335v;
    }

    public boolean getSplitTrack() {
        return this.f1332s;
    }

    public int getSwitchMinWidth() {
        return this.f1330q;
    }

    public int getSwitchPadding() {
        return this.f1331r;
    }

    public CharSequence getTextOff() {
        return this.f1334u;
    }

    public CharSequence getTextOn() {
        return this.f1333t;
    }

    public Drawable getThumbDrawable() {
        return this.f1319f;
    }

    public int getThumbTextPadding() {
        return this.f1329p;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1320g;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1321h;
    }

    public Drawable getTrackDrawable() {
        return this.f1324k;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1325l;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1326m;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1319f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1324k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1316P;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.f1316P.end();
            this.f1316P = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f1300T);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f1318R;
        Drawable drawable = this.f1324k;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f1308H;
        int i3 = this.f1310J;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f1319f;
        if (drawable != null) {
            if (!this.f1332s || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect d = DrawableUtils.m21502d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += d.left;
                rect.right -= d.right;
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
        Layout layout = getTargetCheckedState() ? this.f1313M : this.f1314N;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f1312L;
            if (colorStateList != null) {
                this.f1311K.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f1311K.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.f1333t : this.f1334u;
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
        if (this.f1319f != null) {
            Rect rect = this.f1318R;
            Drawable drawable = this.f1324k;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect d = DrawableUtils.m21502d(this.f1319f);
            i5 = Math.max(0, d.left - rect.left);
            i11 = Math.max(0, d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ViewUtils.m21149b(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.f1304D + i6) - i5) - i11;
        } else {
            int width = (getWidth() - getPaddingRight()) - i11;
            i6 = (width - this.f1304D) + i5 + i11;
            i7 = width;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i10 = this.f1305E;
            i9 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i10 / 2);
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i10 = this.f1305E;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f1305E;
            this.f1307G = i6;
            this.f1308H = i9;
            this.f1310J = i8;
            this.f1309I = i7;
        }
        i8 = i10 + i9;
        this.f1307G = i6;
        this.f1308H = i9;
        this.f1310J = i8;
        this.f1309I = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.f1335v) {
            if (this.f1313M == null) {
                this.f1313M = m21279h(this.f1333t);
            }
            if (this.f1314N == null) {
                this.f1314N = m21279h(this.f1334u);
            }
        }
        Rect rect = this.f1318R;
        Drawable drawable = this.f1319f;
        int i5 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1319f.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f1319f.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f1306F = Math.max(this.f1335v ? Math.max(this.f1313M.getWidth(), this.f1314N.getWidth()) + (this.f1329p * 2) : 0, i4);
        Drawable drawable2 = this.f1324k;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1324k.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1319f;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect d = DrawableUtils.m21502d(drawable3);
            i9 = Math.max(i6, d.left);
            i8 = Math.max(i7, d.right);
        }
        int max = Math.max(this.f1330q, (this.f1306F * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f1304D = max;
        this.f1305E = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1333t : this.f1334u;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L_0x013e;
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
        if (getWindowToken() == null || !ViewCompat.m19218S(this)) {
            m21283d();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        m21286a(isChecked);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.m18815t(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f1335v != z) {
            this.f1335v = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f1332s = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f1330q = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f1331r = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        TintTypedArray t = TintTypedArray.m21246t(context, i, C0042R.styleable.TextAppearance);
        ColorStateList c = t.m21263c(C0042R.styleable.TextAppearance_android_textColor);
        if (c != null) {
            this.f1312L = c;
        } else {
            this.f1312L = getTextColors();
        }
        int f = t.m21260f(C0042R.styleable.TextAppearance_android_textSize, 0);
        if (f != 0) {
            float f2 = f;
            if (f2 != this.f1311K.getTextSize()) {
                this.f1311K.setTextSize(f2);
                requestLayout();
            }
        }
        m21278i(t.m21255k(C0042R.styleable.TextAppearance_android_typeface, -1), t.m21255k(C0042R.styleable.TextAppearance_android_textStyle, -1));
        if (t.m21265a(C0042R.styleable.TextAppearance_textAllCaps, false)) {
            this.f1315O = new AllCapsTransformationMethod(getContext());
        } else {
            this.f1315O = null;
        }
        t.m21243w();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f1311K.getTypeface() != null && !this.f1311K.getTypeface().equals(typeface)) || (this.f1311K.getTypeface() == null && typeface != null)) {
            this.f1311K.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i > 0) {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            setSwitchTypeface(defaultFromStyle);
            int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
            TextPaint textPaint = this.f1311K;
            if ((style & 1) != 0) {
                z = true;
            }
            textPaint.setFakeBoldText(z);
            TextPaint textPaint2 = this.f1311K;
            if ((style & 2) != 0) {
                f = -0.25f;
            }
            textPaint2.setTextSkewX(f);
            return;
        }
        this.f1311K.setFakeBoldText(false);
        this.f1311K.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        this.f1334u = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f1333t = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1319f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1319f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f1303C = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(AppCompatResources.m22069d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f1329p = i;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1320g = colorStateList;
        this.f1322i = true;
        m21285b();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1321h = mode;
        this.f1323j = true;
        m21285b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1324k;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1324k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(AppCompatResources.m22069d(getContext(), i));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1325l = colorStateList;
        this.f1327n = true;
        m21284c();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1326m = mode;
        this.f1328o = true;
        m21284c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1319f || drawable == this.f1324k;
    }
}
