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
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.p022d.C0239a;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
import androidx.core.widget.C0959h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: A */
    private int f1387A;

    /* renamed from: B */
    private int f1388B;

    /* renamed from: C */
    private int f1389C;

    /* renamed from: D */
    private int f1390D;

    /* renamed from: E */
    private int f1391E;

    /* renamed from: F */
    private int f1392F;

    /* renamed from: G */
    private int f1393G;

    /* renamed from: H */
    private final TextPaint f1394H;

    /* renamed from: I */
    private ColorStateList f1395I;

    /* renamed from: J */
    private Layout f1396J;

    /* renamed from: K */
    private Layout f1397K;

    /* renamed from: L */
    private TransformationMethod f1398L;

    /* renamed from: M */
    private final C0399l f1399M;

    /* renamed from: N */
    private final Rect f1400N;

    /* renamed from: a */
    public Drawable f1401a;

    /* renamed from: b */
    public Drawable f1402b;

    /* renamed from: c */
    float f1403c;

    /* renamed from: d */
    ObjectAnimator f1404d;

    /* renamed from: f */
    private ColorStateList f1405f;

    /* renamed from: g */
    private PorterDuff.Mode f1406g;

    /* renamed from: h */
    private boolean f1407h;

    /* renamed from: i */
    private boolean f1408i;

    /* renamed from: j */
    private ColorStateList f1409j;

    /* renamed from: k */
    private PorterDuff.Mode f1410k;

    /* renamed from: l */
    private boolean f1411l;

    /* renamed from: m */
    private boolean f1412m;

    /* renamed from: n */
    private int f1413n;

    /* renamed from: o */
    private int f1414o;

    /* renamed from: p */
    private int f1415p;

    /* renamed from: q */
    private boolean f1416q;

    /* renamed from: r */
    private CharSequence f1417r;

    /* renamed from: s */
    private CharSequence f1418s;

    /* renamed from: t */
    private boolean f1419t;

    /* renamed from: u */
    private int f1420u;

    /* renamed from: v */
    private int f1421v;

    /* renamed from: w */
    private float f1422w;

    /* renamed from: x */
    private float f1423x;

    /* renamed from: y */
    private VelocityTracker f1424y;

    /* renamed from: z */
    private int f1425z;

    /* renamed from: e */
    private static final Property<SwitchCompat, Float> f1386e = new Property<SwitchCompat, Float>(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
        @Override // android.util.Property
        public final /* synthetic */ Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1403c);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(SwitchCompat switchCompat, Float f) {
            switchCompat.m45863a(f.floatValue());
        }
    };

    /* renamed from: O */
    private static final int[] f1385O = {16842912};

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1405f = null;
        this.f1406g = null;
        this.f1407h = false;
        this.f1408i = false;
        this.f1409j = null;
        this.f1410k = null;
        this.f1411l = false;
        this.f1412m = false;
        this.f1424y = VelocityTracker.obtain();
        this.f1400N = new Rect();
        C0425x.m45572a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f1394H = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.SwitchCompat, i, 0);
        C0926v.m44133a(this, context, C0142a.C0152j.SwitchCompat, attributeSet, m45804a.f1491a, i);
        Drawable m45810a = m45804a.m45810a(C0142a.C0152j.SwitchCompat_android_thumb);
        this.f1401a = m45810a;
        if (m45810a != null) {
            m45810a.setCallback(this);
        }
        Drawable m45810a2 = m45804a.m45810a(C0142a.C0152j.SwitchCompat_track);
        this.f1402b = m45810a2;
        if (m45810a2 != null) {
            m45810a2.setCallback(this);
        }
        this.f1417r = m45804a.m45801c(C0142a.C0152j.SwitchCompat_android_textOn);
        this.f1418s = m45804a.m45801c(C0142a.C0152j.SwitchCompat_android_textOff);
        this.f1419t = m45804a.m45807a(C0142a.C0152j.SwitchCompat_showText, true);
        this.f1413n = m45804a.m45796e(C0142a.C0152j.SwitchCompat_thumbTextPadding, 0);
        this.f1414o = m45804a.m45796e(C0142a.C0152j.SwitchCompat_switchMinWidth, 0);
        this.f1415p = m45804a.m45796e(C0142a.C0152j.SwitchCompat_switchPadding, 0);
        this.f1416q = m45804a.m45807a(C0142a.C0152j.SwitchCompat_splitTrack, false);
        ColorStateList m45797e = m45804a.m45797e(C0142a.C0152j.SwitchCompat_thumbTint);
        if (m45797e != null) {
            this.f1405f = m45797e;
            this.f1407h = true;
        }
        PorterDuff.Mode m45622a = C0407p.m45622a(m45804a.m45809a(C0142a.C0152j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1406g != m45622a) {
            this.f1406g = m45622a;
            this.f1408i = true;
        }
        if (this.f1407h || this.f1408i) {
            m45859d();
        }
        ColorStateList m45797e2 = m45804a.m45797e(C0142a.C0152j.SwitchCompat_trackTint);
        if (m45797e2 != null) {
            this.f1409j = m45797e2;
            this.f1411l = true;
        }
        PorterDuff.Mode m45622a2 = C0407p.m45622a(m45804a.m45809a(C0142a.C0152j.SwitchCompat_trackTintMode, -1), null);
        if (this.f1410k != m45622a2) {
            this.f1410k = m45622a2;
            this.f1412m = true;
        }
        if (this.f1411l || this.f1412m) {
            m45860c();
        }
        int m45792g = m45804a.m45792g(C0142a.C0152j.SwitchCompat_switchTextAppearance, 0);
        if (m45792g != 0) {
            setSwitchTextAppearance(context, m45792g);
        }
        C0399l c0399l = new C0399l(this);
        this.f1399M = c0399l;
        c0399l.m45694a(attributeSet, i);
        m45804a.f1491a.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1421v = viewConfiguration.getScaledTouchSlop();
        this.f1425z = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private Layout m45862a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f1398L;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f1394H;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
    }

    /* renamed from: c */
    private void m45860c() {
        Drawable drawable = this.f1402b;
        if (drawable != null) {
            if (!this.f1411l && !this.f1412m) {
                return;
            }
            Drawable mutate = C0840a.m44345f(drawable).mutate();
            this.f1402b = mutate;
            if (this.f1411l) {
                C0840a.m44355a(mutate, this.f1409j);
            }
            if (this.f1412m) {
                C0840a.m44352a(this.f1402b, this.f1410k);
            }
            if (!this.f1402b.isStateful()) {
                return;
            }
            this.f1402b.setState(getDrawableState());
        }
    }

    /* renamed from: d */
    private void m45859d() {
        Drawable drawable = this.f1401a;
        if (drawable != null) {
            if (!this.f1407h && !this.f1408i) {
                return;
            }
            Drawable mutate = C0840a.m44345f(drawable).mutate();
            this.f1401a = mutate;
            if (this.f1407h) {
                C0840a.m44355a(mutate, this.f1405f);
            }
            if (this.f1408i) {
                C0840a.m44352a(this.f1401a, this.f1406g);
            }
            if (!this.f1401a.isStateful()) {
                return;
            }
            this.f1401a.setState(getDrawableState());
        }
    }

    /* renamed from: e */
    private boolean m45858e() {
        return this.f1403c > 0.5f;
    }

    /* renamed from: f */
    private int m45857f() {
        return (int) (((C0380ah.m45770a(this) ? 1.0f - this.f1403c : this.f1403c) * m45856g()) + 0.5f);
    }

    /* renamed from: g */
    private int m45856g() {
        Drawable drawable = this.f1402b;
        if (drawable != null) {
            Rect rect = this.f1400N;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f1401a;
            Rect m45621a = drawable2 != null ? C0407p.m45621a(drawable2) : C0407p.f1630a;
            return ((((this.f1387A - this.f1389C) - rect.left) - rect.right) - m45621a.left) - m45621a.right;
        }
        return 0;
    }

    /* renamed from: a */
    public final ColorStateList m45864a() {
        return this.f1409j;
    }

    /* renamed from: a */
    final void m45863a(float f) {
        this.f1403c = f;
        invalidate();
    }

    /* renamed from: b */
    public final ColorStateList m45861b() {
        return this.f1405f;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Rect rect = this.f1400N;
        int i6 = this.f1390D;
        int i7 = this.f1391E;
        int i8 = this.f1392F;
        int i9 = this.f1393G;
        int m45857f = m45857f() + i6;
        Drawable drawable = this.f1401a;
        Rect m45621a = drawable != null ? C0407p.m45621a(drawable) : C0407p.f1630a;
        Drawable drawable2 = this.f1402b;
        int i10 = m45857f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = m45857f + rect.left;
            if (m45621a != null) {
                i3 = i6;
                if (m45621a.left > rect.left) {
                    i3 = i6 + (m45621a.left - rect.left);
                }
                i4 = m45621a.top > rect.top ? (m45621a.top - rect.top) + i7 : i7;
                i2 = i8;
                if (m45621a.right > rect.right) {
                    i2 = i8 - (m45621a.right - rect.right);
                }
                i6 = i3;
                i8 = i2;
                i5 = i4;
                if (m45621a.bottom > rect.bottom) {
                    i = i9 - (m45621a.bottom - rect.bottom);
                    this.f1402b.setBounds(i3, i4, i2, i);
                    i10 = i11;
                }
            } else {
                i5 = i7;
            }
            i4 = i5;
            i = i9;
            i2 = i8;
            i3 = i6;
            this.f1402b.setBounds(i3, i4, i2, i);
            i10 = i11;
        }
        Drawable drawable3 = this.f1401a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i12 = i10 - rect.left;
            int i13 = i10 + this.f1389C + rect.right;
            this.f1401a.setBounds(i12, i7, i13, i9);
            Drawable background = getBackground();
            if (background != null) {
                C0840a.m44356a(background, i12, i7, i13, i9);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f1401a;
        if (drawable != null) {
            C0840a.m44358a(drawable, f, f2);
        }
        Drawable drawable2 = this.f1402b;
        if (drawable2 != null) {
            C0840a.m44358a(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1401a;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f1402b;
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
        if (!C0380ah.m45770a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f1387A;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f1415p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0380ah.m45770a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f1387A;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f1415p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1401a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1402b;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1404d;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f1404d.end();
        this.f1404d = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f1385O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f1400N;
        Drawable drawable = this.f1402b;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f1391E;
        int i3 = this.f1393G;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f1401a;
        if (drawable != null) {
            if (!this.f1416q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m45621a = C0407p.m45621a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m45621a.left;
                rect.right -= m45621a.right;
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
        Layout layout = m45858e() ? this.f1396J : this.f1397K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f1395I;
            if (colorStateList != null) {
                this.f1394H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f1394H.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.f1417r : this.f1418s;
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
        if (this.f1401a != null) {
            Rect rect = this.f1400N;
            Drawable drawable = this.f1402b;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m45621a = C0407p.m45621a(this.f1401a);
            i5 = Math.max(0, m45621a.left - rect.left);
            i11 = Math.max(0, m45621a.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0380ah.m45770a(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.f1387A + i6) - i5) - i11;
        } else {
            int width = (getWidth() - getPaddingRight()) - i11;
            i7 = width;
            i6 = (width - this.f1387A) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i10 = this.f1388B;
            i9 = paddingTop - (i10 / 2);
        } else if (gravity == 80) {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f1388B;
            this.f1390D = i6;
            this.f1391E = i9;
            this.f1393G = i8;
            this.f1392F = i7;
        } else {
            i9 = getPaddingTop();
            i10 = this.f1388B;
        }
        i8 = i10 + i9;
        this.f1390D = i6;
        this.f1391E = i9;
        this.f1393G = i8;
        this.f1392F = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f1419t) {
            if (this.f1396J == null) {
                this.f1396J = m45862a(this.f1417r);
            }
            if (this.f1397K == null) {
                this.f1397K = m45862a(this.f1418s);
            }
        }
        Rect rect = this.f1400N;
        Drawable drawable = this.f1401a;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1401a.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f1401a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f1389C = Math.max(this.f1419t ? Math.max(this.f1396J.getWidth(), this.f1397K.getWidth()) + (this.f1413n * 2) : 0, i4);
        Drawable drawable2 = this.f1402b;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1402b.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1401a;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect m45621a = C0407p.m45621a(drawable3);
            i9 = Math.max(i6, m45621a.left);
            i8 = Math.max(i7, m45621a.right);
        }
        int max = Math.max(this.f1414o, (this.f1389C * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f1387A = max;
        this.f1388B = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1417r : this.f1418s;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0 != 3) goto L86;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        float f = 1.0f;
        if (getWindowToken() == null || !C0926v.m44157B(this)) {
            ObjectAnimator objectAnimator = this.f1404d;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (!isChecked) {
                f = 0.0f;
            }
            m45863a(f);
            return;
        }
        if (!isChecked) {
            f = 0.0f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f1386e, f);
        this.f1404d = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1404d.setAutoCancel(true);
        }
        this.f1404d.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0959h.m43961a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f1419t != z) {
            this.f1419t = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f1416q = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f1414o = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f1415p = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        C0370ab m45806a = C0370ab.m45806a(context, i, C0142a.C0152j.TextAppearance);
        ColorStateList m45797e = m45806a.m45797e(C0142a.C0152j.TextAppearance_android_textColor);
        if (m45797e != null) {
            this.f1395I = m45797e;
        } else {
            this.f1395I = getTextColors();
        }
        int m45796e = m45806a.m45796e(C0142a.C0152j.TextAppearance_android_textSize, 0);
        if (m45796e != 0) {
            float f = m45796e;
            if (f != this.f1394H.getTextSize()) {
                this.f1394H.setTextSize(f);
                requestLayout();
            }
        }
        int m45809a = m45806a.m45809a(C0142a.C0152j.TextAppearance_android_typeface, -1);
        setSwitchTypeface(m45809a != 1 ? m45809a != 2 ? m45809a != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, m45806a.m45809a(C0142a.C0152j.TextAppearance_android_textStyle, -1));
        if (m45806a.m45807a(C0142a.C0152j.TextAppearance_textAllCaps, false)) {
            this.f1398L = new C0239a(getContext());
        } else {
            this.f1398L = null;
        }
        m45806a.f1491a.recycle();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f1394H.getTypeface() == null || this.f1394H.getTypeface().equals(typeface)) && (this.f1394H.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f1394H.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i <= 0) {
            this.f1394H.setFakeBoldText(false);
            this.f1394H.setTextSkewX(BitmapDescriptorFactory.HUE_RED);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(defaultFromStyle);
        int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        TextPaint textPaint = this.f1394H;
        if ((style & 1) != 0) {
            z = true;
        }
        textPaint.setFakeBoldText(z);
        TextPaint textPaint2 = this.f1394H;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint2.setTextSkewX(f);
    }

    public void setTextOff(CharSequence charSequence) {
        this.f1418s = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f1417r = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1401a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1401a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C0153a.m46374b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f1413n = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f1405f = colorStateList;
        this.f1407h = true;
        m45859d();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f1406g = mode;
        this.f1408i = true;
        m45859d();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1402b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1402b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C0153a.m46374b(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f1409j = colorStateList;
        this.f1411l = true;
        m45860c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f1410k = mode;
        this.f1412m = true;
        m45860c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1401a || drawable == this.f1402b;
    }
}
