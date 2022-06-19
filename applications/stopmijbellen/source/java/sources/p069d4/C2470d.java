package p069d4;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import p098g0.C2789a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p262v3.C4638t;
import p304z3.C5071c;
/* renamed from: d4.d */
/* loaded from: classes-dex2jar.jar:d4/d.class */
public class C2470d extends FrameLayout {

    /* renamed from: j */
    public static final View.OnTouchListener f8699j = new View$OnTouchListenerC2471a();

    /* renamed from: a */
    public AbstractC2469c f8700a;

    /* renamed from: b */
    public AbstractC2468b f8701b;

    /* renamed from: c */
    public int f8702c;

    /* renamed from: d */
    public final float f8703d;

    /* renamed from: e */
    public final float f8704e;

    /* renamed from: f */
    public final int f8705f;

    /* renamed from: g */
    public final int f8706g;

    /* renamed from: h */
    public ColorStateList f8707h;

    /* renamed from: i */
    public PorterDuff.Mode f8708i;

    /* renamed from: d4.d$a */
    /* loaded from: classes-dex2jar.jar:d4/d$a.class */
    public static final class View$OnTouchListenerC2471a implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public C2470d(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 0, 0), attributeSet);
        Drawable drawable;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C3260w0.f11012F);
        if (obtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2032s(this, dimensionPixelSize);
        }
        this.f8702c = obtainStyledAttributes.getInt(2, 0);
        this.f8703d = obtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(C5071c.m72a(context2, obtainStyledAttributes, 4));
        setBackgroundTintMode(C4638t.m684b(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f8704e = obtainStyledAttributes.getFloat(1, 1.0f);
        this.f8705f = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f8706g = obtainStyledAttributes.getDimensionPixelSize(7, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f8699j);
        setFocusable(true);
        if (getBackground() == null) {
            float dimension = getResources().getDimension(2131165791);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(C3102d.m2650B(C3102d.m2619t(this, 2130968849), C3102d.m2619t(this, 2130968833), getBackgroundOverlayColorAlpha()));
            if (this.f8707h != null) {
                drawable = C2789a.m3007h(gradientDrawable);
                drawable.setTintList(this.f8707h);
            } else {
                drawable = C2789a.m3007h(gradientDrawable);
            }
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2077q(this, drawable);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f8704e;
    }

    public int getAnimationMode() {
        return this.f8702c;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f8703d;
    }

    public int getMaxInlineActionWidth() {
        return this.f8706g;
    }

    public int getMaxWidth() {
        return this.f8705f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC2468b abstractC2468b = this.f8701b;
        if (abstractC2468b != null) {
            abstractC2468b.onViewAttachedToWindow(this);
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3597h.m2051c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC2468b abstractC2468b = this.f8701b;
        if (abstractC2468b != null) {
            abstractC2468b.onViewDetachedFromWindow(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        AbstractC2469c abstractC2469c = this.f8700a;
        if (abstractC2469c != null) {
            abstractC2469c.m3525a(this, i, i2, i3, i4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f8705f > 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = this.f8705f;
            if (measuredWidth <= i3) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
    }

    public void setAnimationMode(int i) {
        this.f8702c = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f8707h != null) {
                drawable2 = C2789a.m3007h(drawable.mutate());
                drawable2.setTintList(this.f8707h);
                drawable2.setTintMode(this.f8708i);
            }
        }
        super.setBackgroundDrawable(drawable2);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f8707h = colorStateList;
        if (getBackground() != null) {
            Drawable m3007h = C2789a.m3007h(getBackground().mutate());
            m3007h.setTintList(colorStateList);
            m3007h.setTintMode(this.f8708i);
            if (m3007h == getBackground()) {
                return;
            }
            super.setBackgroundDrawable(m3007h);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f8708i = mode;
        if (getBackground() != null) {
            Drawable m3007h = C2789a.m3007h(getBackground().mutate());
            m3007h.setTintMode(mode);
            if (m3007h == getBackground()) {
                return;
            }
            super.setBackgroundDrawable(m3007h);
        }
    }

    public void setOnAttachStateChangeListener(AbstractC2468b abstractC2468b) {
        this.f8701b = abstractC2468b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f8699j);
        super.setOnClickListener(onClickListener);
    }

    public void setOnLayoutChangeListener(AbstractC2469c abstractC2469c) {
        this.f8700a = abstractC2469c;
    }
}
