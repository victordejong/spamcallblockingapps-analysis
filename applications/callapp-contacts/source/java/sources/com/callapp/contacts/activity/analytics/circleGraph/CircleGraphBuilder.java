package com.callapp.contacts.activity.analytics.circleGraph;

import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\nB\u001f\b\u0002\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006R*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;", "", "multiCircleGraphData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getMultiCircleGraphData", "()Ljava/util/ArrayList;", "setMultiCircleGraphData", "Builder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder.class */
public final class CircleGraphBuilder {

    /* renamed from: a */
    private ArrayList<MultiCircleGraphData> f19859a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u001f\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\fR*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\r"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;", "", "multiCircleGraphData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getMultiCircleGraphData", "()Ljava/util/ArrayList;", "setMultiCircleGraphData", "addCircle", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private ArrayList<MultiCircleGraphData> f19860a;

        public Builder() {
            this(null, 1, null);
        }

        public Builder(ArrayList<MultiCircleGraphData> multiCircleGraphData) {
            C18524p.m3840d(multiCircleGraphData, "multiCircleGraphData");
            this.f19860a = multiCircleGraphData;
        }

        public /* synthetic */ Builder(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ArrayList() : arrayList);
        }

        /* renamed from: a */
        public final Builder m31639a(MultiCircleGraphData multiCircleGraphData) {
            C18524p.m3840d(multiCircleGraphData, "multiCircleGraphData");
            Builder builder = this;
            builder.f19860a.add(multiCircleGraphData);
            return builder;
        }

        /* renamed from: a */
        public final CircleGraphBuilder m31640a() {
            return new CircleGraphBuilder(this.f19860a, null);
        }
    }

    private CircleGraphBuilder(ArrayList<MultiCircleGraphData> arrayList) {
        this.f19859a = arrayList;
    }

    public /* synthetic */ CircleGraphBuilder(ArrayList arrayList, DefaultConstructorMarker defaultConstructorMarker) {
        this(arrayList);
    }

    public final ArrayList<MultiCircleGraphData> getMultiCircleGraphData() {
        return this.f19859a;
    }
}
