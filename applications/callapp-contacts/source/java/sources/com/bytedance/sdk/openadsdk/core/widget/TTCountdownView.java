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
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCountdownView.class */
public class TTCountdownView extends View {

    /* renamed from: a */
    public static final String f17467a = C5486x.m32071a(C4600n.m34815a(), "tt_count_down_view");

    /* renamed from: A */
    private ValueAnimator f17468A;

    /* renamed from: B */
    private boolean f17469B;

    /* renamed from: b */
    private int f17470b;

    /* renamed from: c */
    private int f17471c;

    /* renamed from: d */
    private int f17472d;

    /* renamed from: e */
    private int f17473e;

    /* renamed from: f */
    private float f17474f;

    /* renamed from: g */
    private float f17475g;

    /* renamed from: h */
    private float f17476h;

    /* renamed from: i */
    private int f17477i;

    /* renamed from: j */
    private boolean f17478j;

    /* renamed from: k */
    private float f17479k;

    /* renamed from: l */
    private float f17480l;

    /* renamed from: m */
    private float f17481m;

    /* renamed from: n */
    private String f17482n;

    /* renamed from: o */
    private boolean f17483o;

    /* renamed from: p */
    private Paint f17484p;

    /* renamed from: q */
    private Paint f17485q;

    /* renamed from: r */
    private Paint f17486r;

    /* renamed from: s */
    private Paint f17487s;

    /* renamed from: t */
    private float f17488t;

    /* renamed from: u */
    private float f17489u;

    /* renamed from: v */
    private RectF f17490v;

    /* renamed from: w */
    private AbstractC4765a f17491w;

    /* renamed from: x */
    private AnimatorSet f17492x;

    /* renamed from: y */
    private ValueAnimator f17493y;

    /* renamed from: z */
    private ValueAnimator f17494z;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a.class */
    public interface AbstractC4765a {
    }

    public TTCountdownView(Context context) {
        this(context, null);
    }

    public TTCountdownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTCountdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17470b = Color.parseColor("#fce8b6");
        this.f17471c = Color.parseColor("#f0f0f0");
        this.f17472d = Color.parseColor("#ffffff");
        this.f17473e = Color.parseColor("#7c7c7c");
        this.f17474f = 2.0f;
        this.f17475g = 12.0f;
        this.f17476h = 18.0f;
        this.f17477i = 270;
        this.f17478j = false;
        this.f17479k = 5.0f;
        this.f17480l = 5.0f;
        this.f17481m = 0.8f;
        this.f17482n = f17467a;
        this.f17483o = false;
        this.f17488t = 1.0f;
        this.f17489u = 1.0f;
        this.f17469B = false;
        this.f17474f = m34073a(2.0f);
        this.f17476h = m34073a(18.0f);
        this.f17475g = m34067b(12.0f);
        this.f17477i %= 360;
        m34068b();
        m34064c();
    }

    /* renamed from: a */
    private float m34073a(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    private void m34070a(Canvas canvas) {
        String str;
        canvas.save();
        Paint.FontMetrics fontMetrics = this.f17487s.getFontMetrics();
        if (this.f17483o) {
            StringBuilder sb = new StringBuilder();
            sb.append((int) Math.ceil(m34072a(this.f17489u, this.f17480l)));
            str = sb.toString();
        } else {
            str = this.f17482n;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = f17467a;
        }
        canvas.drawText(str2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.f17487s);
        canvas.restore();
    }

    /* renamed from: b */
    private float m34067b(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    /* renamed from: b */
    private void m34068b() {
        Paint paint = new Paint(1);
        this.f17484p = paint;
        paint.setColor(this.f17470b);
        this.f17484p.setStrokeWidth(this.f17474f);
        this.f17484p.setAntiAlias(true);
        this.f17484p.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.f17485q = paint2;
        paint2.setColor(this.f17472d);
        this.f17485q.setAntiAlias(true);
        this.f17485q.setStrokeWidth(this.f17474f);
        this.f17485q.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f17486r = paint3;
        paint3.setColor(this.f17471c);
        this.f17486r.setAntiAlias(true);
        this.f17486r.setStrokeWidth(this.f17474f / 2.0f);
        this.f17486r.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint(1);
        this.f17487s = paint4;
        paint4.setColor(this.f17473e);
        this.f17486r.setAntiAlias(true);
        this.f17487s.setTextSize(this.f17475g);
        this.f17487s.setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: b */
    private void m34066b(Canvas canvas) {
        canvas.save();
        float m34071a = m34071a(this.f17488t, 360);
        float f = this.f17478j ? this.f17477i - m34071a : this.f17477i;
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f17476h, this.f17485q);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f17476h, this.f17486r);
        canvas.drawArc(this.f17490v, f, m34071a, false, this.f17484p);
        canvas.restore();
    }

    /* renamed from: c */
    private void m34064c() {
        float f = this.f17476h;
        this.f17490v = new RectF(-f, -f, f, f);
    }

    /* renamed from: d */
    private int m34063d() {
        return (int) ((((this.f17474f / 2.0f) + this.f17476h) * 2.0f) + m34073a(4.0f));
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.f17494z;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f17494z = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f17488t, BitmapDescriptorFactory.HUE_RED);
        this.f17494z = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.f17494z.setDuration(m34072a(this.f17488t, this.f17479k) * 1000.0f);
        this.f17494z.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.f17488t = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.f17494z;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.f17493y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f17493y = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f17489u, BitmapDescriptorFactory.HUE_RED);
        this.f17493y = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.f17493y.setDuration(m34072a(this.f17489u, this.f17480l) * 1000.0f);
        this.f17493y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.f17489u = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.f17493y;
    }

    /* renamed from: a */
    public float m34072a(float f, float f2) {
        return f * f2;
    }

    /* renamed from: a */
    public float m34071a(float f, int i) {
        return i * f;
    }

    /* renamed from: a */
    public void m34074a() {
        AnimatorSet animatorSet = this.f17492x;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f17492x = null;
        }
        ValueAnimator valueAnimator = this.f17468A;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f17468A = null;
        }
        ValueAnimator valueAnimator2 = this.f17493y;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.f17493y = null;
        }
        ValueAnimator valueAnimator3 = this.f17494z;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.f17494z = null;
        }
        this.f17488t = 1.0f;
        this.f17489u = 1.0f;
        invalidate();
    }

    public AbstractC4765a getCountdownListener() {
        return this.f17491w;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        m34074a();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        m34066b(canvas);
        m34070a(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i3 = size;
        if (mode != 1073741824) {
            i3 = m34063d();
        }
        int i4 = size2;
        if (mode2 != 1073741824) {
            i4 = m34063d();
        }
        setMeasuredDimension(i3, i4);
    }

    public void setCountDownTime(int i) {
        float f = i;
        this.f17480l = f;
        this.f17479k = f;
        m34074a();
    }

    public void setCountdownListener(AbstractC4765a abstractC4765a) {
        this.f17491w = abstractC4765a;
    }
}
