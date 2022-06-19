package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockHandView.class */
public class ClockHandView extends View {

    /* renamed from: d */
    private ValueAnimator f37568d;

    /* renamed from: e */
    private boolean f37569e;

    /* renamed from: f */
    private float f37570f;

    /* renamed from: g */
    private float f37571g;

    /* renamed from: h */
    private boolean f37572h;

    /* renamed from: i */
    private int f37573i;

    /* renamed from: j */
    private final List<AbstractC8336d> f37574j;

    /* renamed from: k */
    private final int f37575k;

    /* renamed from: l */
    private final float f37576l;

    /* renamed from: m */
    private final Paint f37577m;

    /* renamed from: n */
    private final RectF f37578n;

    /* renamed from: o */
    private final int f37579o;

    /* renamed from: p */
    private float f37580p;

    /* renamed from: q */
    private boolean f37581q;

    /* renamed from: r */
    private AbstractC8335c f37582r;

    /* renamed from: s */
    private double f37583s;

    /* renamed from: t */
    private int f37584t;

    /* renamed from: com.google.android.material.timepicker.ClockHandView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$a.class */
    public class C8333a implements ValueAnimator.AnimatorUpdateListener {
        C8333a() {
            ClockHandView.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m3856m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$b.class */
    public class C8334b extends AnimatorListenerAdapter {
        C8334b() {
            ClockHandView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$c.class */
    public interface AbstractC8335c {
        /* renamed from: a */
        void m3855a(float f, boolean z);
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$d.class */
    public interface AbstractC8336d {
        /* renamed from: a */
        void mo3854a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f37574j = new ArrayList();
        Paint paint = new Paint();
        this.f37577m = paint;
        this.f37578n = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ClockHandView, i, C1895k.Widget_MaterialComponents_TimePicker_Clock);
        this.f37584t = obtainStyledAttributes.getDimensionPixelSize(C1896l.ClockHandView_materialCircleRadius, 0);
        this.f37575k = obtainStyledAttributes.getDimensionPixelSize(C1896l.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f37579o = resources.getDimensionPixelSize(C1888d.material_clock_hand_stroke_width);
        this.f37576l = resources.getDimensionPixelSize(C1888d.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(C1896l.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m3858k(0.0f);
        this.f37573i = ViewConfiguration.get(context).getScaledTouchSlop();
        C1679w.m29347B0(this, 2);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private void m3866c(Canvas canvas) {
        int width;
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f = this.f37584t;
        float cos = (float) Math.cos(this.f37583s);
        float f2 = height;
        float f3 = this.f37584t;
        float sin = (float) Math.sin(this.f37583s);
        this.f37577m.setStrokeWidth(0.0f);
        canvas.drawCircle((f * cos) + width2, (f3 * sin) + f2, this.f37575k, this.f37577m);
        double sin2 = Math.sin(this.f37583s);
        double cos2 = Math.cos(this.f37583s);
        this.f37577m.setStrokeWidth(this.f37579o);
        canvas.drawLine(width2, f2, width + ((int) (cos2 * r0)), height + ((int) (r0 * sin2)), this.f37577m);
        canvas.drawCircle(width2, f2, this.f37576l, this.f37577m);
    }

    /* renamed from: e */
    private int m3864e(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        int i = degrees;
        if (degrees < 0) {
            i = degrees + 360;
        }
        return i;
    }

    /* renamed from: h */
    private Pair<Float, Float> m3861h(float f) {
        float m3863f = m3863f();
        float f2 = m3863f;
        float f3 = f;
        if (Math.abs(m3863f - f) > 180.0f) {
            float f4 = f;
            if (m3863f > 180.0f) {
                f4 = f;
                if (f < 180.0f) {
                    f4 = f + 360.0f;
                }
            }
            f2 = m3863f;
            f3 = f4;
            if (m3863f < 180.0f) {
                f2 = m3863f;
                f3 = f4;
                if (f4 > 180.0f) {
                    f2 = m3863f + 360.0f;
                    f3 = f4;
                }
            }
        }
        return new Pair<>(Float.valueOf(f2), Float.valueOf(f3));
    }

    /* renamed from: i */
    private boolean m3860i(float f, float f2, boolean z, boolean z2, boolean z3) {
        float m3864e = m3864e(f, f2);
        boolean z4 = m3863f() != m3864e;
        if (!z2 || !z4) {
            if (!z4 && !z) {
                return false;
            }
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (this.f37569e) {
                    z5 = true;
                }
            }
            m3857l(m3864e, z5);
            return true;
        }
        return true;
    }

    /* renamed from: m */
    public void m3856m(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f37580p = f2;
        this.f37583s = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.f37584t * ((float) Math.cos(this.f37583s)));
        float sin = height + (this.f37584t * ((float) Math.sin(this.f37583s)));
        RectF rectF = this.f37578n;
        int i = this.f37575k;
        rectF.set(width - i, sin - i, width + i, sin + i);
        for (AbstractC8336d abstractC8336d : this.f37574j) {
            abstractC8336d.mo3854a(f2, z);
        }
        invalidate();
    }

    /* renamed from: b */
    public void m3867b(AbstractC8336d abstractC8336d) {
        this.f37574j.add(abstractC8336d);
    }

    /* renamed from: d */
    public RectF m3865d() {
        return this.f37578n;
    }

    /* renamed from: f */
    public float m3863f() {
        return this.f37580p;
    }

    /* renamed from: g */
    public int m3862g() {
        return this.f37575k;
    }

    /* renamed from: j */
    public void m3859j(int i) {
        this.f37584t = i;
        invalidate();
    }

    /* renamed from: k */
    public void m3858k(float f) {
        m3857l(f, false);
    }

    /* renamed from: l */
    public void m3857l(float f, boolean z) {
        ValueAnimator valueAnimator = this.f37568d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m3856m(f, false);
            return;
        }
        Pair<Float, Float> m3861h = m3861h(f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) m3861h.first).floatValue(), ((Float) m3861h.second).floatValue());
        this.f37568d = ofFloat;
        ofFloat.setDuration(200L);
        this.f37568d.addUpdateListener(new C8333a());
        this.f37568d.addListener(new C8334b());
        this.f37568d.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m3866c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m3858k(m3863f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        AbstractC8335c abstractC8335c;
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f37570f);
                int i2 = (int) (y - this.f37571g);
                this.f37572h = (i * i) + (i2 * i2) > this.f37573i;
                z4 = this.f37581q;
                z3 = actionMasked == 1;
            } else {
                z3 = false;
                z4 = false;
            }
            z = z4;
            z2 = false;
        } else {
            this.f37570f = x;
            this.f37571g = y;
            this.f37572h = true;
            this.f37581q = false;
            z3 = false;
            z = false;
            z2 = true;
        }
        boolean m3860i = m3860i(x, y, z, z2, z3) | this.f37581q;
        this.f37581q = m3860i;
        if (!m3860i || !z3 || (abstractC8335c = this.f37582r) == null) {
            return true;
        }
        abstractC8335c.m3855a(m3864e(x, y), this.f37572h);
        return true;
    }
}
