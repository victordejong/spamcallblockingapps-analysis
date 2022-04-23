package com.callapp.contacts.activity.analytics.graph;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.callapp.contacts.R;
import com.callapp.contacts.activity.analytics.graph.charts.ChartSeries;
import com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect;
import com.callapp.contacts.activity.analytics.graph.charts.LineArcSeries;
import com.callapp.contacts.activity.analytics.graph.charts.LineSeries;
import com.callapp.contacts.activity.analytics.graph.charts.PieSeries;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
import com.callapp.contacts.activity.analytics.graph.events.DecoEvent;
import com.callapp.contacts.activity.analytics.graph.events.DecoEventManager;
import com.callapp.contacts.activity.analytics.graph.util.GenericFunctions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/DecoView.class */
public class DecoView extends View implements DecoEventManager.ArcEventManagerListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f10919a;

    /* renamed from: b  reason: collision with root package name */
    private VertGravity f10920b;

    /* renamed from: c  reason: collision with root package name */
    private HorizGravity f10921c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<ChartSeries> f10922d;
    private int e;
    private int f;
    private RectF g;
    private float h;
    private int i;
    private int j;
    private DecoEventManager k;
    private float[] l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.analytics.graph.DecoView$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/DecoView$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10924a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[SeriesItem.ChartStyle.values().length];
            f10924a = iArr;
            try {
                iArr[SeriesItem.ChartStyle.STYLE_DONUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10924a[SeriesItem.ChartStyle.STYLE_PIE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10924a[SeriesItem.ChartStyle.STYLE_LINE_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10924a[SeriesItem.ChartStyle.STYLE_LINE_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity.class */
    public enum HorizGravity {
        GRAVITY_HORIZONTAL_LEFT,
        GRAVITY_HORIZONTAL_CENTER,
        GRAVITY_HORIZONTAL_RIGHT,
        GRAVITY_HORIZONTAL_FILL
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/DecoView$VertGravity.class */
    public enum VertGravity {
        GRAVITY_VERTICAL_TOP,
        GRAVITY_VERTICAL_CENTER,
        GRAVITY_VERTICAL_BOTTOM,
        GRAVITY_VERTICAL_FILL
    }

    public DecoView(Context context) {
        super(context);
        this.f10919a = getClass().getSimpleName();
        this.f10920b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f10921c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.e = -1;
        this.f = -1;
        this.h = 30.0f;
        this.j = 360;
        b();
    }

    /* JADX WARN: Finally extract failed */
    public DecoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10919a = getClass().getSimpleName();
        this.f10920b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f10921c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.e = -1;
        this.f = -1;
        this.h = 30.0f;
        this.j = 360;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DecoView, 0, 0);
        try {
            this.h = obtainStyledAttributes.getDimension(2, 30.0f);
            int i = obtainStyledAttributes.getInt(3, 0);
            this.j = obtainStyledAttributes.getInt(4, 360);
            this.f10920b = VertGravity.values()[obtainStyledAttributes.getInt(1, VertGravity.GRAVITY_VERTICAL_CENTER.ordinal())];
            this.f10921c = HorizGravity.values()[obtainStyledAttributes.getInt(0, HorizGravity.GRAVITY_HORIZONTAL_CENTER.ordinal())];
            obtainStyledAttributes.recycle();
            a(this.j, i);
            b();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public DecoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10919a = getClass().getSimpleName();
        this.f10920b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f10921c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.e = -1;
        this.f = -1;
        this.h = 30.0f;
        this.j = 360;
        b();
    }

    private void a(int i, int i2) {
        if (i > 0) {
            this.j = i;
            this.i = (i2 + 270) % 360;
            if (i < 360) {
                this.i = ((((360 - i) / 2) + 90) + i2) % 360;
            }
            ArrayList<ChartSeries> arrayList = this.f10922d;
            if (arrayList != null) {
                Iterator<ChartSeries> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().setupView(this.j, this.i);
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Total angle of the arc must be > 0");
    }

    private void b() {
        getContext();
        GenericFunctions.a();
        e();
        c();
    }

    private boolean b(DecoEvent decoEvent) {
        if (!(decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW || decoEvent.getEventType() == DecoEvent.EventType.EVENT_HIDE)) {
            return false;
        }
        if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW) {
            setVisibility(0);
        }
        if (this.f10922d == null) {
            return true;
        }
        for (int i = 0; i < this.f10922d.size(); i++) {
            if (decoEvent.getIndexPosition() == i || decoEvent.getIndexPosition() < 0) {
                this.f10922d.get(i).a(decoEvent, decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW);
            }
        }
        return true;
    }

    private void c() {
        if (isInEditMode()) {
            SeriesItem.Builder a2 = new SeriesItem.Builder(Color.argb(255, 218, 218, 218)).a(BitmapDescriptorFactory.HUE_RED, 100.0f, 100.0f, BitmapDescriptorFactory.HUE_RED);
            a2.f10966a = this.h;
            a(a2.a());
            SeriesItem.Builder a3 = new SeriesItem.Builder(Color.argb(255, 255, 64, 64)).a(BitmapDescriptorFactory.HUE_RED, 100.0f, 25.0f, BitmapDescriptorFactory.HUE_RED);
            a3.f10966a = this.h;
            a(a3.a());
        }
    }

    private boolean c(DecoEvent decoEvent) {
        if (decoEvent.getEventType() != DecoEvent.EventType.EVENT_EFFECT || this.f10922d == null) {
            return false;
        }
        if (decoEvent.getIndexPosition() < 0) {
            String str = this.f10919a;
            Log.e(str, "EffectType " + decoEvent.getEventType().toString() + " must specify valid data series index");
            return false;
        } else if (decoEvent.getEffectType() == DecoDrawEffect.EffectType.EFFECT_SPIRAL_EXPLODE) {
            for (int i = 0; i < this.f10922d.size(); i++) {
                ChartSeries chartSeries = this.f10922d.get(i);
                if (i != decoEvent.getIndexPosition()) {
                    chartSeries.a(decoEvent, false);
                } else {
                    chartSeries.c(decoEvent);
                }
            }
            return true;
        } else {
            for (int i2 = 0; i2 < this.f10922d.size(); i2++) {
                if (decoEvent.getIndexPosition() == i2 || decoEvent.getIndexPosition() < 0) {
                    this.f10922d.get(i2).c(decoEvent);
                }
            }
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.graph.DecoView.d():void");
    }

    private void e() {
        if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    private float getLabelPosition(int i) {
        ChartSeries chartSeries = this.f10922d.get(i);
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i2 = i + 1; i2 < this.f10922d.size(); i2++) {
            ChartSeries chartSeries2 = this.f10922d.get(i2);
            f = f;
            if (chartSeries2.isVisible()) {
                f = f;
                if (f < chartSeries2.getPositionPercent()) {
                    f = chartSeries2.getPositionPercent();
                }
            }
        }
        if (f >= chartSeries.getPositionPercent()) {
            return -1.0f;
        }
        float positionPercent = (((chartSeries.getPositionPercent() + f) / 2.0f) * (this.j / 360.0f)) + ((this.i + 90.0f) / 360.0f);
        while (positionPercent > 1.0f) {
            positionPercent -= 1.0f;
        }
        return positionPercent;
    }

    private float getWidestLine() {
        ArrayList<ChartSeries> arrayList = this.f10922d;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (arrayList == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        Iterator<ChartSeries> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            f = Math.max(it2.next().getSeriesItem().getLineWidth(), f);
        }
        return f;
    }

    public final int a(SeriesItem seriesItem) {
        LineSeries lineSeries;
        if (this.f10922d == null) {
            this.f10922d = new ArrayList<>();
        }
        seriesItem.a(new SeriesItem.SeriesItemListener() { // from class: com.callapp.contacts.activity.analytics.graph.DecoView.1
            @Override // com.callapp.contacts.activity.analytics.graph.charts.SeriesItem.SeriesItemListener
            public final void a() {
                DecoView.this.invalidate();
            }

            @Override // com.callapp.contacts.activity.analytics.graph.charts.SeriesItem.SeriesItemListener
            public final void a(float f) {
                DecoView.this.invalidate();
            }
        });
        if (seriesItem.getLineWidth() < BitmapDescriptorFactory.HUE_RED) {
            seriesItem.setLineWidth(this.h);
        }
        int i = AnonymousClass2.f10924a[seriesItem.getChartStyle().ordinal()];
        if (i == 1) {
            lineSeries = new LineArcSeries(seriesItem, this.j, this.i);
        } else if (i == 2) {
            lineSeries = new PieSeries(seriesItem, this.j, this.i);
        } else if (i == 3 || i == 4) {
            Log.w(this.f10919a, "STYLE_LINE_* is currently experimental");
            LineSeries lineSeries2 = new LineSeries(seriesItem, this.j, this.i);
            lineSeries2.setHorizGravity(this.f10921c);
            lineSeries2.setVertGravity(this.f10920b);
            lineSeries = lineSeries2;
        } else {
            throw new IllegalStateException("Chart Style not implemented");
        }
        ArrayList<ChartSeries> arrayList = this.f10922d;
        arrayList.add(arrayList.size(), lineSeries);
        this.l = new float[this.f10922d.size()];
        d();
        return this.f10922d.size() - 1;
    }

    public final void a() {
        DecoEventManager decoEventManager = this.k;
        if (decoEventManager != null) {
            decoEventManager.a();
        }
        ArrayList<ChartSeries> arrayList = this.f10922d;
        if (arrayList != null) {
            Iterator<ChartSeries> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        }
    }

    @Override // com.callapp.contacts.activity.analytics.graph.events.DecoEventManager.ArcEventManagerListener
    public final void a(DecoEvent decoEvent) {
        ArrayList<ChartSeries> arrayList;
        if ((decoEvent.getEventType() == DecoEvent.EventType.EVENT_MOVE || decoEvent.getEventType() == DecoEvent.EventType.EVENT_COLOR_CHANGE) && (arrayList = this.f10922d) != null) {
            if (arrayList.size() > decoEvent.getIndexPosition()) {
                int indexPosition = decoEvent.getIndexPosition();
                if (indexPosition < 0 || indexPosition >= this.f10922d.size()) {
                    String str = this.f10919a;
                    Log.e(str, "Ignoring move request: Invalid array index. Index: " + indexPosition + " Size: " + this.f10922d.size());
                } else {
                    ChartSeries chartSeries = this.f10922d.get(decoEvent.getIndexPosition());
                    if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_COLOR_CHANGE) {
                        chartSeries.b(decoEvent);
                    } else {
                        chartSeries.a(decoEvent);
                    }
                }
            } else {
                throw new IllegalArgumentException("Invalid index: Position out of range (Index: " + decoEvent.getIndexPosition() + " Series Count: " + this.f10922d.size() + ")");
            }
        }
        b(decoEvent);
        c(decoEvent);
    }

    public ChartSeries getChartSeries(int i) {
        if (i < 0 || i >= this.f10922d.size()) {
            return null;
        }
        return this.f10922d.get(i);
    }

    public DecoEventManager getEventManager() {
        if (this.k == null) {
            this.k = new DecoEventManager(this);
        }
        return this.k;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DecoEventManager decoEventManager = this.k;
        if (decoEventManager != null) {
            decoEventManager.a();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.g;
        if (rectF != null && !rectF.isEmpty() && this.f10922d != null) {
            int i = 0;
            boolean z = true;
            for (int i2 = 0; i2 < this.f10922d.size(); i2++) {
                ChartSeries chartSeries = this.f10922d.get(i2);
                chartSeries.a(canvas, this.g);
                z &= !chartSeries.isVisible() || chartSeries.getSeriesItem().getSpinClockwise();
                this.l[i2] = getLabelPosition(i2);
            }
            if (z) {
                while (true) {
                    float[] fArr = this.l;
                    if (i < fArr.length) {
                        if (fArr[i] >= BitmapDescriptorFactory.HUE_RED) {
                            this.f10922d.get(i).a(canvas, this.g, this.l[i]);
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.e = i;
        this.f = i2;
        d();
    }

    public void setHorizGravity(HorizGravity horizGravity) {
        this.f10921c = horizGravity;
    }

    public void setVertGravity(VertGravity vertGravity) {
        this.f10920b = vertGravity;
    }
}
