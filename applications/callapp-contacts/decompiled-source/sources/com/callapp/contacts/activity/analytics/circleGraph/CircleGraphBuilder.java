package com.callapp.contacts.activity.analytics.circleGraph;

import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\nB\u001f\b\u0002\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006R*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;", "", "multiCircleGraphData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getMultiCircleGraphData", "()Ljava/util/ArrayList;", "setMultiCircleGraphData", "Builder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder.class */
public final class CircleGraphBuilder {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<MultiCircleGraphData> f10866a;

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u001f\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\fR*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;", "", "multiCircleGraphData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getMultiCircleGraphData", "()Ljava/util/ArrayList;", "setMultiCircleGraphData", "addCircle", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<MultiCircleGraphData> f10867a;

        public Builder() {
            this(null, 1, null);
        }

        public Builder(ArrayList<MultiCircleGraphData> multiCircleGraphData) {
            p.d(multiCircleGraphData, "multiCircleGraphData");
            this.f10867a = multiCircleGraphData;
        }

        public /* synthetic */ Builder(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ArrayList() : arrayList);
        }

        public final Builder a(MultiCircleGraphData multiCircleGraphData) {
            p.d(multiCircleGraphData, "multiCircleGraphData");
            Builder builder = this;
            builder.f10867a.add(multiCircleGraphData);
            return builder;
        }

        public final CircleGraphBuilder a() {
            return new CircleGraphBuilder(this.f10867a, null);
        }
    }

    private CircleGraphBuilder(ArrayList<MultiCircleGraphData> arrayList) {
        this.f10866a = arrayList;
    }

    public /* synthetic */ CircleGraphBuilder(ArrayList arrayList, DefaultConstructorMarker defaultConstructorMarker) {
        this(arrayList);
    }

    public final ArrayList<MultiCircleGraphData> getMultiCircleGraphData() {
        return this.f10866a;
    }
}
