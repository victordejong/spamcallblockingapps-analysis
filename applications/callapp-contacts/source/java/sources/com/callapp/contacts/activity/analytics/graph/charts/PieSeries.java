package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.util.Log;
import com.callapp.contacts.activity.analytics.graph.charts.EdgeDetail;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/PieSeries.class */
public class PieSeries extends ArcSeries {
    public PieSeries(SeriesItem seriesItem, int i, int i2) {
        super(seriesItem, i, i2);
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ArcSeries
    /* renamed from: a */
    protected final void mo31582a(Canvas canvas) {
        canvas.drawArc(this.f19999l, this.f19986a, this.f19987b, true, this.f20002o);
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ArcSeries, com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    /* renamed from: a */
    public final boolean mo31581a(Canvas canvas, RectF rectF) {
        if (super.mo31581a(canvas, rectF)) {
            return true;
        }
        mo31582a(canvas);
        ArrayList<EdgeDetail> edgeDetail = getSeriesItem().getEdgeDetail();
        if (edgeDetail == null) {
            return true;
        }
        Iterator<EdgeDetail> it2 = edgeDetail.iterator();
        while (it2.hasNext()) {
            EdgeDetail next = it2.next();
            if (next.getEdgeType() == EdgeDetail.EdgeType.EDGE_INNER) {
                Log.w(this.f19990c, "EDGE_INNER Not Yet Implemented for pie chart");
            } else {
                if (next.getClipPath() == null) {
                    float ratio = (next.getRatio() - 0.5f) * this.f20002o.getStrokeWidth();
                    Path path = new Path();
                    RectF rectF2 = new RectF(this.f19999l);
                    rectF2.inset(ratio, ratio);
                    path.addOval(rectF2, Path.Direction.CW);
                    next.setClipPath(path);
                }
                Path clipPath = next.getClipPath();
                int color = next.getColor();
                Region.Op op = Region.Op.DIFFERENCE;
                canvas.save();
                try {
                    canvas.clipPath(clipPath, op);
                    int color2 = this.f20002o.getColor();
                    Shader shader = this.f20002o.getShader();
                    this.f20002o.setColor(color);
                    this.f20002o.setShader(null);
                    mo31582a(canvas);
                    this.f20002o.setColor(color2);
                    this.f20002o.setShader(shader);
                    canvas.restore();
                } catch (UnsupportedOperationException e) {
                    Log.w(this.f19990c, "clipPath unavailable on API 11 - 17 without disabling hardware acceleration. (EdgeDetail functionality requires clipPath). Call DecoView.enableCompatibilityMode() to enable");
                    canvas.restore();
                }
            }
        }
        return true;
    }
}
