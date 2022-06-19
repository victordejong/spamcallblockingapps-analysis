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
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView.class */
public class ClockHandView extends View {

    /* renamed from: a */
    boolean f54179a;

    /* renamed from: b */
    final int f54180b;

    /* renamed from: c */
    final RectF f54181c;

    /* renamed from: d */
    AbstractC14835a f54182d;

    /* renamed from: e */
    int f54183e;

    /* renamed from: f */
    private ValueAnimator f54184f;

    /* renamed from: g */
    private float f54185g;

    /* renamed from: h */
    private float f54186h;

    /* renamed from: i */
    private boolean f54187i;

    /* renamed from: j */
    private int f54188j;

    /* renamed from: k */
    private final List<AbstractC14836b> f54189k;

    /* renamed from: l */
    private final float f54190l;

    /* renamed from: m */
    private final Paint f54191m;

    /* renamed from: n */
    private final int f54192n;

    /* renamed from: o */
    private float f54193o;

    /* renamed from: p */
    private boolean f54194p;

    /* renamed from: q */
    private double f54195q;

    /* renamed from: com.google.android.material.timepicker.ClockHandView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$a.class */
    public interface AbstractC14835a {
        /* renamed from: b */
        void mo9869b(float f, boolean z);
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$b.class */
    public interface AbstractC14836b {
        /* renamed from: a */
        void mo9873a(float f, boolean z);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f54189k = new ArrayList();
        Paint paint = new Paint();
        this.f54191m = paint;
        this.f54181c = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ClockHandView, i, C14376a.C14387k.Widget_MaterialComponents_TimePicker_Clock);
        this.f54183e = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.ClockHandView_materialCircleRadius, 0);
        this.f54180b = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f54192n = resources.getDimensionPixelSize(C14376a.C14380d.material_clock_hand_stroke_width);
        this.f54190l = resources.getDimensionPixelSize(C14376a.C14380d.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(C14376a.C14388l.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m9906a(BitmapDescriptorFactory.HUE_RED, false);
        this.f54188j = ViewConfiguration.get(context).getScaledTouchSlop();
        C0926v.m44102c((View) this, 2);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m9907a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        int i = degrees;
        if (degrees < 0) {
            i = degrees + 360;
        }
        return i;
    }

    /* renamed from: a */
    private Pair<Float, Float> m9908a(float f) {
        float f2 = this.f54193o;
        float f3 = f2;
        float f4 = f;
        if (Math.abs(f2 - f) > 180.0f) {
            float f5 = f;
            if (f2 > 180.0f) {
                f5 = f;
                if (f < 180.0f) {
                    f5 = f + 360.0f;
                }
            }
            f3 = f2;
            f4 = f5;
            if (f2 < 180.0f) {
                f3 = f2;
                f4 = f5;
                if (f5 > 180.0f) {
                    f3 = f2 + 360.0f;
                    f4 = f5;
                }
            }
        }
        return new Pair<>(Float.valueOf(f3), Float.valueOf(f4));
    }

    /* renamed from: b */
    public void m9903b(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f54193o = f2;
        this.f54195q = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.f54183e * ((float) Math.cos(this.f54195q)));
        float sin = height + (this.f54183e * ((float) Math.sin(this.f54195q)));
        RectF rectF = this.f54181c;
        int i = this.f54180b;
        rectF.set(width - i, sin - i, width + i, sin + i);
        for (AbstractC14836b abstractC14836b : this.f54189k) {
            abstractC14836b.mo9873a(f2, z);
        }
        invalidate();
    }

    /* renamed from: a */
    public final void m9906a(float f, boolean z) {
        ValueAnimator valueAnimator = this.f54184f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m9903b(f, false);
            return;
        }
        Pair<Float, Float> m9908a = m9908a(f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) m9908a.first).floatValue(), ((Float) m9908a.second).floatValue());
        this.f54184f = ofFloat;
        ofFloat.setDuration(200L);
        this.f54184f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.m9903b(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        this.f54184f.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.f54184f.start();
    }

    /* renamed from: a */
    public final void m9905a(AbstractC14836b abstractC14836b) {
        this.f54189k.add(abstractC14836b);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f = this.f54183e;
        float cos = (float) Math.cos(this.f54195q);
        float f2 = height;
        float f3 = this.f54183e;
        float sin = (float) Math.sin(this.f54195q);
        this.f54191m.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        canvas.drawCircle((f * cos) + width2, (f3 * sin) + f2, this.f54180b, this.f54191m);
        double sin2 = Math.sin(this.f54195q);
        double cos2 = Math.cos(this.f54195q);
        this.f54191m.setStrokeWidth(this.f54192n);
        canvas.drawLine(width2, f2, width + ((int) (cos2 * r0)), height + ((int) (r0 * sin2)), this.f54191m);
        canvas.drawCircle(width2, f2, this.f54190l, this.f54191m);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m9906a(this.f54193o, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00da, code lost:
        if (r13 != false) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
