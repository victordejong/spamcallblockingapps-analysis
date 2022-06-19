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
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.C0032R;
import androidx.core.C0122R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25536q;
import p1727n3.p1734b.p1743f.C25553w;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26621v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: R */
    public static final Property<SwitchCompat, Float> f400R = new C0075a(Float.class, "thumbPos");

    /* renamed from: S */
    public static final int[] f401S = {16842912};

    /* renamed from: A */
    public int f402A;

    /* renamed from: B */
    public int f403B;

    /* renamed from: C */
    public int f404C;

    /* renamed from: D */
    public int f405D;

    /* renamed from: E */
    public int f406E;

    /* renamed from: J */
    public final TextPaint f407J;

    /* renamed from: K */
    public ColorStateList f408K;

    /* renamed from: L */
    public Layout f409L;

    /* renamed from: M */
    public Layout f410M;

    /* renamed from: N */
    public TransformationMethod f411N;

    /* renamed from: O */
    public ObjectAnimator f412O;

    /* renamed from: P */
    public final C25536q f413P;

    /* renamed from: Q */
    public final Rect f414Q;

    /* renamed from: a */
    public Drawable f415a;

    /* renamed from: b */
    public ColorStateList f416b;

    /* renamed from: c */
    public PorterDuff.Mode f417c;

    /* renamed from: d */
    public boolean f418d;

    /* renamed from: e */
    public boolean f419e;

    /* renamed from: f */
    public Drawable f420f;

    /* renamed from: g */
    public ColorStateList f421g;

    /* renamed from: h */
    public PorterDuff.Mode f422h;

    /* renamed from: i */
    public boolean f423i;

    /* renamed from: j */
    public boolean f424j;

    /* renamed from: k */
    public int f425k;

    /* renamed from: l */
    public int f426l;

    /* renamed from: m */
    public int f427m;

    /* renamed from: n */
    public boolean f428n;

    /* renamed from: o */
    public CharSequence f429o;

    /* renamed from: p */
    public CharSequence f430p;

    /* renamed from: q */
    public boolean f431q;

    /* renamed from: r */
    public int f432r;

    /* renamed from: s */
    public int f433s;

    /* renamed from: t */
    public float f434t;

    /* renamed from: u */
    public float f435u;

    /* renamed from: v */
    public VelocityTracker f436v;

    /* renamed from: w */
    public int f437w;

    /* renamed from: x */
    public float f438x;

    /* renamed from: y */
    public int f439y;

    /* renamed from: z */
    public int f440z;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    public class C0075a extends Property<SwitchCompat, Float> {
        public C0075a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f438x);
        }

        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.switchStyle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0208, code lost:
        if (r15 != null) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchCompat(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private boolean getTargetCheckedState() {
        return this.f438x > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C25558x0.m3244a(this) ? 1.0f - this.f438x : this.f438x) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f420f;
        if (drawable != null) {
            Rect rect = this.f414Q;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f415a;
            Rect m3249b = drawable2 != null ? C25553w.m3249b(drawable2) : C25553w.f71524c;
            return ((((this.f439y - this.f402A) - rect.left) - rect.right) - m3249b.left) - m3249b.right;
        }
        return 0;
    }

    /* renamed from: a */
    public final void m43097a() {
        Drawable drawable = this.f415a;
        if (drawable != null) {
            if (!this.f418d && !this.f419e) {
                return;
            }
            Drawable mutate = drawable.mutate();
            this.f415a = mutate;
            if (this.f418d) {
                mutate.setTintList(this.f416b);
            }
            if (this.f419e) {
                this.f415a.setTintMode(this.f417c);
            }
            if (!this.f415a.isStateful()) {
                return;
            }
            this.f415a.setState(getDrawableState());
        }
    }

    /* renamed from: b */
    public final void m43096b() {
        Drawable drawable = this.f420f;
        if (drawable != null) {
            if (!this.f423i && !this.f424j) {
                return;
            }
            Drawable mutate = drawable.mutate();
            this.f420f = mutate;
            if (this.f423i) {
                mutate.setTintList(this.f421g);
            }
            if (this.f424j) {
                this.f420f.setTintMode(this.f422h);
            }
            if (!this.f420f.isStateful()) {
                return;
            }
            this.f420f.setState(getDrawableState());
        }
    }

    /* renamed from: c */
    public final Layout m43095c(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f411N;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f407J;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: d */
    public final void m43094d() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f430p;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C0032R.string.abc_capital_off);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            new C26621v(C0122R.C0124id.tag_state_description, CharSequence.class, 64, 30).m1559e(this, str);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        Rect rect = this.f414Q;
        int i5 = this.f403B;
        int i6 = this.f404C;
        int i7 = this.f405D;
        int i8 = this.f406E;
        int thumbOffset = getThumbOffset() + i5;
        Drawable drawable = this.f415a;
        Rect m3249b = drawable != null ? C25553w.m3249b(drawable) : C25553w.f71524c;
        Drawable drawable2 = this.f420f;
        int i9 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i10 = rect.left;
            int i11 = thumbOffset + i10;
            if (m3249b != null) {
                int i12 = m3249b.left;
                int i13 = i5;
                if (i12 > i10) {
                    i13 = i5 + (i12 - i10);
                }
                int i14 = m3249b.top;
                int i15 = rect.top;
                i3 = i14 > i15 ? (i14 - i15) + i6 : i6;
                int i16 = m3249b.right;
                int i17 = rect.right;
                i = i7;
                if (i16 > i17) {
                    i = i7 - (i16 - i17);
                }
                int i18 = m3249b.bottom;
                int i19 = rect.bottom;
                i5 = i13;
                i7 = i;
                i4 = i3;
                if (i18 > i19) {
                    i5 = i13;
                    i2 = i8 - (i18 - i19);
                    this.f420f.setBounds(i5, i3, i, i2);
                    i9 = i11;
                }
            } else {
                i4 = i6;
            }
            i2 = i8;
            i3 = i4;
            i = i7;
            this.f420f.setBounds(i5, i3, i, i2);
            i9 = i11;
        }
        Drawable drawable3 = this.f415a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = i9 - rect.left;
            int i21 = i9 + this.f402A + rect.right;
            this.f415a.setBounds(i20, i6, i21, i8);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i20, i6, i21, i8);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f415a;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.f420f;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f415a;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f420f;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: e */
    public final void m43093e() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f429o;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C0032R.string.abc_capital_on);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            new C26621v(C0122R.C0124id.tag_state_description, CharSequence.class, 64, 30).m1559e(this, str);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!C25558x0.m3244a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f439y;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f427m;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C25558x0.m3244a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f439y;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f427m;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f431q;
    }

    public boolean getSplitTrack() {
        return this.f428n;
    }

    public int getSwitchMinWidth() {
        return this.f426l;
    }

    public int getSwitchPadding() {
        return this.f427m;
    }

    public CharSequence getTextOff() {
        return this.f430p;
    }

    public CharSequence getTextOn() {
        return this.f429o;
    }

    public Drawable getThumbDrawable() {
        return this.f415a;
    }

    public int getThumbTextPadding() {
        return this.f425k;
    }

    public ColorStateList getThumbTintList() {
        return this.f416b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f417c;
    }

    public Drawable getTrackDrawable() {
        return this.f420f;
    }

    public ColorStateList getTrackTintList() {
        return this.f421g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f422h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f415a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f420f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f412O;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f412O.end();
        this.f412O = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f401S);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f414Q;
        Drawable drawable = this.f420f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f404C;
        int i3 = this.f406E;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f415a;
        if (drawable != null) {
            if (!this.f428n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m3249b = C25553w.m3249b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m3249b.left;
                rect.right -= m3249b.right;
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
        Layout layout = getTargetCheckedState() ? this.f409L : this.f410M;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f408K;
            if (colorStateList != null) {
                this.f407J.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f407J.drawableState = drawableState;
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
            CharSequence charSequence = isChecked() ? this.f429o : this.f430p;
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        super.onLayout(z, i, i2, i3, i4);
        int i10 = 0;
        if (this.f415a != null) {
            Rect rect = this.f414Q;
            Drawable drawable = this.f420f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m3249b = C25553w.m3249b(this.f415a);
            i5 = Math.max(0, m3249b.left - rect.left);
            i10 = Math.max(0, m3249b.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C25558x0.m3244a(this)) {
            i7 = getPaddingLeft() + i5;
            i6 = ((this.f439y + i7) - i5) - i10;
        } else {
            i6 = (getWidth() - getPaddingRight()) - i10;
            i7 = (i6 - this.f439y) + i5 + i10;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i11 = this.f440z;
            i9 = height - (i11 / 2);
            i8 = i11 + i9;
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i8 = this.f440z + i9;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f440z;
        }
        this.f403B = i7;
        this.f404C = i9;
        this.f406E = i8;
        this.f405D = i6;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.f431q) {
            if (this.f409L == null) {
                this.f409L = m43095c(this.f429o);
            }
            if (this.f410M == null) {
                this.f410M = m43095c(this.f430p);
            }
        }
        Rect rect = this.f414Q;
        Drawable drawable = this.f415a;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f415a.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f415a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        if (this.f431q) {
            i5 = (this.f425k * 2) + Math.max(this.f409L.getWidth(), this.f410M.getWidth());
        } else {
            i5 = 0;
        }
        this.f402A = Math.max(i5, i4);
        Drawable drawable2 = this.f420f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.f420f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i6 = 0;
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f415a;
        int i9 = i8;
        int i10 = i7;
        if (drawable3 != null) {
            Rect m3249b = C25553w.m3249b(drawable3);
            i10 = Math.max(i7, m3249b.left);
            i9 = Math.max(i8, m3249b.right);
        }
        int max = Math.max(this.f426l, (this.f402A * 2) + i10 + i9);
        int max2 = Math.max(i6, i3);
        this.f439y = max;
        this.f440z = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f429o : this.f430p;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0 != 3) goto L85;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            m43093e();
        } else {
            m43094d();
        }
        float f = 1.0f;
        if (getWindowToken() != null) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (isLaidOut()) {
                if (!isChecked) {
                    f = 0.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f400R, f);
                this.f412O = ofFloat;
                ofFloat.setDuration(250L);
                this.f412O.setAutoCancel(true);
                this.f412O.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.f412O;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (!isChecked) {
            f = 0.0f;
        }
        setThumbPosition(f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MediaSessionCompat.m43281N1(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f431q != z) {
            this.f431q = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f428n = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f426l = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f427m = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f407J.getTypeface() == null || this.f407J.getTypeface().equals(typeface)) && (this.f407J.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f407J.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.f430p = charSequence;
        requestLayout();
        if (!isChecked()) {
            m43094d();
        }
    }

    public void setTextOn(CharSequence charSequence) {
        this.f429o = charSequence;
        requestLayout();
        if (isChecked()) {
            m43093e();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f415a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f415a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f438x = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C25440a.m3540a(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f425k = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f416b = colorStateList;
        this.f418d = true;
        m43097a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f417c = mode;
        this.f419e = true;
        m43097a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f420f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f420f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C25440a.m3540a(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f421g = colorStateList;
        this.f423i = true;
        m43096b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f422h = mode;
        this.f424j = true;
        m43096b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f415a || drawable == this.f420f;
    }
}
