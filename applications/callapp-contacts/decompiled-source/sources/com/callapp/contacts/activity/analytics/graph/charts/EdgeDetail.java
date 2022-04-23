package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/EdgeDetail.class */
public class EdgeDetail {

    /* renamed from: a  reason: collision with root package name */
    private final int f10954a;

    /* renamed from: b  reason: collision with root package name */
    private final float f10955b;

    /* renamed from: c  reason: collision with root package name */
    private final EdgeType f10956c;

    /* renamed from: d  reason: collision with root package name */
    private Path f10957d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType.class */
    public enum EdgeType {
        EDGE_INNER,
        EDGE_OUTER
    }

    public EdgeDetail(EdgeType edgeType, int i, float f) {
        if (f > 1.0d || f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid ratio set for EdgeDetail");
        }
        this.f10956c = edgeType;
        this.f10954a = i;
        this.f10955b = f;
    }

    EdgeDetail(EdgeDetail edgeDetail) {
        this.f10956c = edgeDetail.f10956c;
        this.f10954a = edgeDetail.f10954a;
        this.f10955b = edgeDetail.f10955b;
        this.f10957d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path getClipPath() {
        return this.f10957d;
    }

    public int getColor() {
        return this.f10954a;
    }

    public EdgeType getEdgeType() {
        return this.f10956c;
    }

    public float getRatio() {
        return this.f10955b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClipPath(Path path) {
        this.f10957d = path;
    }
}
