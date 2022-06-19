package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ClockHandView.class */
public class ClockHandView extends View {

    /* renamed from: o */
    public static final /* synthetic */ int f6910o = 0;

    /* renamed from: a */
    public ValueAnimator f6911a;

    /* renamed from: b */
    public float f6912b;

    /* renamed from: c */
    public float f6913c;

    /* renamed from: d */
    public int f6914d;

    /* renamed from: f */
    public final int f6916f;

    /* renamed from: g */
    public final float f6917g;

    /* renamed from: h */
    public final Paint f6918h;

    /* renamed from: j */
    public final int f6920j;

    /* renamed from: k */
    public float f6921k;

    /* renamed from: l */
    public boolean f6922l;

    /* renamed from: m */
    public double f6923m;

    /* renamed from: n */
    public int f6924n;

    /* renamed from: e */
    public final List<AbstractC1834c> f6915e = new ArrayList();

    /* renamed from: i */
    public final RectF f6919i = new RectF();

    /* renamed from: com.google.android.material.timepicker.ClockHandView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$a.class */
    public class C1832a implements ValueAnimator.AnimatorUpdateListener {
        public C1832a() {
            ClockHandView.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ClockHandView clockHandView = ClockHandView.this;
            int i = ClockHandView.f6910o;
            clockHandView.m4495c(floatValue, true);
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$b.class */
    public class C1833b extends AnimatorListenerAdapter {
        public C1833b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$c.class */
    public interface AbstractC1834c {
        /* renamed from: a */
        void mo4494a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130969301);
        Paint paint = new Paint();
        this.f6918h = paint;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11029j, 2130969301, 2131887141);
        this.f6924n = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f6916f = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f6920j = resources.getDimensionPixelSize(2131165544);
        this.f6917g = resources.getDimensionPixelSize(2131165542);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m4496b(0.0f, false);
        this.f6914d = ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(this, 2);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final int m4497a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        int i = degrees;
        if (degrees < 0) {
            i = degrees + 360;
        }
        return i;
    }

    /* renamed from: b */
    public void m4496b(float f, boolean z) {
        ValueAnimator valueAnimator = this.f6911a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m4495c(f, false);
            return;
        }
        float f2 = this.f6921k;
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
        this.f6911a = ofFloat;
        ofFloat.setDuration(200L);
        this.f6911a.addUpdateListener(new C1832a());
        this.f6911a.addListener(new C1833b(this));
        this.f6911a.start();
    }

    /* renamed from: c */
    public final void m4495c(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f6921k = f2;
        this.f6923m = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float cos = (this.f6924n * ((float) Math.cos(this.f6923m))) + (getWidth() / 2);
        float sin = (this.f6924n * ((float) Math.sin(this.f6923m))) + height;
        RectF rectF = this.f6919i;
        int i = this.f6916f;
        rectF.set(cos - i, sin - i, cos + i, sin + i);
        for (AbstractC1834c abstractC1834c : this.f6915e) {
            abstractC1834c.mo4494a(f2, z);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f = this.f6924n;
        float cos = (float) Math.cos(this.f6923m);
        float f2 = height;
        float f3 = this.f6924n;
        float sin = (float) Math.sin(this.f6923m);
        this.f6918h.setStrokeWidth(0.0f);
        canvas.drawCircle((f * cos) + width2, (f3 * sin) + f2, this.f6916f, this.f6918h);
        double sin2 = Math.sin(this.f6923m);
        double cos2 = Math.cos(this.f6923m);
        this.f6918h.setStrokeWidth(this.f6920j);
        canvas.drawLine(width2, f2, width + ((int) (cos2 * r0)), height + ((int) (r0 * sin2)), this.f6918h);
        canvas.drawCircle(width2, f2, this.f6917g, this.f6918h);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m4496b(this.f6921k, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
        if (r10 != false) goto L24;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r5
            float r0 = r0.getX()
            r7 = r0
            r0 = r5
            float r0 = r0.getY()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L32
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L27
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L27
            r0 = 0
            r10 = r0
            goto L2d
        L27:
            r0 = r4
            boolean r0 = r0.f6922l
            r10 = r0
        L2d:
            r0 = 0
            r6 = r0
            goto L47
        L32:
            r0 = r4
            r1 = r7
            r0.f6912b = r1
            r0 = r4
            r1 = r8
            r0.f6913c = r1
            r0 = r4
            r1 = 0
            r0.f6922l = r1
            r0 = 0
            r10 = r0
            r0 = 1
            r6 = r0
        L47:
            r0 = r4
            boolean r0 = r0.f6922l
            r11 = r0
            r0 = r4
            r1 = r7
            r2 = r8
            int r0 = r0.m4497a(r1, r2)
            r12 = r0
            r0 = r4
            float r0 = r0.f6921k
            r7 = r0
            r0 = r12
            float r0 = (float) r0
            r8 = r0
            r0 = r7
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = 1
            r12 = r0
            goto L70
        L6d:
            r0 = 0
            r12 = r0
        L70:
            r0 = r6
            if (r0 == 0) goto L7c
            r0 = r12
            if (r0 == 0) goto L7c
            goto L90
        L7c:
            r0 = r12
            if (r0 != 0) goto L89
            r0 = r9
            r6 = r0
            r0 = r10
            if (r0 == 0) goto L92
        L89:
            r0 = r4
            r1 = r8
            r2 = 0
            r0.m4496b(r1, r2)
        L90:
            r0 = 1
            r6 = r0
        L92:
            r0 = r4
            r1 = r11
            r2 = r6
            r1 = r1 | r2
            r0.f6922l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
