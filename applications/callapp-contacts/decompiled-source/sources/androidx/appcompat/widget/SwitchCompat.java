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
import androidx.appcompat.a;
import androidx.core.view.v;
import androidx.core.widget.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private final TextPaint H;
    private ColorStateList I;
    private Layout J;
    private Layout K;
    private TransformationMethod L;
    private final l M;
    private final Rect N;

    /* renamed from: a  reason: collision with root package name */
    public Drawable f1017a;

    /* renamed from: b  reason: collision with root package name */
    public Drawable f1018b;

    /* renamed from: c  reason: collision with root package name */
    float f1019c;

    /* renamed from: d  reason: collision with root package name */
    ObjectAnimator f1020d;
    private ColorStateList f;
    private PorterDuff.Mode g;
    private boolean h;
    private boolean i;
    private ColorStateList j;
    private PorterDuff.Mode k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private CharSequence r;
    private CharSequence s;
    private boolean t;
    private int u;
    private int v;
    private float w;
    private float x;
    private VelocityTracker y;
    private int z;
    private static final Property<SwitchCompat, Float> e = new Property<SwitchCompat, Float>(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
        @Override // android.util.Property
        public final /* synthetic */ Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1019c);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(SwitchCompat switchCompat, Float f) {
            switchCompat.a(f.floatValue());
        }
    };
    private static final int[] O = {16842912};

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = null;
        this.k = null;
        this.l = false;
        this.m = false;
        this.y = VelocityTracker.obtain();
        this.N = new Rect();
        x.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.H = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        ab a2 = ab.a(context, attributeSet, a.j.SwitchCompat, i, 0);
        v.a(this, context, a.j.SwitchCompat, attributeSet, a2.f1044a, i);
        Drawable a3 = a2.a(a.j.SwitchCompat_android_thumb);
        this.f1017a = a3;
        if (a3 != null) {
            a3.setCallback(this);
        }
        Drawable a4 = a2.a(a.j.SwitchCompat_track);
        this.f1018b = a4;
        if (a4 != null) {
            a4.setCallback(this);
        }
        this.r = a2.c(a.j.SwitchCompat_android_textOn);
        this.s = a2.c(a.j.SwitchCompat_android_textOff);
        this.t = a2.a(a.j.SwitchCompat_showText, true);
        this.n = a2.e(a.j.SwitchCompat_thumbTextPadding, 0);
        this.o = a2.e(a.j.SwitchCompat_switchMinWidth, 0);
        this.p = a2.e(a.j.SwitchCompat_switchPadding, 0);
        this.q = a2.a(a.j.SwitchCompat_splitTrack, false);
        ColorStateList e2 = a2.e(a.j.SwitchCompat_thumbTint);
        if (e2 != null) {
            this.f = e2;
            this.h = true;
        }
        PorterDuff.Mode a5 = p.a(a2.a(a.j.SwitchCompat_thumbTintMode, -1), null);
        if (this.g != a5) {
            this.g = a5;
            this.i = true;
        }
        if (this.h || this.i) {
            d();
        }
        ColorStateList e3 = a2.e(a.j.SwitchCompat_trackTint);
        if (e3 != null) {
            this.j = e3;
            this.l = true;
        }
        PorterDuff.Mode a6 = p.a(a2.a(a.j.SwitchCompat_trackTintMode, -1), null);
        if (this.k != a6) {
            this.k = a6;
            this.m = true;
        }
        if (this.l || this.m) {
            c();
        }
        int g = a2.g(a.j.SwitchCompat_switchTextAppearance, 0);
        if (g != 0) {
            setSwitchTextAppearance(context, g);
        }
        l lVar = new l(this);
        this.M = lVar;
        lVar.a(attributeSet, i);
        a2.f1044a.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.v = viewConfiguration.getScaledTouchSlop();
        this.z = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private Layout a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.L;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.H;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
    }

    private void c() {
        Drawable drawable = this.f1018b;
        if (drawable == null) {
            return;
        }
        if (this.l || this.m) {
            Drawable mutate = androidx.core.graphics.drawable.a.f(drawable).mutate();
            this.f1018b = mutate;
            if (this.l) {
                androidx.core.graphics.drawable.a.a(mutate, this.j);
            }
            if (this.m) {
                androidx.core.graphics.drawable.a.a(this.f1018b, this.k);
            }
            if (this.f1018b.isStateful()) {
                this.f1018b.setState(getDrawableState());
            }
        }
    }

    private void d() {
        Drawable drawable = this.f1017a;
        if (drawable == null) {
            return;
        }
        if (this.h || this.i) {
            Drawable mutate = androidx.core.graphics.drawable.a.f(drawable).mutate();
            this.f1017a = mutate;
            if (this.h) {
                androidx.core.graphics.drawable.a.a(mutate, this.f);
            }
            if (this.i) {
                androidx.core.graphics.drawable.a.a(this.f1017a, this.g);
            }
            if (this.f1017a.isStateful()) {
                this.f1017a.setState(getDrawableState());
            }
        }
    }

    private boolean e() {
        return this.f1019c > 0.5f;
    }

    private int f() {
        return (int) (((ah.a(this) ? 1.0f - this.f1019c : this.f1019c) * g()) + 0.5f);
    }

    private int g() {
        Drawable drawable = this.f1018b;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.N;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1017a;
        Rect a2 = drawable2 != null ? p.a(drawable2) : p.f1120a;
        return ((((this.A - this.C) - rect.left) - rect.right) - a2.left) - a2.right;
    }

    public final ColorStateList a() {
        return this.j;
    }

    final void a(float f) {
        this.f1019c = f;
        invalidate();
    }

    public final ColorStateList b() {
        return this.f;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.N;
        int i3 = this.D;
        int i4 = this.E;
        int i5 = this.F;
        int i6 = this.G;
        int f = f() + i3;
        Drawable drawable = this.f1017a;
        Rect a2 = drawable != null ? p.a(drawable) : p.f1120a;
        Drawable drawable2 = this.f1018b;
        int i7 = f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i7 = f + rect.left;
            if (a2 != null) {
                i3 = i3;
                if (a2.left > rect.left) {
                    i3 += a2.left - rect.left;
                }
                i2 = a2.top > rect.top ? (a2.top - rect.top) + i4 : i4;
                i5 = i5;
                if (a2.right > rect.right) {
                    i5 -= a2.right - rect.right;
                }
                i3 = i3;
                i5 = i5;
                i2 = i2;
                if (a2.bottom > rect.bottom) {
                    i = i6 - (a2.bottom - rect.bottom);
                    this.f1018b.setBounds(i3, i2, i5, i);
                }
            } else {
                i2 = i4;
            }
            i = i6;
            this.f1018b.setBounds(i3, i2, i5, i);
        }
        Drawable drawable3 = this.f1017a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i8 = i7 - rect.left;
            int i9 = i7 + this.C + rect.right;
            this.f1017a.setBounds(i8, i4, i9, i6);
            Drawable background = getBackground();
            if (background != null) {
                androidx.core.graphics.drawable.a.a(background, i8, i4, i9, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f1017a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f, f2);
        }
        Drawable drawable2 = this.f1018b;
        if (drawable2 != null) {
            androidx.core.graphics.drawable.a.a(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1017a;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f1018b;
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
        if (!ah.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ah.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1017a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1018b;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1020d;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.f1020d.end();
            this.f1020d = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.N;
        Drawable drawable = this.f1018b;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.E;
        int i3 = this.G;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f1017a;
        if (drawable != null) {
            if (!this.q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect a2 = p.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a2.left;
                rect.right -= a2.right;
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
        Layout layout = e() ? this.J : this.K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.I;
            if (colorStateList != null) {
                this.H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.H.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.r : this.s;
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
        if (this.f1017a != null) {
            Rect rect = this.N;
            Drawable drawable = this.f1018b;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a2 = p.a(this.f1017a);
            i5 = Math.max(0, a2.left - rect.left);
            i11 = Math.max(0, a2.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ah.a(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.A + i6) - i5) - i11;
        } else {
            int width = (getWidth() - getPaddingRight()) - i11;
            i6 = (width - this.A) + i5 + i11;
            i7 = width;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i10 = this.B;
            i9 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i10 / 2);
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i10 = this.B;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.B;
            this.D = i6;
            this.E = i9;
            this.G = i8;
            this.F = i7;
        }
        i8 = i10 + i9;
        this.D = i6;
        this.E = i9;
        this.G = i8;
        this.F = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.t) {
            if (this.J == null) {
                this.J = a(this.r);
            }
            if (this.K == null) {
                this.K = a(this.s);
            }
        }
        Rect rect = this.N;
        Drawable drawable = this.f1017a;
        int i5 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1017a.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f1017a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.C = Math.max(this.t ? Math.max(this.J.getWidth(), this.K.getWidth()) + (this.n * 2) : 0, i4);
        Drawable drawable2 = this.f1018b;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1018b.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1017a;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect a2 = p.a(drawable3);
            i9 = Math.max(i6, a2.left);
            i8 = Math.max(i7, a2.right);
        }
        int max = Math.max(this.o, (this.C * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.A = max;
        this.B = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.r : this.s;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0 != 3) goto L_0x028c;
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
        if (getWindowToken() == null || !v.B(this)) {
            ObjectAnimator objectAnimator = this.f1020d;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (!isChecked) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            a(f);
            return;
        }
        if (!isChecked) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, e, f);
        this.f1020d = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1020d.setAutoCancel(true);
        }
        this.f1020d.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(h.a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.t != z) {
            this.t = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.q = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.o = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.p = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        ab a2 = ab.a(context, i, a.j.TextAppearance);
        ColorStateList e2 = a2.e(a.j.TextAppearance_android_textColor);
        if (e2 != null) {
            this.I = e2;
        } else {
            this.I = getTextColors();
        }
        int e3 = a2.e(a.j.TextAppearance_android_textSize, 0);
        if (e3 != 0) {
            float f = e3;
            if (f != this.H.getTextSize()) {
                this.H.setTextSize(f);
                requestLayout();
            }
        }
        int a3 = a2.a(a.j.TextAppearance_android_typeface, -1);
        setSwitchTypeface(a3 != 1 ? a3 != 2 ? a3 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, a2.a(a.j.TextAppearance_android_textStyle, -1));
        if (a2.a(a.j.TextAppearance_textAllCaps, false)) {
            this.L = new androidx.appcompat.d.a(getContext());
        } else {
            this.L = null;
        }
        a2.f1044a.recycle();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.H.getTypeface() != null && !this.H.getTypeface().equals(typeface)) || (this.H.getTypeface() == null && typeface != null)) {
            this.H.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        if (i > 0) {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            setSwitchTypeface(defaultFromStyle);
            int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
            TextPaint textPaint = this.H;
            if ((style & 1) != 0) {
                z = true;
            }
            textPaint.setFakeBoldText(z);
            TextPaint textPaint2 = this.H;
            if ((style & 2) != 0) {
                f = -0.25f;
            }
            textPaint2.setTextSkewX(f);
            return;
        }
        this.H.setFakeBoldText(false);
        this.H.setTextSkewX(BitmapDescriptorFactory.HUE_RED);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        this.s = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.r = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1017a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1017a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.n = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f = colorStateList;
        this.h = true;
        d();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.g = mode;
        this.i = true;
        d();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1018b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1018b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.l = true;
        c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.m = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1017a || drawable == this.f1018b;
    }
}
