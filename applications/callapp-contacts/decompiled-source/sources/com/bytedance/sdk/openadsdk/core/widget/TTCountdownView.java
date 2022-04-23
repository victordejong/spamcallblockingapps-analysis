package com.bytedance.sdk.openadsdk.core.widget;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCountdownView.class */
public class TTCountdownView extends View {

    /* renamed from: a  reason: collision with root package name */
    public static final String f9296a = x.a(n.a(), "tt_count_down_view");
    private ValueAnimator A;
    private boolean B;

    /* renamed from: b  reason: collision with root package name */
    private int f9297b;

    /* renamed from: c  reason: collision with root package name */
    private int f9298c;

    /* renamed from: d  reason: collision with root package name */
    private int f9299d;
    private int e;
    private float f;
    private float g;
    private float h;
    private int i;
    private boolean j;
    private float k;
    private float l;
    private float m;
    private String n;
    private boolean o;
    private Paint p;
    private Paint q;
    private Paint r;
    private Paint s;
    private float t;
    private float u;
    private RectF v;
    private a w;
    private AnimatorSet x;
    private ValueAnimator y;
    private ValueAnimator z;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a.class */
    public interface a {
    }

    public TTCountdownView(Context context) {
        this(context, null);
    }

    public TTCountdownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTCountdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9297b = Color.parseColor("#fce8b6");
        this.f9298c = Color.parseColor("#f0f0f0");
        this.f9299d = Color.parseColor("#ffffff");
        this.e = Color.parseColor("#7c7c7c");
        this.f = 2.0f;
        this.g = 12.0f;
        this.h = 18.0f;
        this.i = 270;
        this.j = false;
        this.k = 5.0f;
        this.l = 5.0f;
        this.m = 0.8f;
        this.n = f9296a;
        this.o = false;
        this.t = 1.0f;
        this.u = 1.0f;
        this.B = false;
        this.f = a(2.0f);
        this.h = a(18.0f);
        this.g = b(12.0f);
        this.i %= 360;
        b();
        c();
    }

    private float a(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private void a(Canvas canvas) {
        String str;
        canvas.save();
        Paint.FontMetrics fontMetrics = this.s.getFontMetrics();
        if (this.o) {
            StringBuilder sb = new StringBuilder();
            sb.append((int) Math.ceil(a(this.u, this.l)));
            str = sb.toString();
        } else {
            str = this.n;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = f9296a;
        }
        canvas.drawText(str2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.s);
        canvas.restore();
    }

    private float b(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    private void b() {
        Paint paint = new Paint(1);
        this.p = paint;
        paint.setColor(this.f9297b);
        this.p.setStrokeWidth(this.f);
        this.p.setAntiAlias(true);
        this.p.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.q = paint2;
        paint2.setColor(this.f9299d);
        this.q.setAntiAlias(true);
        this.q.setStrokeWidth(this.f);
        this.q.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.r = paint3;
        paint3.setColor(this.f9298c);
        this.r.setAntiAlias(true);
        this.r.setStrokeWidth(this.f / 2.0f);
        this.r.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint(1);
        this.s = paint4;
        paint4.setColor(this.e);
        this.r.setAntiAlias(true);
        this.s.setTextSize(this.g);
        this.s.setTextAlign(Paint.Align.CENTER);
    }

    private void b(Canvas canvas) {
        canvas.save();
        float a2 = a(this.t, 360);
        float f = this.j ? this.i - a2 : this.i;
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.h, this.q);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.h, this.r);
        canvas.drawArc(this.v, f, a2, false, this.p);
        canvas.restore();
    }

    private void c() {
        float f = this.h;
        this.v = new RectF(-f, -f, f, f);
    }

    private int d() {
        return (int) ((((this.f / 2.0f) + this.h) * 2.0f) + a(4.0f));
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.z;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.z = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.t, BitmapDescriptorFactory.HUE_RED);
        this.z = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.z.setDuration(a(this.t, this.k) * 1000.0f);
        this.z.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.t = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.z;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.y = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.u, BitmapDescriptorFactory.HUE_RED);
        this.y = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.y.setDuration(a(this.u, this.l) * 1000.0f);
        this.y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.u = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.y;
    }

    public float a(float f, float f2) {
        return f * f2;
    }

    public float a(float f, int i) {
        return i * f;
    }

    public void a() {
        AnimatorSet animatorSet = this.x;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.x = null;
        }
        ValueAnimator valueAnimator = this.A;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.A = null;
        }
        ValueAnimator valueAnimator2 = this.y;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.y = null;
        }
        ValueAnimator valueAnimator3 = this.z;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.z = null;
        }
        this.t = 1.0f;
        this.u = 1.0f;
        invalidate();
    }

    public a getCountdownListener() {
        return this.w;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        a();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            size = d();
        }
        if (mode2 != 1073741824) {
            size2 = d();
        }
        setMeasuredDimension(size, size2);
    }

    public void setCountDownTime(int i) {
        float f = i;
        this.l = f;
        this.k = f;
        a();
    }

    public void setCountdownListener(a aVar) {
        this.w = aVar;
    }
}
