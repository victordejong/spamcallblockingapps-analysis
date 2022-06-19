package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.truecaller.C2752R;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p372b0.p430q.C8605o;
@Deprecated
/* renamed from: com.truecaller.ui.components.CyclicProgressBar */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/CyclicProgressBar.class */
public class CyclicProgressBar extends View {

    /* renamed from: j */
    public static final Interpolator f15713j = new AccelerateDecelerateInterpolator();

    /* renamed from: k */
    public static boolean f15714k = true;

    /* renamed from: a */
    public float f15715a;

    /* renamed from: b */
    public float f15716b;

    /* renamed from: c */
    public float f15717c;

    /* renamed from: d */
    public float f15718d;

    /* renamed from: f */
    public Paint f15720f;

    /* renamed from: g */
    public float f15721g;

    /* renamed from: e */
    public RectF f15719e = new RectF();

    /* renamed from: h */
    public final Runnable f15722h = new RunnableC4673a();

    /* renamed from: i */
    public final Runnable f15723i = new RunnableC4674b();

    /* renamed from: com.truecaller.ui.components.CyclicProgressBar$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/CyclicProgressBar$a.class */
    public class RunnableC4673a implements Runnable {
        public RunnableC4673a() {
            CyclicProgressBar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CyclicProgressBar cyclicProgressBar = CyclicProgressBar.this;
            Interpolator interpolator = CyclicProgressBar.f15713j;
            Objects.requireNonNull(cyclicProgressBar);
            Objects.requireNonNull(CyclicProgressBar.this);
            CyclicProgressBar cyclicProgressBar2 = CyclicProgressBar.this;
            System.currentTimeMillis();
            Objects.requireNonNull(cyclicProgressBar2);
            CyclicProgressBar.this.setVisibility(0);
        }
    }

    /* renamed from: com.truecaller.ui.components.CyclicProgressBar$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/CyclicProgressBar$b.class */
    public class RunnableC4674b implements Runnable {
        public RunnableC4674b() {
            CyclicProgressBar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CyclicProgressBar cyclicProgressBar = CyclicProgressBar.this;
            Interpolator interpolator = CyclicProgressBar.f15713j;
            Objects.requireNonNull(cyclicProgressBar);
            Objects.requireNonNull(CyclicProgressBar.this);
            CyclicProgressBar.this.setVisibility(8);
        }
    }

    public CyclicProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        new Stack();
        if (isInEditMode()) {
            i = -7829368;
            this.f15721g = 4.0f;
        } else {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2752R.styleable.CyclicProgressBar, 0, 0);
            try {
                this.f15721g = obtainStyledAttributes.getDimension(1, C8605o.m28238b(context, 4.0f));
                i = obtainStyledAttributes.getColor(0, -1);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        Paint paint = new Paint();
        this.f15720f = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f15720f.setStrokeWidth(this.f15721g);
        this.f15720f.setStrokeCap(Paint.Cap.ROUND);
        this.f15720f.setColor(i);
        this.f15720f.setAntiAlias(true);
    }

    public static void setAnimationEnabled(boolean z) {
        f15714k = z;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f15723i);
        removeCallbacks(this.f15722h);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        float f = (float) (elapsedRealtime % 2000);
        float f2 = f / 2000.0f;
        this.f15715a = f2 * 360.0f;
        float f3 = ((float) (elapsedRealtime / 2000)) * 225.0f;
        this.f15718d = f3 - (((int) (f3 / 360.0f)) * 360);
        if (f2 >= 0.85f) {
            float interpolation = 270.0f - (f15713j.getInterpolation((f - 1700.0f) / 300.0f) * 225.0f);
            this.f15716b = interpolation;
            this.f15717c = 270.0f - interpolation;
        } else if (f2 >= 0.5f) {
            this.f15716b = 270.0f;
        } else if (f2 >= 0.35f) {
            this.f15716b = (f15713j.getInterpolation((f - 700.0f) / 300.0f) * 225.0f) + 45.0f;
        } else if (f2 < 0.35f) {
            this.f15716b = 45.0f;
            this.f15717c = 0.0f;
        }
        canvas.drawArc(this.f15719e, this.f15715a + this.f15718d + this.f15717c, this.f15716b, false, this.f15720f);
        if (f15714k) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.f15719e;
        float f = this.f15721g;
        rectF.set(f * 0.5f, f * 0.5f, i - (f * 0.5f), i2 - (f * 0.5f));
        this.f15719e.inset(0.5f, 0.5f);
    }

    public void setStrokeColor(int i) {
        Paint paint = this.f15720f;
        if (paint != null) {
            paint.setColor(i);
        }
    }
}
