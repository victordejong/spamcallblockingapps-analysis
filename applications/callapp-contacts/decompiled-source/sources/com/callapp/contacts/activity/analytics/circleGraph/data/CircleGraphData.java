package com.callapp.contacts.activity.analytics.circleGraph.data;

import android.graphics.PointF;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.internal.http2.Settings;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bG\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B§\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0015\u001a\u00020\f\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\f¢\u0006\u0002\u0010\u0019J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0011HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\fHÆ\u0003J\t\u0010O\u001a\u00020\u0017HÆ\u0003J\t\u0010P\u001a\u00020\fHÆ\u0003J\t\u0010Q\u001a\u00020\u0005HÆ\u0003J\t\u0010R\u001a\u00020\u0005HÆ\u0003J\t\u0010S\u001a\u00020\u0005HÆ\u0003J\t\u0010T\u001a\u00020\u0005HÆ\u0003J\t\u0010U\u001a\u00020\u0005HÆ\u0003J\t\u0010V\u001a\u00020\fHÆ\u0003J\t\u0010W\u001a\u00020\u000eHÆ\u0003J\u0010\u0010X\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010;J°\u0001\u0010Y\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010ZJ\u0013\u0010[\u001a\u00020\f2\b\u0010\\\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010]\u001a\u00020\u0003HÖ\u0001J\t\u0010^\u001a\u00020_HÖ\u0001R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u0010)\"\u0004\b3\u0010+R\u001a\u0010\u0018\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b8\u0010\u001b\"\u0004\b9\u0010\u001dR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010\u0015\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b?\u00105\"\u0004\b@\u00107R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bA\u0010)\"\u0004\bB\u0010+R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bC\u0010\u001b\"\u0004\bD\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bE\u00105\"\u0004\bF\u00107R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bG\u0010)\"\u0004\bH\u0010+¨\u0006`"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;", "", "color", "", "width", "", "(IF)V", "minRange", "maxRange", "initialRange", "targetRange", "updateProgress", "", VastIconXmlManager.DURATION, "", "speedDuration", "chartStyle", "Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;", "spaceMultiple", "textGravity", "backgroundColor", "spinClockwise", "inset", "Landroid/graphics/PointF;", "setPercentageSign", "(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)V", "getBackgroundColor", "()I", "setBackgroundColor", "(I)V", "getChartStyle", "()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;", "setChartStyle", "(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;)V", "getColor", "setColor", "getDuration", "()J", "setDuration", "(J)V", "getInitialRange", "()F", "setInitialRange", "(F)V", "getInset", "()Landroid/graphics/PointF;", "setInset", "(Landroid/graphics/PointF;)V", "getMaxRange", "setMaxRange", "getMinRange", "setMinRange", "getSetPercentageSign", "()Z", "setSetPercentageSign", "(Z)V", "getSpaceMultiple", "setSpaceMultiple", "getSpeedDuration", "()Ljava/lang/Long;", "setSpeedDuration", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getSpinClockwise", "setSpinClockwise", "getTargetRange", "setTargetRange", "getTextGravity", "setTextGravity", "getUpdateProgress", "setUpdateProgress", "getWidth", "setWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;", "equals", "other", "hashCode", "toString", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData.class */
public final class CircleGraphData {

    /* renamed from: a  reason: collision with root package name */
    private int f10872a;

    /* renamed from: b  reason: collision with root package name */
    private float f10873b;

    /* renamed from: c  reason: collision with root package name */
    private float f10874c;

    /* renamed from: d  reason: collision with root package name */
    private float f10875d;
    private float e;
    private float f;
    private boolean g;
    private long h;
    private Long i;
    private SeriesItem.ChartStyle j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private PointF o;
    private boolean p;

    public CircleGraphData() {
        this(0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, false, 0L, null, null, 0, 0, 0, false, null, false, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public CircleGraphData(int i, float f) {
        this(0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, false, 0L, null, null, 0, 0, 0, false, null, false, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        this.f10872a = i;
        this.f = f;
    }

    public CircleGraphData(int i, float f, float f2, float f3, float f4, float f5, boolean z, long j, Long l, SeriesItem.ChartStyle chartStyle, int i2, int i3, int i4, boolean z2, PointF inset, boolean z3) {
        p.d(chartStyle, "chartStyle");
        p.d(inset, "inset");
        this.f10872a = i;
        this.f10873b = f;
        this.f10874c = f2;
        this.f10875d = f3;
        this.e = f4;
        this.f = f5;
        this.g = z;
        this.h = j;
        this.i = l;
        this.j = chartStyle;
        this.k = i2;
        this.l = i3;
        this.m = i4;
        this.n = z2;
        this.o = inset;
        this.p = z3;
    }

    public /* synthetic */ CircleGraphData(int i, float f, float f2, float f3, float f4, float f5, boolean z, long j, Long l, SeriesItem.ChartStyle chartStyle, int i2, int i3, int i4, boolean z2, PointF pointF, boolean z3, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? BitmapDescriptorFactory.HUE_RED : f, (i5 & 4) != 0 ? 100.0f : f2, (i5 & 8) != 0 ? BitmapDescriptorFactory.HUE_RED : f3, (i5 & 16) != 0 ? BitmapDescriptorFactory.HUE_RED : f4, (i5 & 32) != 0 ? BitmapDescriptorFactory.HUE_RED : f5, (i5 & 64) != 0 ? false : z, (i5 & 128) != 0 ? 1L : j, (i5 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : l, (i5 & 512) != 0 ? SeriesItem.ChartStyle.STYLE_DONUT : chartStyle, (i5 & 1024) != 0 ? 0 : i2, (i5 & 2048) != 0 ? 17 : i3, (i5 & 4096) != 0 ? 0 : i4, (i5 & PropertyFlags.UNSIGNED) != 0 ? true : z2, (i5 & 16384) != 0 ? new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED) : pointF, (i5 & 32768) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CircleGraphData)) {
            return false;
        }
        CircleGraphData circleGraphData = (CircleGraphData) obj;
        return this.f10872a == circleGraphData.f10872a && Float.compare(this.f10873b, circleGraphData.f10873b) == 0 && Float.compare(this.f10874c, circleGraphData.f10874c) == 0 && Float.compare(this.f10875d, circleGraphData.f10875d) == 0 && Float.compare(this.e, circleGraphData.e) == 0 && Float.compare(this.f, circleGraphData.f) == 0 && this.g == circleGraphData.g && this.h == circleGraphData.h && p.a(this.i, circleGraphData.i) && p.a(this.j, circleGraphData.j) && this.k == circleGraphData.k && this.l == circleGraphData.l && this.m == circleGraphData.m && this.n == circleGraphData.n && p.a(this.o, circleGraphData.o) && this.p == circleGraphData.p;
    }

    public final SeriesItem.ChartStyle getChartStyle() {
        return this.j;
    }

    public final int getColor() {
        return this.f10872a;
    }

    public final float getInitialRange() {
        return this.f10875d;
    }

    public final PointF getInset() {
        return this.o;
    }

    public final float getMaxRange() {
        return this.f10874c;
    }

    public final float getMinRange() {
        return this.f10873b;
    }

    public final boolean getSetPercentageSign() {
        return this.p;
    }

    public final boolean getSpinClockwise() {
        return this.n;
    }

    public final float getTargetRange() {
        return this.e;
    }

    public final boolean getUpdateProgress() {
        return this.g;
    }

    public final float getWidth() {
        return this.f;
    }

    public final int hashCode() {
        int i = this.f10872a;
        int floatToIntBits = Float.floatToIntBits(this.f10873b);
        int floatToIntBits2 = Float.floatToIntBits(this.f10874c);
        int floatToIntBits3 = Float.floatToIntBits(this.f10875d);
        int floatToIntBits4 = Float.floatToIntBits(this.e);
        int floatToIntBits5 = Float.floatToIntBits(this.f);
        boolean z = this.g;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        int hashCode = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.h);
        Long l = this.i;
        int i4 = 0;
        int hashCode2 = l != null ? l.hashCode() : 0;
        SeriesItem.ChartStyle chartStyle = this.j;
        int hashCode3 = chartStyle != null ? chartStyle.hashCode() : 0;
        int i5 = this.k;
        int i6 = this.l;
        int i7 = this.m;
        boolean z2 = this.n;
        int i8 = z2 ? 1 : 0;
        if (z2) {
            i8 = 1;
        }
        PointF pointF = this.o;
        if (pointF != null) {
            i4 = pointF.hashCode();
        }
        boolean z3 = this.p;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((((((((((((((((i * 31) + floatToIntBits) * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + i3) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i4) * 31) + i2;
    }

    public final void setChartStyle(SeriesItem.ChartStyle chartStyle) {
        p.d(chartStyle, "<set-?>");
        this.j = chartStyle;
    }

    public final void setInitialRange(float f) {
        this.f10875d = f;
    }

    public final void setInset(PointF pointF) {
        p.d(pointF, "<set-?>");
        this.o = pointF;
    }

    public final void setMaxRange(float f) {
        this.f10874c = f;
    }

    public final void setSetPercentageSign(boolean z) {
        this.p = z;
    }

    public final void setSpinClockwise(boolean z) {
        this.n = z;
    }

    public final void setTargetRange(float f) {
        this.e = f;
    }

    public final void setUpdateProgress(boolean z) {
        this.g = z;
    }

    public final String toString() {
        return "CircleGraphData(color=" + this.f10872a + ", minRange=" + this.f10873b + ", maxRange=" + this.f10874c + ", initialRange=" + this.f10875d + ", targetRange=" + this.e + ", width=" + this.f + ", updateProgress=" + this.g + ", duration=" + this.h + ", speedDuration=" + this.i + ", chartStyle=" + this.j + ", spaceMultiple=" + this.k + ", textGravity=" + this.l + ", backgroundColor=" + this.m + ", spinClockwise=" + this.n + ", inset=" + this.o + ", setPercentageSign=" + this.p + ")";
    }
}
