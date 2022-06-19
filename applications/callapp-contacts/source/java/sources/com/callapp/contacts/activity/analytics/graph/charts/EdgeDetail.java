package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/EdgeDetail.class */
public class EdgeDetail {

    /* renamed from: a */
    private final int f20032a;

    /* renamed from: b */
    private final float f20033b;

    /* renamed from: c */
    private final EdgeType f20034c;

    /* renamed from: d */
    private Path f20035d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType.class */
    public enum EdgeType {
        EDGE_INNER,
        EDGE_OUTER
    }

    public EdgeDetail(EdgeType edgeType, int i, float f) {
        if (f > 1.0d || f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid ratio set for EdgeDetail");
        }
        this.f20034c = edgeType;
        this.f20032a = i;
        this.f20033b = f;
    }

    EdgeDetail(EdgeDetail edgeDetail) {
        this.f20034c = edgeDetail.f20034c;
        this.f20032a = edgeDetail.f20032a;
        this.f20033b = edgeDetail.f20033b;
        this.f20035d = null;
    }

    public Path getClipPath() {
        return this.f20035d;
    }

    public int getColor() {
        return this.f20032a;
    }

    public EdgeType getEdgeType() {
        return this.f20034c;
    }

    public float getRatio() {
        return this.f20033b;
    }

    public void setClipPath(Path path) {
        this.f20035d = path;
    }
}
