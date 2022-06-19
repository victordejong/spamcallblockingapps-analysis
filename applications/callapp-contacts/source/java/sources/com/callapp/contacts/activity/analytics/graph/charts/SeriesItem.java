package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Color;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem.class */
public class SeriesItem {

    /* renamed from: a */
    final boolean f20042a;

    /* renamed from: b */
    private int f20043b;

    /* renamed from: c */
    private int f20044c;

    /* renamed from: d */
    private float f20045d;

    /* renamed from: e */
    private final long f20046e;

    /* renamed from: f */
    private final float f20047f;

    /* renamed from: g */
    private final float f20048g;

    /* renamed from: h */
    private final float f20049h;

    /* renamed from: i */
    private final float f20050i;

    /* renamed from: j */
    private final boolean f20051j;

    /* renamed from: k */
    private final boolean f20052k;

    /* renamed from: l */
    private final boolean f20053l;

    /* renamed from: m */
    private final boolean f20054m;

    /* renamed from: n */
    private final ChartStyle f20055n;

    /* renamed from: o */
    private final Interpolator f20056o;

    /* renamed from: p */
    private PointF f20057p;

    /* renamed from: q */
    private ArrayList<EdgeDetail> f20058q;

    /* renamed from: r */
    private SeriesLabel f20059r;

    /* renamed from: s */
    private float f20060s;

    /* renamed from: t */
    private int f20061t;

    /* renamed from: u */
    private ArrayList<SeriesItemListener> f20062u;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public float f20063a;

        /* renamed from: b */
        public long f20064b;

        /* renamed from: c */
        public boolean f20065c;

        /* renamed from: d */
        public boolean f20066d;

        /* renamed from: e */
        public ChartStyle f20067e;

        /* renamed from: f */
        public Interpolator f20068f;

        /* renamed from: g */
        public PointF f20069g;

        /* renamed from: h */
        private int f20070h;

        /* renamed from: i */
        private int f20071i;

        /* renamed from: j */
        private float f20072j;

        /* renamed from: k */
        private float f20073k;

        /* renamed from: l */
        private float f20074l;

        /* renamed from: m */
        private float f20075m;

        /* renamed from: n */
        private boolean f20076n;

        /* renamed from: o */
        private boolean f20077o;

        /* renamed from: p */
        private boolean f20078p;

        /* renamed from: q */
        private ArrayList<EdgeDetail> f20079q;

        /* renamed from: r */
        private SeriesLabel f20080r;

        /* renamed from: s */
        private float f20081s;

        /* renamed from: t */
        private int f20082t;

        public Builder(int i) {
            this.f20070h = Color.argb(255, 32, 32, 32);
            this.f20071i = Color.argb(0, 0, 0, 0);
            this.f20063a = -1.0f;
            this.f20064b = 5000L;
            this.f20073k = 100.0f;
            this.f20076n = true;
            this.f20065c = true;
            this.f20066d = true;
            this.f20067e = ChartStyle.STYLE_DONUT;
            this.f20078p = true;
            this.f20081s = BitmapDescriptorFactory.HUE_RED;
            this.f20082t = -16777216;
            this.f20070h = i;
        }

        public Builder(int i, int i2) {
            this.f20070h = Color.argb(255, 32, 32, 32);
            this.f20071i = Color.argb(0, 0, 0, 0);
            this.f20063a = -1.0f;
            this.f20064b = 5000L;
            this.f20073k = 100.0f;
            this.f20076n = true;
            this.f20065c = true;
            this.f20066d = true;
            this.f20067e = ChartStyle.STYLE_DONUT;
            this.f20078p = true;
            this.f20081s = BitmapDescriptorFactory.HUE_RED;
            this.f20082t = -16777216;
            this.f20070h = i;
            this.f20071i = i2;
        }

        /* renamed from: a */
        public final Builder m31578a(float f, float f2, float f3, float f4) {
            if (f < f2) {
                if (f > f3 || f2 < f3) {
                    throw new IllegalArgumentException("Initial value must be in the range of min .. max");
                }
                this.f20072j = f;
                this.f20073k = f2;
                this.f20074l = f3;
                this.f20075m = f4;
                return this;
            }
            throw new IllegalArgumentException("minimum value must be less that maximum value");
        }

        /* renamed from: a */
        public final SeriesItem m31579a() {
            return new SeriesItem(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle.class */
    public enum ChartStyle {
        STYLE_DONUT,
        STYLE_PIE,
        STYLE_LINE_HORIZONTAL,
        STYLE_LINE_VERTICAL
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener.class */
    public interface SeriesItemListener {
        /* renamed from: a */
        void mo31557a();

        /* renamed from: a */
        void mo31556a(float f);
    }

    private SeriesItem(Builder builder) {
        this.f20043b = builder.f20070h;
        this.f20044c = builder.f20071i;
        this.f20045d = builder.f20063a;
        this.f20046e = builder.f20064b;
        this.f20047f = builder.f20072j;
        this.f20048g = builder.f20073k;
        this.f20049h = builder.f20074l;
        this.f20050i = builder.f20075m;
        this.f20051j = builder.f20076n;
        this.f20052k = builder.f20065c;
        this.f20053l = builder.f20066d;
        this.f20054m = builder.f20077o;
        this.f20055n = builder.f20067e;
        this.f20056o = builder.f20068f;
        this.f20042a = builder.f20078p;
        this.f20057p = builder.f20069g;
        this.f20058q = builder.f20079q;
        this.f20059r = builder.f20080r;
        this.f20060s = builder.f20081s;
        this.f20061t = builder.f20082t;
    }

    /* renamed from: a */
    public final void m31580a(SeriesItemListener seriesItemListener) {
        if (this.f20062u == null) {
            this.f20062u = new ArrayList<>();
        }
        this.f20062u.add(seriesItemListener);
    }

    public ChartStyle getChartStyle() {
        return this.f20055n;
    }

    public int getColor() {
        return this.f20043b;
    }

    public boolean getDrawAsPoint() {
        return this.f20054m;
    }

    public ArrayList<EdgeDetail> getEdgeDetail() {
        return this.f20058q;
    }

    public float getInitialValue() {
        return this.f20049h;
    }

    public boolean getInitialVisibility() {
        return this.f20051j;
    }

    public PointF getInset() {
        if (this.f20057p == null) {
            this.f20057p = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        return this.f20057p;
    }

    public Interpolator getInterpolator() {
        return this.f20056o;
    }

    public float getLineWidth() {
        return this.f20045d;
    }

    public ArrayList<SeriesItemListener> getListeners() {
        return this.f20062u;
    }

    public float getMaxValue() {
        return this.f20048g;
    }

    public float getMinValue() {
        return this.f20047f;
    }

    public boolean getRoundCap() {
        return this.f20053l;
    }

    public int getSecondaryColor() {
        return this.f20044c;
    }

    public SeriesLabel getSeriesLabel() {
        return this.f20059r;
    }

    public int getShadowColor() {
        return this.f20061t;
    }

    public float getShadowSize() {
        return this.f20060s;
    }

    public boolean getSpinClockwise() {
        return this.f20052k;
    }

    public long getSpinDuration() {
        return this.f20046e;
    }

    public float getTargetValue() {
        return this.f20050i;
    }

    public void setColor(int i) {
        this.f20043b = i;
    }

    public void setLineWidth(float f) {
        this.f20045d = f;
    }
}
