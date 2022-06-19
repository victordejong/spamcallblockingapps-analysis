package com.sinch.metadata.collector.sim;

import com.sinch.metadata.model.sim.SimCardInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonTransformingSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;", "Lkotlinx/serialization/json/JsonTransformingSerializer;", "", "Lcom/sinch/metadata/model/sim/SimCardInfo;", "()V", "COUNT_FIELD_NAME", "", "writeTransform", "Lkotlinx/serialization/json/JsonElement;", "element", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/SimCardsInfoListSerializer.class */
public final class SimCardsInfoListSerializer extends JsonTransformingSerializer<List<? extends SimCardInfo>> {
    private static final String COUNT_FIELD_NAME = "count";
    public static final SimCardsInfoListSerializer INSTANCE = new SimCardsInfoListSerializer();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private SimCardsInfoListSerializer() {
        /*
            r5 = this;
            com.sinch.metadata.model.sim.SimCardInfo$Companion r0 = com.sinch.metadata.model.sim.SimCardInfo.Companion
            kotlinx.serialization.KSerializer r0 = r0.serializer()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "$this$list"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            r0 = r5
            kotlinx.serialization.b.f r1 = new kotlinx.serialization.b.f
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            kotlinx.serialization.KSerializer r1 = (kotlinx.serialization.KSerializer) r1
            java.lang.String r2 = "SimCardsInfoListTransform"
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sinch.metadata.collector.sim.SimCardsInfoListSerializer.<init>():void");
    }

    @Override // kotlinx.serialization.json.JsonTransformingSerializer
    public final JsonElement writeTransform(JsonElement element) {
        C18524p.m3841c(element, "element");
        if (element instanceof JsonArray) {
            return ((JsonArray) element).size() == 0 ? JsonElementBuildersKt.json(SimCardsInfoListSerializer$writeTransform$1.INSTANCE) : JsonElementBuildersKt.json(new SimCardsInfoListSerializer$writeTransform$2(element));
        }
        throw new IllegalStateException("Only lists can be transformed");
    }
}
