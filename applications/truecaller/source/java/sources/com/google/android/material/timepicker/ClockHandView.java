package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Pair;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/ClockHandView.class */
public class ClockHandView extends View {

    /* renamed from: p */
    public static final /* synthetic */ int f6964p = 0;

    /* renamed from: a */
    public ValueAnimator f6965a;

    /* renamed from: b */
    public float f6966b;

    /* renamed from: c */
    public float f6967c;

    /* renamed from: d */
    public boolean f6968d;

    /* renamed from: e */
    public int f6969e;

    /* renamed from: g */
    public final int f6971g;

    /* renamed from: h */
    public final float f6972h;

    /* renamed from: i */
    public final Paint f6973i;

    /* renamed from: k */
    public final int f6975k;

    /* renamed from: l */
    public float f6976l;

    /* renamed from: m */
    public boolean f6977m;

    /* renamed from: n */
    public double f6978n;

    /* renamed from: o */
    public int f6979o;

    /* renamed from: f */
    public final List<AbstractC2125c> f6970f = new ArrayList();

    /* renamed from: j */
    public final RectF f6974j = new RectF();

    /* renamed from: com.google.android.material.timepicker.ClockHandView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$a.class */
    public class C2123a implements ValueAnimator.AnimatorUpdateListener {
        public C2123a() {
            ClockHandView.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ClockHandView clockHandView = ClockHandView.this;
            int i = ClockHandView.f6964p;
            clockHandView.m38324c(floatValue, true);
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$b.class */
    public class C2124b extends AnimatorListenerAdapter {
        public C2124b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$c.class */
    public interface AbstractC2125c {
        /* renamed from: y0 */
        void m38323y0(float f, boolean z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClockHandView(android.content.Context r7, android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r0 = com.google.android.material.C2080R.attr.materialClockStyle
            r9 = r0
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            r0 = r6
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.f6970f = r1
            android.graphics.Paint r0 = new android.graphics.Paint
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r6
            r1 = r10
            r0.f6973i = r1
            r0 = r6
            android.graphics.RectF r1 = new android.graphics.RectF
            r2 = r1
            r2.<init>()
            r0.f6974j = r1
            r0 = r7
            r1 = r8
            int[] r2 = com.google.android.material.C2080R.styleable.ClockHandView
            r3 = r9
            int r4 = com.google.android.material.C2080R.style.Widget_MaterialComponents_TimePicker_Clock
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r8 = r0
            r0 = r6
            r1 = r8
            int r2 = com.google.android.material.C2080R.styleable.ClockHandView_materialCircleRadius
            r3 = 0
            int r1 = r1.getDimensionPixelSize(r2, r3)
            r0.f6979o = r1
            r0 = r6
            r1 = r8
            int r2 = com.google.android.material.C2080R.styleable.ClockHandView_selectorSize
            r3 = 0
            int r1 = r1.getDimensionPixelSize(r2, r3)
            r0.f6971g = r1
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            r11 = r0
            r0 = r6
            r1 = r11
            int r2 = com.google.android.material.C2080R.dimen.material_clock_hand_stroke_width
            int r1 = r1.getDimensionPixelSize(r2)
            r0.f6975k = r1
            r0 = r6
            r1 = r11
            int r2 = com.google.android.material.C2080R.dimen.material_clock_hand_center_dot_radius
            int r1 = r1.getDimensionPixelSize(r2)
            float r1 = (float) r1
            r0.f6972h = r1
            r0 = r8
            int r1 = com.google.android.material.C2080R.styleable.ClockHandView_clockHandColor
            r2 = 0
            int r0 = r0.getColor(r1, r2)
            r9 = r0
            r0 = r10
            r1 = 1
            r0.setAntiAlias(r1)
            r0 = r10
            r1 = r9
            r0.setColor(r1)
            r0 = r6
            r1 = 0
            r2 = 0
            r0.m38325b(r1, r2)
            r0 = r6
            r1 = r7
            android.view.ViewConfiguration r1 = android.view.ViewConfiguration.get(r1)
            int r1 = r1.getScaledTouchSlop()
            r0.f6969e = r1
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r7 = r0
            r0 = r6
            r1 = 2
            r0.setImportantForAccessibility(r1)
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: a */
    public final int m38326a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        int i = degrees;
        if (degrees < 0) {
            i = degrees + 360;
        }
        return i;
    }

    /* renamed from: b */
    public void m38325b(float f, boolean z) {
        ValueAnimator valueAnimator = this.f6965a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m38324c(f, false);
            return;
        }
        float f2 = this.f6976l;
        float f3 = f;
        float f4 = f2;
        if (Math.abs(f2 - f) > 180.0f) {
            float f5 = f;
            if (f2 > 180.0f) {
                f5 = f;
                if (f < 180.0f) {
                    f5 = f + 360.0f;
                }
            }
            f3 = f5;
            f4 = f2;
            if (f2 < 180.0f) {
                f3 = f5;
                f4 = f2;
                if (f5 > 180.0f) {
                    f4 = f2 + 360.0f;
                    f3 = f5;
                }
            }
        }
        Pair pair = new Pair(Float.valueOf(f4), Float.valueOf(f3));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        this.f6965a = ofFloat;
        ofFloat.setDuration(200L);
        this.f6965a.addUpdateListener(new C2123a());
        this.f6965a.addListener(new C2124b(this));
        this.f6965a.start();
    }

    /* renamed from: c */
    public final void m38324c(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f6976l = f2;
        this.f6978n = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float cos = (this.f6979o * ((float) Math.cos(this.f6978n))) + (getWidth() / 2);
        float sin = (this.f6979o * ((float) Math.sin(this.f6978n))) + height;
        RectF rectF = this.f6974j;
        int i = this.f6971g;
        rectF.set(cos - i, sin - i, cos + i, sin + i);
        for (AbstractC2125c abstractC2125c : this.f6970f) {
            abstractC2125c.m38323y0(f2, z);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f = this.f6979o;
        float cos = (float) Math.cos(this.f6978n);
        float f2 = height;
        float f3 = this.f6979o;
        float sin = (float) Math.sin(this.f6978n);
        this.f6973i.setStrokeWidth(0.0f);
        canvas.drawCircle((f * cos) + width2, (f3 * sin) + f2, this.f6971g, this.f6973i);
        double sin2 = Math.sin(this.f6978n);
        double cos2 = Math.cos(this.f6978n);
        this.f6973i.setStrokeWidth(this.f6975k);
        canvas.drawLine(width2, f2, width + ((int) (cos2 * r0)), height + ((int) (r0 * sin2)), this.f6973i);
        canvas.drawCircle(width2, f2, this.f6972h, this.f6973i);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m38325b(this.f6976l, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cf, code lost:
        if (r10 != false) goto L29;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
