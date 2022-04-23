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
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView.class */
public class ClockHandView extends View {

    /* renamed from: a  reason: collision with root package name */
    boolean f30953a;

    /* renamed from: b  reason: collision with root package name */
    final int f30954b;

    /* renamed from: c  reason: collision with root package name */
    final RectF f30955c;

    /* renamed from: d  reason: collision with root package name */
    a f30956d;
    int e;
    private ValueAnimator f;
    private float g;
    private float h;
    private boolean i;
    private int j;
    private final List<b> k;
    private final float l;
    private final Paint m;
    private final int n;
    private float o;
    private boolean p;
    private double q;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$a.class */
    public interface a {
        void b(float f, boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/ClockHandView$b.class */
    public interface b {
        void a(float f, boolean z);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new ArrayList();
        Paint paint = new Paint();
        this.m = paint;
        this.f30955c = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.ClockHandView, i, a.k.Widget_MaterialComponents_TimePicker_Clock);
        this.e = obtainStyledAttributes.getDimensionPixelSize(a.l.ClockHandView_materialCircleRadius, 0);
        this.f30954b = obtainStyledAttributes.getDimensionPixelSize(a.l.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.n = resources.getDimensionPixelSize(a.d.material_clock_hand_stroke_width);
        this.l = resources.getDimensionPixelSize(a.d.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(a.l.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        a(BitmapDescriptorFactory.HUE_RED, false);
        this.j = ViewConfiguration.get(context).getScaledTouchSlop();
        v.c((View) this, 2);
        obtainStyledAttributes.recycle();
    }

    private int a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        int i = degrees;
        if (degrees < 0) {
            i = degrees + 360;
        }
        return i;
    }

    private Pair<Float, Float> a(float f) {
        float f2 = this.o;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(float f, boolean z) {
        float f2 = f % 360.0f;
        this.o = f2;
        this.q = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.e * ((float) Math.cos(this.q)));
        float sin = height + (this.e * ((float) Math.sin(this.q)));
        RectF rectF = this.f30955c;
        int i = this.f30954b;
        rectF.set(width - i, sin - i, width + i, sin + i);
        for (b bVar : this.k) {
            bVar.a(f2, z);
        }
        invalidate();
    }

    public final void a(float f, boolean z) {
        ValueAnimator valueAnimator = this.f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            b(f, false);
            return;
        }
        Pair<Float, Float> a2 = a(f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) a2.first).floatValue(), ((Float) a2.second).floatValue());
        this.f = ofFloat;
        ofFloat.setDuration(200L);
        this.f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.b(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        this.f.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.f.start();
    }

    public final void a(b bVar) {
        this.k.add(bVar);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f = this.e;
        float cos = (float) Math.cos(this.q);
        float f2 = height;
        float f3 = this.e;
        float sin = (float) Math.sin(this.q);
        this.m.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        canvas.drawCircle((f * cos) + width2, (f3 * sin) + f2, this.f30954b, this.m);
        double sin2 = Math.sin(this.q);
        double cos2 = Math.cos(this.q);
        this.m.setStrokeWidth(this.n);
        canvas.drawLine(width2, f2, width + ((int) (cos2 * r0)), height + ((int) (r0 * sin2)), this.m);
        canvas.drawCircle(width2, f2, this.l, this.m);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(this.o, false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        a aVar;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z4 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.g);
                int i2 = (int) (y - this.h);
                this.i = (i * i) + (i2 * i2) > this.j;
                z = this.p;
                z2 = actionMasked == 1;
            } else {
                z2 = false;
                z = false;
            }
            z3 = false;
        } else {
            this.g = x;
            this.h = y;
            this.i = true;
            this.p = false;
            z2 = false;
            z = false;
            z3 = true;
        }
        boolean z5 = this.p;
        float a2 = a(x, y);
        boolean z6 = this.o != a2;
        if (!z3 || !z6) {
            if (z6 || z) {
                boolean z7 = false;
                if (z2) {
                    z7 = false;
                    if (this.f30953a) {
                        z7 = true;
                    }
                }
                a(a2, z7);
            }
            boolean z8 = z4 | z5;
            this.p = z8;
            if (z8 || !z2 || (aVar = this.f30956d) == null) {
                return true;
            }
            aVar.b(a(x, y), this.i);
            return true;
        }
        z4 = true;
        boolean z82 = z4 | z5;
        this.p = z82;
        return z82 ? true : true;
    }
}
