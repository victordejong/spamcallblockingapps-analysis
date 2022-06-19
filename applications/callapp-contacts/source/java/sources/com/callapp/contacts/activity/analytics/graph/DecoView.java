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
import com.callapp.contacts.C5563R;
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

    /* renamed from: a */
    private final String f19972a;

    /* renamed from: b */
    private VertGravity f19973b;

    /* renamed from: c */
    private HorizGravity f19974c;

    /* renamed from: d */
    private ArrayList<ChartSeries> f19975d;

    /* renamed from: e */
    private int f19976e;

    /* renamed from: f */
    private int f19977f;

    /* renamed from: g */
    private RectF f19978g;

    /* renamed from: h */
    private float f19979h;

    /* renamed from: i */
    private int f19980i;

    /* renamed from: j */
    private int f19981j;

    /* renamed from: k */
    private DecoEventManager f19982k;

    /* renamed from: l */
    private float[] f19983l;

    /* renamed from: com.callapp.contacts.activity.analytics.graph.DecoView$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/DecoView$2.class */
    public static /* synthetic */ class C57502 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19985a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[SeriesItem.ChartStyle.values().length];
            f19985a = iArr;
            try {
                iArr[SeriesItem.ChartStyle.STYLE_DONUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19985a[SeriesItem.ChartStyle.STYLE_PIE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19985a[SeriesItem.ChartStyle.STYLE_LINE_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19985a[SeriesItem.ChartStyle.STYLE_LINE_VERTICAL.ordinal()] = 4;
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
        this.f19972a = getClass().getSimpleName();
        this.f19973b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f19974c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.f19976e = -1;
        this.f19977f = -1;
        this.f19979h = 30.0f;
        this.f19981j = 360;
        m31608b();
    }

    /* JADX WARN: Finally extract failed */
    public DecoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19972a = getClass().getSimpleName();
        this.f19973b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f19974c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.f19976e = -1;
        this.f19977f = -1;
        this.f19979h = 30.0f;
        this.f19981j = 360;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C5563R.styleable.DecoView, 0, 0);
        try {
            this.f19979h = obtainStyledAttributes.getDimension(2, 30.0f);
            int i = obtainStyledAttributes.getInt(3, 0);
            this.f19981j = obtainStyledAttributes.getInt(4, 360);
            this.f19973b = VertGravity.values()[obtainStyledAttributes.getInt(1, VertGravity.GRAVITY_VERTICAL_CENTER.ordinal())];
            this.f19974c = HorizGravity.values()[obtainStyledAttributes.getInt(0, HorizGravity.GRAVITY_HORIZONTAL_CENTER.ordinal())];
            obtainStyledAttributes.recycle();
            m31610a(this.f19981j, i);
            m31608b();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public DecoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19972a = getClass().getSimpleName();
        this.f19973b = VertGravity.GRAVITY_VERTICAL_CENTER;
        this.f19974c = HorizGravity.GRAVITY_HORIZONTAL_CENTER;
        this.f19976e = -1;
        this.f19977f = -1;
        this.f19979h = 30.0f;
        this.f19981j = 360;
        m31608b();
    }

    /* renamed from: a */
    private void m31610a(int i, int i2) {
        if (i > 0) {
            this.f19981j = i;
            this.f19980i = (i2 + 270) % 360;
            if (i < 360) {
                this.f19980i = ((((360 - i) / 2) + 90) + i2) % 360;
            }
            ArrayList<ChartSeries> arrayList = this.f19975d;
            if (arrayList == null) {
                return;
            }
            Iterator<ChartSeries> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().setupView(this.f19981j, this.f19980i);
            }
            return;
        }
        throw new IllegalArgumentException("Total angle of the arc must be > 0");
    }

    /* renamed from: b */
    private void m31608b() {
        getContext();
        GenericFunctions.m31532a();
        m31603e();
        m31606c();
    }

    /* renamed from: b */
    private boolean m31607b(DecoEvent decoEvent) {
        if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW || decoEvent.getEventType() == DecoEvent.EventType.EVENT_HIDE) {
            if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW) {
                setVisibility(0);
            }
            if (this.f19975d == null) {
                return true;
            }
            for (int i = 0; i < this.f19975d.size(); i++) {
                if (decoEvent.getIndexPosition() == i || decoEvent.getIndexPosition() < 0) {
                    this.f19975d.get(i).m31596a(decoEvent, decoEvent.getEventType() == DecoEvent.EventType.EVENT_SHOW);
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private void m31606c() {
        if (isInEditMode()) {
            SeriesItem.Builder m31578a = new SeriesItem.Builder(Color.argb(255, 218, 218, 218)).m31578a(BitmapDescriptorFactory.HUE_RED, 100.0f, 100.0f, BitmapDescriptorFactory.HUE_RED);
            m31578a.f20063a = this.f19979h;
            m31609a(m31578a.m31579a());
            SeriesItem.Builder m31578a2 = new SeriesItem.Builder(Color.argb(255, 255, 64, 64)).m31578a(BitmapDescriptorFactory.HUE_RED, 100.0f, 25.0f, BitmapDescriptorFactory.HUE_RED);
            m31578a2.f20063a = this.f19979h;
            m31609a(m31578a2.m31579a());
        }
    }

    /* renamed from: c */
    private boolean m31605c(DecoEvent decoEvent) {
        if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_EFFECT && this.f19975d != null) {
            if (decoEvent.getIndexPosition() < 0) {
                Log.e(this.f19972a, "EffectType " + decoEvent.getEventType().toString() + " must specify valid data series index");
                return false;
            } else if (decoEvent.getEffectType() != DecoDrawEffect.EffectType.EFFECT_SPIRAL_EXPLODE) {
                for (int i = 0; i < this.f19975d.size(); i++) {
                    if (decoEvent.getIndexPosition() == i || decoEvent.getIndexPosition() < 0) {
                        this.f19975d.get(i).m31590c(decoEvent);
                    }
                }
                return true;
            } else {
                for (int i2 = 0; i2 < this.f19975d.size(); i2++) {
                    ChartSeries chartSeries = this.f19975d.get(i2);
                    if (i2 != decoEvent.getIndexPosition()) {
                        chartSeries.m31596a(decoEvent, false);
                    } else {
                        chartSeries.m31590c(decoEvent);
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f6  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31604d() {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.graph.DecoView.m31604d():void");
    }

    /* renamed from: e */
    private void m31603e() {
        if (Build.VERSION.SDK_INT >= 18 || Build.VERSION.SDK_INT < 11) {
            return;
        }
        setLayerType(1, null);
    }

    private float getLabelPosition(int i) {
        float f;
        ChartSeries chartSeries = this.f19975d.get(i);
        int i2 = i + 1;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            f = f2;
            if (i2 >= this.f19975d.size()) {
                break;
            }
            ChartSeries chartSeries2 = this.f19975d.get(i2);
            float f3 = f;
            if (chartSeries2.isVisible()) {
                f3 = f;
                if (f < chartSeries2.getPositionPercent()) {
                    f3 = chartSeries2.getPositionPercent();
                }
            }
            i2++;
            f2 = f3;
        }
        if (f < chartSeries.getPositionPercent()) {
            float positionPercent = (((chartSeries.getPositionPercent() + f) / 2.0f) * (this.f19981j / 360.0f)) + ((this.f19980i + 90.0f) / 360.0f);
            while (true) {
                float f4 = positionPercent;
                if (f4 <= 1.0f) {
                    return f4;
                }
                positionPercent = f4 - 1.0f;
            }
        } else {
            return -1.0f;
        }
    }

    private float getWidestLine() {
        ArrayList<ChartSeries> arrayList = this.f19975d;
        float f = 0.0f;
        if (arrayList == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        Iterator<ChartSeries> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            f = Math.max(it2.next().getSeriesItem().getLineWidth(), f);
        }
        return f;
    }

    /* renamed from: a */
    public final int m31609a(SeriesItem seriesItem) {
        LineSeries lineSeries;
        if (this.f19975d == null) {
            this.f19975d = new ArrayList<>();
        }
        seriesItem.m31580a(new SeriesItem.SeriesItemListener() { // from class: com.callapp.contacts.activity.analytics.graph.DecoView.1
            @Override // com.callapp.contacts.activity.analytics.graph.charts.SeriesItem.SeriesItemListener
            /* renamed from: a */
            public final void mo31557a() {
                DecoView.this.invalidate();
            }

            @Override // com.callapp.contacts.activity.analytics.graph.charts.SeriesItem.SeriesItemListener
            /* renamed from: a */
            public final void mo31556a(float f) {
                DecoView.this.invalidate();
            }
        });
        if (seriesItem.getLineWidth() < BitmapDescriptorFactory.HUE_RED) {
            seriesItem.setLineWidth(this.f19979h);
        }
        int i = C57502.f19985a[seriesItem.getChartStyle().ordinal()];
        if (i == 1) {
            lineSeries = new LineArcSeries(seriesItem, this.f19981j, this.f19980i);
        } else if (i == 2) {
            lineSeries = new PieSeries(seriesItem, this.f19981j, this.f19980i);
        } else if (i != 3 && i != 4) {
            throw new IllegalStateException("Chart Style not implemented");
        } else {
            Log.w(this.f19972a, "STYLE_LINE_* is currently experimental");
            LineSeries lineSeries2 = new LineSeries(seriesItem, this.f19981j, this.f19980i);
            lineSeries2.setHorizGravity(this.f19974c);
            lineSeries2.setVertGravity(this.f19973b);
            lineSeries = lineSeries2;
        }
        ArrayList<ChartSeries> arrayList = this.f19975d;
        arrayList.add(arrayList.size(), lineSeries);
        this.f19983l = new float[this.f19975d.size()];
        m31604d();
        return this.f19975d.size() - 1;
    }

    /* renamed from: a */
    public final void m31611a() {
        DecoEventManager decoEventManager = this.f19982k;
        if (decoEventManager != null) {
            decoEventManager.m31535a();
        }
        ArrayList<ChartSeries> arrayList = this.f19975d;
        if (arrayList != null) {
            Iterator<ChartSeries> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().m31595b();
            }
        }
    }

    @Override // com.callapp.contacts.activity.analytics.graph.events.DecoEventManager.ArcEventManagerListener
    /* renamed from: a */
    public final void mo31533a(DecoEvent decoEvent) {
        ArrayList<ChartSeries> arrayList;
        if ((decoEvent.getEventType() == DecoEvent.EventType.EVENT_MOVE || decoEvent.getEventType() == DecoEvent.EventType.EVENT_COLOR_CHANGE) && (arrayList = this.f19975d) != null) {
            if (arrayList.size() <= decoEvent.getIndexPosition()) {
                throw new IllegalArgumentException("Invalid index: Position out of range (Index: " + decoEvent.getIndexPosition() + " Series Count: " + this.f19975d.size() + ")");
            }
            int indexPosition = decoEvent.getIndexPosition();
            if (indexPosition < 0 || indexPosition >= this.f19975d.size()) {
                String str = this.f19972a;
                Log.e(str, "Ignoring move request: Invalid array index. Index: " + indexPosition + " Size: " + this.f19975d.size());
            } else {
                ChartSeries chartSeries = this.f19975d.get(decoEvent.getIndexPosition());
                if (decoEvent.getEventType() == DecoEvent.EventType.EVENT_COLOR_CHANGE) {
                    chartSeries.m31593b(decoEvent);
                } else {
                    chartSeries.m31597a(decoEvent);
                }
            }
        }
        m31607b(decoEvent);
        m31605c(decoEvent);
    }

    public ChartSeries getChartSeries(int i) {
        if (i < 0 || i >= this.f19975d.size()) {
            return null;
        }
        return this.f19975d.get(i);
    }

    public DecoEventManager getEventManager() {
        if (this.f19982k == null) {
            this.f19982k = new DecoEventManager(this);
        }
        return this.f19982k;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DecoEventManager decoEventManager = this.f19982k;
        if (decoEventManager != null) {
            decoEventManager.m31535a();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.f19978g;
        if (rectF == null || rectF.isEmpty() || this.f19975d == null) {
            return;
        }
        boolean z = true;
        for (int i = 0; i < this.f19975d.size(); i++) {
            ChartSeries chartSeries = this.f19975d.get(i);
            chartSeries.mo31581a(canvas, this.f19978g);
            z &= !chartSeries.isVisible() || chartSeries.getSeriesItem().getSpinClockwise();
            this.f19983l[i] = getLabelPosition(i);
        }
        if (!z) {
            return;
        }
        int i2 = 0;
        while (true) {
            float[] fArr = this.f19983l;
            if (i2 >= fArr.length) {
                return;
            }
            if (fArr[i2] >= BitmapDescriptorFactory.HUE_RED) {
                this.f19975d.get(i2).m31600a(canvas, this.f19978g, this.f19983l[i2]);
            }
            i2++;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f19976e = i;
        this.f19977f = i2;
        m31604d();
    }

    public void setHorizGravity(HorizGravity horizGravity) {
        this.f19974c = horizGravity;
    }

    public void setVertGravity(VertGravity vertGravity) {
        this.f19973b = vertGravity;
    }
}
