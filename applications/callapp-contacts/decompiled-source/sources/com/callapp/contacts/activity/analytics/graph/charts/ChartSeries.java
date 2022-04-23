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

    /* renamed from: a  reason: collision with root package name */
    private boolean f10927a;

    /* renamed from: b  reason: collision with root package name */
    private ValueAnimator f10928b;

    /* renamed from: d  reason: collision with root package name */
    protected final SeriesItem f10930d;
    protected DecoEvent.EventType e;
    protected DecoDrawEffect f;
    protected float g;
    protected float h;
    protected float i;
    protected RectF k;
    protected RectF l;
    protected Paint o;
    private ColorAnimate p;
    private DecoEvent q;
    private boolean r;

    /* renamed from: c  reason: collision with root package name */
    protected final String f10929c = getClass().getSimpleName();
    protected float j = 1.0f;
    protected int m = 180;
    protected int n = 360;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChartSeries(SeriesItem seriesItem, int i, int i2) {
        this.f10930d = seriesItem;
        this.f10927a = seriesItem.getInitialVisibility();
        setupView(i, i2);
        b();
    }

    private void c() {
        ValueAnimator valueAnimator = this.f10928b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.q = null;
        if (this.p != null) {
            this.o.setColor(this.f10930d.getColor());
            this.p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float a(float f) {
        return this.f10930d.getSpinClockwise() ? f : -f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float a(float f, float f2, float f3, float f4, float f5) {
        float f6 = f - f3;
        float f7 = f2 - f3;
        float f8 = f4 - f3;
        if (Math.abs(f6 - f7) < 0.01d) {
            return f6 / f8;
        }
        if (this.e == DecoEvent.EventType.EVENT_HIDE || this.e == DecoEvent.EventType.EVENT_SHOW || this.e == DecoEvent.EventType.EVENT_COLOR_CHANGE) {
            f5 = 1.0f;
        }
        return ((double) Math.abs(f7)) < 0.01d ? ((f6 / f8) * (f6 - (f5 * f6))) / f6 : ((f7 / f8) * (f6 + (f5 * (f7 - f6)))) / f7;
    }

    public final RectF a(Canvas canvas, RectF rectF, float f) {
        if (!this.f10927a) {
            return null;
        }
        if (rectF == null || rectF.isEmpty()) {
            throw new IllegalArgumentException("Drawing bounds can not be null or empty");
        } else if (this.f10930d.getSeriesLabel() == null) {
            return null;
        } else {
            SeriesLabel seriesLabel = this.f10930d.getSeriesLabel();
            float positionPercent = getPositionPercent();
            float f2 = this.i;
            if (!seriesLabel.g) {
                return null;
            }
            float width = rectF.width() / 2.0f;
            double d2 = ((f * 360.0f) - 90.0f) * 0.017453292f;
            float cos = (((float) Math.cos(d2)) * width) + rectF.centerX();
            float sin = (((float) Math.sin(d2)) * width) + rectF.centerY();
            float width2 = (seriesLabel.f10973d.width() / 2) + 15.0f;
            float height = (seriesLabel.f10973d.height() / 2) + 15.0f;
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
            seriesLabel.e.set(f4 - width2, f6 - height, width2 + f4, height + f6);
            canvas.drawRoundRect(seriesLabel.e, 10.0f, 10.0f, seriesLabel.f10971b);
            canvas.drawText(seriesLabel.f10970a.contains("%%") ? String.format(seriesLabel.f10970a, Float.valueOf(positionPercent * 100.0f)) : seriesLabel.f10970a.contains("%") ? String.format(seriesLabel.f10970a, Float.valueOf(f2)) : seriesLabel.f10970a, f4, f6 - seriesLabel.f, seriesLabel.f10972c);
            return seriesLabel.e;
        }
    }

    protected abstract void a();

    public final void a(final DecoEvent decoEvent) {
        this.r = false;
        this.e = decoEvent.getEventType();
        this.f10927a = true;
        c();
        this.q = decoEvent;
        final boolean isColorSet = decoEvent.isColorSet();
        if (isColorSet) {
            this.p = new ColorAnimate(this.f10930d.getColor(), decoEvent.getColor());
            this.f10930d.setColor(decoEvent.getColor());
        }
        float endPosition = decoEvent.getEndPosition();
        this.g = this.i;
        this.h = endPosition;
        long effectDuration = decoEvent.getEffectDuration();
        int i = (effectDuration > 0L ? 1 : (effectDuration == 0L ? 0 : -1));
        if (i == 0 || Math.abs(this.h - this.g) < 0.01d) {
            c();
            this.i = this.h;
            this.q = null;
            this.j = 1.0f;
            Iterator<SeriesItem.SeriesItemListener> it2 = this.f10930d.getListeners().iterator();
            while (it2.hasNext()) {
                it2.next().a(this.h);
            }
            return;
        }
        if (i < 0) {
            effectDuration = Math.abs((int) (((float) this.f10930d.getSpinDuration()) * ((this.g - this.h) / this.f10930d.getMaxValue())));
        }
        if (effectDuration < 0) {
            c();
            this.i = this.h;
            this.q = null;
            this.j = 1.0f;
            Iterator<SeriesItem.SeriesItemListener> it3 = this.f10930d.getListeners().iterator();
            while (it3.hasNext()) {
                it3.next().a(this.h);
            }
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.g, endPosition);
        this.f10928b = ofFloat;
        ofFloat.setDuration(effectDuration);
        if (decoEvent.getInterpolator() != null) {
            this.f10928b.setInterpolator(decoEvent.getInterpolator());
        } else if (this.f10930d.getInterpolator() != null) {
            this.f10928b.setInterpolator(this.f10930d.getInterpolator());
        }
        this.f10928b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                ChartSeries chartSeries = ChartSeries.this;
                chartSeries.j = (floatValue - chartSeries.g) / (ChartSeries.this.h - ChartSeries.this.g);
                ChartSeries.this.i = floatValue;
                Iterator<SeriesItem.SeriesItemListener> it4 = ChartSeries.this.f10930d.getListeners().iterator();
                while (it4.hasNext()) {
                    it4.next().a(ChartSeries.this.i);
                }
            }
        });
        this.f10928b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (isColorSet) {
                    ChartSeries.this.p = null;
                }
            }
        });
        this.f10928b.start();
    }

    public final void a(final DecoEvent decoEvent, final boolean z) {
        c();
        this.e = decoEvent.getEventType();
        this.j = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        this.f10927a = true;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f10928b = ofFloat;
        ofFloat.setDuration(decoEvent.getEffectDuration());
        this.f10928b.setInterpolator(new LinearInterpolator());
        this.f10928b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                ChartSeries chartSeries = ChartSeries.this;
                float f = floatValue;
                if (z) {
                    f = 1.0f - floatValue;
                }
                chartSeries.j = f;
                Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f10930d.getListeners().iterator();
                while (it2.hasNext()) {
                    it2.next().a();
                }
            }
        });
        this.f10928b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                decoEvent.getEventType();
                DecoEvent.EventType eventType = DecoEvent.EventType.EVENT_EFFECT;
            }
        });
        this.f10928b.start();
    }

    public boolean a(Canvas canvas, RectF rectF) {
        if (!this.f10927a) {
            return true;
        }
        if (rectF == null || rectF.isEmpty()) {
            throw new IllegalArgumentException("Drawing bounds can not be null or empty");
        }
        RectF rectF2 = this.k;
        if (rectF2 == null || !rectF2.equals(rectF)) {
            this.k = new RectF(rectF);
            this.l = new RectF(rectF);
            if (this.f10930d.getInset() != null) {
                this.l.inset(this.f10930d.getInset().x, this.f10930d.getInset().y);
            }
            a();
        }
        if (this.e == DecoEvent.EventType.EVENT_EFFECT) {
            DecoDrawEffect decoDrawEffect = this.f;
            if (decoDrawEffect == null) {
                return true;
            }
            RectF rectF3 = this.l;
            float f = this.j;
            float f2 = this.m;
            float f3 = this.n;
            int i = DecoDrawEffect.AnonymousClass1.f10953a[decoDrawEffect.f10949a.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    decoDrawEffect.b(canvas, rectF3, f);
                    decoDrawEffect.a(canvas, rectF3, f);
                    return true;
                } else if (i != 3 && i != 4 && i != 5) {
                    return true;
                } else {
                    decoDrawEffect.a(canvas, rectF3, f, f2, f3);
                    return true;
                }
            } else if (f <= 0.6f) {
                decoDrawEffect.a(canvas, rectF3, f * 1.6666666f, f2, f3);
                return true;
            } else {
                float f4 = (f - 0.6f) / 0.39999998f;
                decoDrawEffect.b(canvas, rectF3, f4);
                decoDrawEffect.a(canvas, rectF3, f4);
                return true;
            }
        } else {
            if (this.e == DecoEvent.EventType.EVENT_HIDE || this.e == DecoEvent.EventType.EVENT_SHOW) {
                float lineWidth = this.f10930d.getLineWidth();
                float f5 = this.j;
                if (f5 > BitmapDescriptorFactory.HUE_RED) {
                    lineWidth *= 1.0f - f5;
                    this.o.setAlpha((int) (Color.alpha(this.f10930d.getColor()) * (1.0f - this.j)));
                } else {
                    this.o.setAlpha(Color.alpha(this.f10930d.getColor()));
                }
                this.o.setStrokeWidth(lineWidth);
            } else if (this.f10930d.getLineWidth() != this.o.getStrokeWidth()) {
                this.o.setStrokeWidth(this.f10930d.getLineWidth());
            }
            ColorAnimate colorAnimate = this.p;
            if (colorAnimate != null) {
                Paint paint = this.o;
                float f6 = this.j;
                colorAnimate.f10947c = Color.argb(colorAnimate.a(1, Color.alpha(colorAnimate.f10945a), Color.alpha(colorAnimate.f10946b), f6), colorAnimate.a(2, Color.red(colorAnimate.f10945a), Color.red(colorAnimate.f10946b), f6), colorAnimate.a(4, Color.green(colorAnimate.f10945a), Color.green(colorAnimate.f10946b), f6), colorAnimate.a(8, Color.blue(colorAnimate.f10945a), Color.blue(colorAnimate.f10946b), f6));
                paint.setColor(colorAnimate.f10947c);
                return false;
            } else if (this.o.getColor() == getSeriesItem().getColor()) {
                return false;
            } else {
                this.o.setColor(getSeriesItem().getColor());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float b(float f) {
        return (this.m + (f - getMinSweepAngle())) % 360.0f;
    }

    public final void b() {
        this.e = DecoEvent.EventType.EVENT_MOVE;
        this.f10927a = this.f10930d.getInitialVisibility();
        c();
        this.g = this.f10930d.getMinValue();
        this.h = this.f10930d.getInitialValue();
        this.i = this.f10930d.getInitialValue();
        this.j = 1.0f;
        Paint paint = new Paint();
        this.o = paint;
        paint.setColor(this.f10930d.getColor());
        this.o.setStyle(this.f10930d.getChartStyle() == SeriesItem.ChartStyle.STYLE_DONUT ? Paint.Style.STROKE : Paint.Style.FILL);
        this.o.setStrokeWidth(this.f10930d.getLineWidth());
        this.o.setStrokeCap(this.f10930d.getRoundCap() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        this.o.setAntiAlias(true);
        if (this.f10930d.getShadowSize() > BitmapDescriptorFactory.HUE_RED) {
            this.o.setShadowLayer(this.f10930d.getShadowSize(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f10930d.getShadowColor());
        }
        this.k = null;
        Iterator<SeriesItem.SeriesItemListener> it2 = this.f10930d.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().a(this.i);
        }
    }

    public final void b(final DecoEvent decoEvent) {
        c();
        this.f10927a = true;
        this.e = decoEvent.getEventType();
        this.j = BitmapDescriptorFactory.HUE_RED;
        if (decoEvent.isColorSet()) {
            this.p = new ColorAnimate(this.f10930d.getColor(), decoEvent.getColor());
            this.f10930d.setColor(decoEvent.getColor());
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f10928b = ofFloat;
            ofFloat.setDuration(decoEvent.getEffectDuration());
            if (decoEvent.getInterpolator() != null) {
                this.f10928b.setInterpolator(decoEvent.getInterpolator());
            } else {
                this.f10928b.setInterpolator(new LinearInterpolator());
            }
            this.f10928b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChartSeries.this.j = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                    Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f10930d.getListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().a();
                    }
                }
            });
            this.f10928b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }
            });
            this.f10928b.start();
            return;
        }
        Log.w(this.f10929c, "Must set new color to start CHANGE_COLOR event");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float c(float f) {
        float f2 = f;
        if (Math.abs(f) < getMinSweepAngle()) {
            f2 = f;
            if (getSeriesItem().f10962a) {
                f2 = getMinSweepAngle();
            }
        }
        return f2;
    }

    public final void c(final DecoEvent decoEvent) throws IllegalStateException {
        if (decoEvent.getEffectType() != null) {
            c();
            this.f10927a = true;
            this.e = decoEvent.getEventType();
            DecoDrawEffect decoDrawEffect = new DecoDrawEffect(decoEvent.getEffectType(), this.o, decoEvent.getDisplayText());
            this.f = decoDrawEffect;
            decoDrawEffect.setRotationCount(decoEvent.getEffectRotations());
            this.j = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f10928b = ofFloat;
            ofFloat.setDuration(decoEvent.getEffectDuration());
            this.f10928b.setInterpolator(decoEvent.getInterpolator() != null ? decoEvent.getInterpolator() : new LinearInterpolator());
            this.f10928b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChartSeries.this.j = Float.valueOf(valueAnimator.getAnimatedValue().toString()).floatValue();
                    Iterator<SeriesItem.SeriesItemListener> it2 = ChartSeries.this.f10930d.getListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().a();
                    }
                }
            });
            this.f10928b.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.analytics.graph.charts.ChartSeries.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChartSeries.this.e = DecoEvent.EventType.EVENT_MOVE;
                    ChartSeries chartSeries = ChartSeries.this;
                    DecoDrawEffect decoDrawEffect2 = chartSeries.f;
                    chartSeries.f10927a = decoDrawEffect2.f10949a == DecoDrawEffect.EffectType.EFFECT_SPIRAL_OUT || decoDrawEffect2.f10949a == DecoDrawEffect.EffectType.EFFECT_SPIRAL_OUT_FILL;
                    ChartSeries.this.f = null;
                }
            });
            this.f10928b.start();
            return;
        }
        throw new IllegalStateException("Unable to execute null effect type");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getMinSweepAngle() {
        if (!this.f10930d.f10962a || this.f10930d.getChartStyle() == SeriesItem.ChartStyle.STYLE_PIE) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (this.o.getStrokeCap() == Paint.Cap.ROUND) {
        }
        return 0.1f;
    }

    public float getPositionPercent() {
        return this.i / (this.f10930d.getMaxValue() - this.f10930d.getMinValue());
    }

    public SeriesItem getSeriesItem() {
        return this.f10930d;
    }

    public boolean isVisible() {
        return this.f10927a;
    }

    public void setupView(int i, int i2) {
        if (i < 0 || i > 360) {
            throw new IllegalArgumentException("Total angle of view must be in the range 0..360");
        } else if (i2 < 0 || i2 > 360) {
            throw new IllegalArgumentException("Rotate angle of view must be in the range 0..360");
        } else {
            this.m = i2;
            this.n = i;
            if (!this.f10930d.getSpinClockwise()) {
                this.m = (this.m + this.n) % 360;
            }
            this.k = null;
        }
    }
}
