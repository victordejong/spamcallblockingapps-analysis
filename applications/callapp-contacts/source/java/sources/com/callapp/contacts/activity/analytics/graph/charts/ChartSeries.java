package com.callapp.contacts.activity.analytics.graph.charts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Log;
import android.view.animation.LinearInterpolator;
import com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
import com.callapp.contacts.activity.analytics.graph.events.DecoEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/ChartSeries.class */
public abstract class ChartSeries {

    /* renamed from: a */
    private boolean f19988a;

    /* renamed from: b */
    private ValueAnimator f19989b;

    /* renamed from: d */
    protected final SeriesItem f19991d;

    /* renamed from: e */
    protected DecoEvent.EventType f19992e;

    /* renamed from: f */
    protected DecoDrawEffect f19993f;

    /* renamed from: g */
    protected float f19994g;

    /* renamed from: h */
    protected float f19995h;

    /* renamed from: i */
    protected float f19996i;

    /* renamed from: k */
    protected RectF f19998k;

    /* renamed from: l */
    protected RectF f19999l;

    /* renamed from: o */
    protected Paint f20002o;

    /* renamed from: p */
    private ColorAnimate f20003p;

    /* renamed from: q */
    private DecoEvent f20004q;

    /* renamed from: r */
    private boolean f20005r;

    /* renamed from: c */
    protected final String f19990c = getClass().getSimpleName();

    /* renamed from: j */
    protected float f19997j = 1.0f;

    /* renamed from: m */
    protected int f20000m = 180;

    /* renamed from: n */
    protected int f20001n = 360;

    public ChartSeries(SeriesItem seriesItem, int i, int i2) {
        this.f19991d = seriesItem;
        this.f19988a = seriesItem.getInitialVisibility();
        setupView(i, i2);
        m31595b();
    }

    /* renamed from: c */
    private void m31592c() {
        ValueAnimator valueAnimator = this.f19989b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f20004q = null;
        if (this.f20003p != null) {
            this.f20002o.setColor(this.f19991d.getColor());
            this.f20003p = null;
        }
    }

    /* renamed from: a */
    public final float m31602a(float f) {
        return this.f19991d.getSpinClockwise() ? f : -f;
    }

    /* renamed from: a */
    public final float m31601a(float f, float f2, float f3, float f4, float f5) {
        float f6 = f - f3;
        float f7 = f2 - f3;
        float f8 = f4 - f3;
        if (Math.abs(f6 - f7) < 0.01d) {
            return f6 / f8;
        }
        if (this.f19992e == DecoEvent.EventType.EVENT_HIDE || this.f19992e == DecoEvent.EventType.EVENT_SHOW || this.f19992e == DecoEvent.EventType.EVENT_COLOR_CHANGE) {
            f5 = 1.0f;
        }
        return ((double) Math.abs(f7)) < 0.01d ? ((f6 / f8) * (f6 - (f5 * f6))) / f6 : ((f7 / f8) * (f6 + (f5 * (f7 - f6)))) / f7;
    }

    /* renamed from: a */
    public final RectF m31600a(Canvas canvas, RectF rectF, float f) {
        if (!this.f19988a) {
            return null;
        }
        if (rectF == null || rectF.isEmpty()) {
            throw new IllegalArgumentException("Drawing bounds can not be null or empty");
        }
        if (this.f19991d.getSeriesLabel() == null) {
            return null;
        }
        SeriesLabel seriesLabel = this.f19991d.getSeriesLabel();
        float positionPercent = getPositionPercent();
        float f2 = this.f19996i;
        if (!seriesLabel.f20090g) {
            return null;
        }
        float width = rectF.width() / 2.0f;
        double d = ((f * 360.0f) - 90.0f) * 0.017453292f;
        float cos = (((float) Math.cos(d)) * width) + rectF.centerX();
        float sin = (((float) Math.sin(d)) * width) + rectF.centerY();
        float width2 = (seriesLabel.f20087d.width() / 2) + 15.0f;
        float height = (seriesLabel.f20087d.height() / 2) + 15.0f;
        float f3 = cos;
        if (BitmapDescriptorFactory.HUE_RED > cos - width2) {
            f3 = width2;
        }
        float f4 = f3;
        if (canvas.getWidth() < f3 + width2) {
            f4 = canvas.getWidth() - width2;
        }
        float f5 = sin;
        if (BitmapDescriptorFactory.HUE_RED > sin - height) {
            f5 = height;
        }
        float f6 = f5;
        if (canvas.getHeight() < f5 + height) {
            f6 = canvas.getHeight() - height;
        }
        seriesLabel.f20088e.set(f4 - width2, f6 - height, width2 + f4, height + f6);
        canvas.drawRoundRect(seriesLabel.f20088e, 10.0f, 10.0f, seriesLabel.f20085b);
        canvas.drawText(seriesLabel.f20084a.contains("%%") ? String.format(seriesLabel.f20084a, Float.valueOf(positionPercent * 100.0f)) : seriesLabel.f20084a.contains("%") ? String.format(seriesLabel.f20084a, Float.valueOf(f2)) : seriesLabel.f20084a, f4, f6 - seriesLabel.f20089f, seriesLabel.f20086c);
        return seriesLabel.f20088e;
    }

    /* renamed from: a */
    protected abstract void mo31583a();

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* renamed from: a */
    public final void m31597a(final DecoEvent decoEvent) {
        this.f20005r = false;
        this.f19992e = decoEvent.getEventType();
        this.f19988a = true;
        m31592c();
        this.f20004q = decoEvent;
        final boolean isColorSet = decoEvent.isColorSet();
        if (isColorSet) {
            this.f20003p = new ColorAnimate(this.f19991d.getColor(), decoEvent.getColor());
            this.f19991d.setColor(decoEvent.getColor());
        }
        float endPosition = decoEvent.getEndPosition();
        this.f19994g = this.f19996i;
        this.f19995h = endPosition;
        char effectDuration = decoEvent.getEffectDuration();
        int i = (effectDuration > 0L ? 1 : (effectDuration == 0L ? 0 : -1));
        if (i == 0 || Math.abs(this.f19995h - this.f19994g) < 0.01d) {
            m31592c();
            this.f19996i = this.f19995h;
            this.f20004q = null;
            this.f19997j = 1.0f;
            Iterator<SeriesItem.SeriesItemListener> it2 = this.f19991d.getListeners().iterator();
            while (it2.hasNext()) {
                it2.next().mo31556a(this.f19995h);
            }
            return;
        }
        if (i < 0) {
            effectDuration = Math.abs((int) (((float) this.f19991d.getSpinDuration()) * ((this.f19994g - this.f19995h) / this.f19991d.getMaxValue())));
        }
        if (effectDuration < 0) {
            m31592c();
            this.f19996i = this.f19995h;
            this.f20004q = null;
            this.f19997j = 1.0f;
            Iterator<SeriesItem.SeriesItemListener> it3 = this.f19991d.getListeners().iterator();
            while (it3.hasNext()) {
                it3.next().mo31556a(this.f19995h);
            }
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f19994g, endPosition);
        this.f19989b = ofFloat;
        ofFloat.setDuration((long) effectDuration);
        if (decoEvent.getInterpolator() != null) {
            this.f19989b.setInterpolator(decoEvent.getInterpolator());
        } else if (this.f19991d.getInterpolator() != null) {
            this.f19989b.setInterpolator(this.f19991d.getInterpolator());
        }
        this.f19989b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                ChartSeries chartSeries = ChartSeries.this;
                chartSeries.f19997j = (floatValue - chartSeries.f19994g) / (ChartSeries.this.f19995h - ChartSeries.this.f19994g);
                ChartSeries.this.f19996i = floatValue;
                Iterator<SeriesItem.SeriesItemListener> it4 = ChartSeries.this.f19991d.getListeners().iterator();
                while (it4.hasNext()) {
                    it4.next().mo31556a(ChartSeries.this.f19996i);
                }
            }
        });
        this.f19989b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (isColorSet) {
                    ChartSeries.this.f20003p = null;
                }
            }
        });
        this.f19989b.start();
    }

    /* renamed from: a */
    public final void m31596a(final DecoEvent decoEvent, final boolean z) {
        m31592c();
        this.f19992e = decoEvent.getEventType();
        this.f19997j = z ? 1.0f : 0.0f;
        this.f19988a = true;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f19989b = ofFloat;
        ofFloat.setDuration(decoEvent.getEffectDuration());
        this.f19989b.setInterpolator(new LinearInterpolator());
        this.f19989b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                ChartSeries chartSeries = ChartSeries.this;
                float f = floatValue;
                if (z) {
                    f = 1.0f - floatValue;
                }
                chartSeries.f19997j = f;
                Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f19991d.getListeners().iterator();
                while (it2.hasNext()) {
                    it2.next().mo31557a();
                }
            }
        });
        this.f19989b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                decoEvent.getEventType();
                DecoEvent.EventType eventType = DecoEvent.EventType.EVENT_EFFECT;
            }
        });
        this.f19989b.start();
    }

    /* renamed from: a */
    public boolean mo31581a(Canvas canvas, RectF rectF) {
        if (!this.f19988a) {
            return true;
        }
        if (rectF == null || rectF.isEmpty()) {
            throw new IllegalArgumentException("Drawing bounds can not be null or empty");
        }
        RectF rectF2 = this.f19998k;
        if (rectF2 == null || !rectF2.equals(rectF)) {
            this.f19998k = new RectF(rectF);
            this.f19999l = new RectF(rectF);
            if (this.f19991d.getInset() != null) {
                this.f19999l.inset(this.f19991d.getInset().x, this.f19991d.getInset().y);
            }
            mo31583a();
        }
        if (this.f19992e != DecoEvent.EventType.EVENT_EFFECT) {
            if (this.f19992e == DecoEvent.EventType.EVENT_HIDE || this.f19992e == DecoEvent.EventType.EVENT_SHOW) {
                float lineWidth = this.f19991d.getLineWidth();
                float f = this.f19997j;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    lineWidth *= 1.0f - f;
                    this.f20002o.setAlpha((int) (Color.alpha(this.f19991d.getColor()) * (1.0f - this.f19997j)));
                } else {
                    this.f20002o.setAlpha(Color.alpha(this.f19991d.getColor()));
                }
                this.f20002o.setStrokeWidth(lineWidth);
            } else if (this.f19991d.getLineWidth() != this.f20002o.getStrokeWidth()) {
                this.f20002o.setStrokeWidth(this.f19991d.getLineWidth());
            }
            ColorAnimate colorAnimate = this.f20003p;
            if (colorAnimate == null) {
                if (this.f20002o.getColor() == getSeriesItem().getColor()) {
                    return false;
                }
                this.f20002o.setColor(getSeriesItem().getColor());
                return false;
            }
            Paint paint = this.f20002o;
            float f2 = this.f19997j;
            colorAnimate.f20022c = Color.argb(colorAnimate.m31589a(1, Color.alpha(colorAnimate.f20020a), Color.alpha(colorAnimate.f20021b), f2), colorAnimate.m31589a(2, Color.red(colorAnimate.f20020a), Color.red(colorAnimate.f20021b), f2), colorAnimate.m31589a(4, Color.green(colorAnimate.f20020a), Color.green(colorAnimate.f20021b), f2), colorAnimate.m31589a(8, Color.blue(colorAnimate.f20020a), Color.blue(colorAnimate.f20021b), f2));
            paint.setColor(colorAnimate.f20022c);
            return false;
        }
        DecoDrawEffect decoDrawEffect = this.f19993f;
        if (decoDrawEffect == null) {
            return true;
        }
        RectF rectF3 = this.f19999l;
        float f3 = this.f19997j;
        float f4 = this.f20000m;
        float f5 = this.f20001n;
        int i = DecoDrawEffect.C57591.f20031a[decoDrawEffect.f20024a.ordinal()];
        if (i == 1) {
            if (f3 <= 0.6f) {
                decoDrawEffect.m31586a(canvas, rectF3, f3 * 1.6666666f, f4, f5);
                return true;
            }
            float f6 = (f3 - 0.6f) / 0.39999998f;
            decoDrawEffect.m31584b(canvas, rectF3, f6);
            decoDrawEffect.m31587a(canvas, rectF3, f6);
            return true;
        } else if (i == 2) {
            decoDrawEffect.m31584b(canvas, rectF3, f3);
            decoDrawEffect.m31587a(canvas, rectF3, f3);
            return true;
        } else if (i != 3 && i != 4 && i != 5) {
            return true;
        } else {
            decoDrawEffect.m31586a(canvas, rectF3, f3, f4, f5);
            return true;
        }
    }

    /* renamed from: b */
    public final float m31594b(float f) {
        return (this.f20000m + (f - getMinSweepAngle())) % 360.0f;
    }

    /* renamed from: b */
    public final void m31595b() {
        this.f19992e = DecoEvent.EventType.EVENT_MOVE;
        this.f19988a = this.f19991d.getInitialVisibility();
        m31592c();
        this.f19994g = this.f19991d.getMinValue();
        this.f19995h = this.f19991d.getInitialValue();
        this.f19996i = this.f19991d.getInitialValue();
        this.f19997j = 1.0f;
        Paint paint = new Paint();
        this.f20002o = paint;
        paint.setColor(this.f19991d.getColor());
        this.f20002o.setStyle(this.f19991d.getChartStyle() == SeriesItem.ChartStyle.STYLE_DONUT ? Paint.Style.STROKE : Paint.Style.FILL);
        this.f20002o.setStrokeWidth(this.f19991d.getLineWidth());
        this.f20002o.setStrokeCap(this.f19991d.getRoundCap() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        this.f20002o.setAntiAlias(true);
        if (this.f19991d.getShadowSize() > BitmapDescriptorFactory.HUE_RED) {
            this.f20002o.setShadowLayer(this.f19991d.getShadowSize(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f19991d.getShadowColor());
        }
        this.f19998k = null;
        Iterator<SeriesItem.SeriesItemListener> it2 = this.f19991d.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().mo31556a(this.f19996i);
        }
    }

    /* renamed from: b */
    public final void m31593b(final DecoEvent decoEvent) {
        m31592c();
        this.f19988a = true;
        this.f19992e = decoEvent.getEventType();
        this.f19997j = BitmapDescriptorFactory.HUE_RED;
        if (!decoEvent.isColorSet()) {
            Log.w(this.f19990c, "Must set new color to start CHANGE_COLOR event");
            return;
        }
        this.f20003p = new ColorAnimate(this.f19991d.getColor(), decoEvent.getColor());
        this.f19991d.setColor(decoEvent.getColor());
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f19989b = ofFloat;
        ofFloat.setDuration(decoEvent.getEffectDuration());
        if (decoEvent.getInterpolator() != null) {
            this.f19989b.setInterpolator(decoEvent.getInterpolator());
        } else {
            this.f19989b.setInterpolator(new LinearInterpolator());
        }
        this.f19989b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChartSeries.this.f19997j = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f19991d.getListeners().iterator();
                while (it2.hasNext()) {
                    it2.next().mo31557a();
                }
            }
        });
        this.f19989b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }
        });
        this.f19989b.start();
    }

    /* renamed from: c */
    public final float m31591c(float f) {
        float f2 = f;
        if (Math.abs(f) < getMinSweepAngle()) {
            f2 = f;
            if (getSeriesItem().f20042a) {
                f2 = getMinSweepAngle();
            }
        }
        return f2;
    }

    /* renamed from: c */
    public final void m31590c(final DecoEvent decoEvent) throws IllegalStateException {
        if (decoEvent.getEffectType() != null) {
            m31592c();
            this.f19988a = true;
            this.f19992e = decoEvent.getEventType();
            DecoDrawEffect decoDrawEffect = new DecoDrawEffect(decoEvent.getEffectType(), this.f20002o, decoEvent.getDisplayText());
            this.f19993f = decoDrawEffect;
            decoDrawEffect.setRotationCount(decoEvent.getEffectRotations());
            this.f19997j = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f19989b = ofFloat;
            ofFloat.setDuration(decoEvent.getEffectDuration());
            this.f19989b.setInterpolator(decoEvent.getInterpolator() != null ? decoEvent.getInterpolator() : new LinearInterpolator());
            this.f19989b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChartSeries.this.f19997j = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                    Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f19991d.getListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().mo31557a();
                    }
                }
            });
            this.f19989b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChartSeries.this.f19992e = DecoEvent.EventType.EVENT_MOVE;
                    ChartSeries chartSeries = ChartSeries.this;
                    DecoDrawEffect decoDrawEffect2 = chartSeries.f19993f;
                    chartSeries.f19988a = decoDrawEffect2.f20024a == DecoDrawEffect.EffectType.EFFECT_SPIRAL_OUT || decoDrawEffect2.f20024a == DecoDrawEffect.EffectType.EFFECT_SPIRAL_OUT_FILL;
                    ChartSeries.this.f19993f = null;
                }
            });
            this.f19989b.start();
            return;
        }
        throw new IllegalStateException("Unable to execute null effect type");
    }

    public float getMinSweepAngle() {
        if (this.f19991d.f20042a && this.f19991d.getChartStyle() != SeriesItem.ChartStyle.STYLE_PIE) {
            if (this.f20002o.getStrokeCap() == Paint.Cap.ROUND) {
            }
            return 0.1f;
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public float getPositionPercent() {
        return this.f19996i / (this.f19991d.getMaxValue() - this.f19991d.getMinValue());
    }

    public SeriesItem getSeriesItem() {
        return this.f19991d;
    }

    public boolean isVisible() {
        return this.f19988a;
    }

    public void setupView(int i, int i2) {
        if (i < 0 || i > 360) {
            throw new IllegalArgumentException("Total angle of view must be in the range 0..360");
        }
        if (i2 < 0 || i2 > 360) {
            throw new IllegalArgumentException("Rotate angle of view must be in the range 0..360");
        }
        this.f20000m = i2;
        this.f20001n = i;
        if (!this.f19991d.getSpinClockwise()) {
            this.f20000m = (this.f20000m + this.f20001n) % 360;
        }
        this.f19998k = null;
    }
}
