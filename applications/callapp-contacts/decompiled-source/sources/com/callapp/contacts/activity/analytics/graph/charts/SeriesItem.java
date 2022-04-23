package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Color;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem.class */
public class SeriesItem {

    /* renamed from: a  reason: collision with root package name */
    final boolean f10962a;

    /* renamed from: b  reason: collision with root package name */
    private int f10963b;

    /* renamed from: c  reason: collision with root package name */
    private int f10964c;

    /* renamed from: d  reason: collision with root package name */
    private float f10965d;
    private final long e;
    private final float f;
    private final float g;
    private final float h;
    private final float i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final ChartStyle n;
    private final Interpolator o;
    private PointF p;
    private ArrayList<EdgeDetail> q;
    private SeriesLabel r;
    private float s;
    private int t;
    private ArrayList<SeriesItemListener> u;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public float f10966a;

        /* renamed from: b  reason: collision with root package name */
        public long f10967b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f10968c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f10969d;
        public ChartStyle e;
        public Interpolator f;
        public PointF g;
        private int h;
        private int i;
        private float j;
        private float k;
        private float l;
        private float m;
        private boolean n;
        private boolean o;
        private boolean p;
        private ArrayList<EdgeDetail> q;
        private SeriesLabel r;
        private float s;
        private int t;

        public Builder(int i) {
            this.h = Color.argb(255, 32, 32, 32);
            this.i = Color.argb(0, 0, 0, 0);
            this.f10966a = -1.0f;
            this.f10967b = 5000L;
            this.k = 100.0f;
            this.n = true;
            this.f10968c = true;
            this.f10969d = true;
            this.e = ChartStyle.STYLE_DONUT;
            this.p = true;
            this.s = BitmapDescriptorFactory.HUE_RED;
            this.t = -16777216;
            this.h = i;
        }

        public Builder(int i, int i2) {
            this.h = Color.argb(255, 32, 32, 32);
            this.i = Color.argb(0, 0, 0, 0);
            this.f10966a = -1.0f;
            this.f10967b = 5000L;
            this.k = 100.0f;
            this.n = true;
            this.f10968c = true;
            this.f10969d = true;
            this.e = ChartStyle.STYLE_DONUT;
            this.p = true;
            this.s = BitmapDescriptorFactory.HUE_RED;
            this.t = -16777216;
            this.h = i;
            this.i = i2;
        }

        public final Builder a(float f, float f2, float f3, float f4) {
            if (f >= f2) {
                throw new IllegalArgumentException("minimum value must be less that maximum value");
            } else if (f > f3 || f2 < f3) {
                throw new IllegalArgumentException("Initial value must be in the range of min .. max");
            } else {
                this.j = f;
                this.k = f2;
                this.l = f3;
                this.m = f4;
                return this;
            }
        }

        public final SeriesItem a() {
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
        void a();

        void a(float f);
    }

    private SeriesItem(Builder builder) {
        this.f10963b = builder.h;
        this.f10964c = builder.i;
        this.f10965d = builder.f10966a;
        this.e = builder.f10967b;
        this.f = builder.j;
        this.g = builder.k;
        this.h = builder.l;
        this.i = builder.m;
        this.j = builder.n;
        this.k = builder.f10968c;
        this.l = builder.f10969d;
        this.m = builder.o;
        this.n = builder.e;
        this.o = builder.f;
        this.f10962a = builder.p;
        this.p = builder.g;
        this.q = builder.q;
        this.r = builder.r;
        this.s = builder.s;
        this.t = builder.t;
    }

    public final void a(SeriesItemListener seriesItemListener) {
        if (this.u == null) {
            this.u = new ArrayList<>();
        }
        this.u.add(seriesItemListener);
    }

    public ChartStyle getChartStyle() {
        return this.n;
    }

    public int getColor() {
        return this.f10963b;
    }

    public boolean getDrawAsPoint() {
        return this.m;
    }

    public ArrayList<EdgeDetail> getEdgeDetail() {
        return this.q;
    }

    public float getInitialValue() {
        return this.h;
    }

    public boolean getInitialVisibility() {
        return this.j;
    }

    public PointF getInset() {
        if (this.p == null) {
            this.p = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        return this.p;
    }

    public Interpolator getInterpolator() {
        return this.o;
    }

    public float getLineWidth() {
        return this.f10965d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<SeriesItemListener> getListeners() {
        return this.u;
    }

    public float getMaxValue() {
        return this.g;
    }

    public float getMinValue() {
        return this.f;
    }

    public boolean getRoundCap() {
        return this.l;
    }

    public int getSecondaryColor() {
        return this.f10964c;
    }

    public SeriesLabel getSeriesLabel() {
        return this.r;
    }

    public int getShadowColor() {
        return this.t;
    }

    public float getShadowSize() {
        return this.s;
    }

    public boolean getSpinClockwise() {
        return this.k;
    }

    public long getSpinDuration() {
        return this.e;
    }

    public float getTargetValue() {
        return this.i;
    }

    public void setColor(int i) {
        this.f10963b = i;
    }

    public void setLineWidth(float f) {
        this.f10965d = f;
    }
}
