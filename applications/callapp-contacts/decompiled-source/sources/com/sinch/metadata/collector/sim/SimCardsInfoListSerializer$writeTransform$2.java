package com.sinch.metadata.collector.sim;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObjectBuilder;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/json/JsonObjectBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2.class */
final class SimCardsInfoListSerializer$writeTransform$2 extends r implements Function1<JsonObjectBuilder, v> {
    final /* synthetic */ JsonElement $element;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimCardsInfoListSerializer$writeTransform$2(JsonElement jsonElement) {
        super(1);
        this.$element = jsonElement;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(JsonObjectBuilder jsonObjectBuilder) {
        invoke2(jsonObjectBuilder);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(JsonObjectBuilder receiver) {
        p.c(receiver, "$receiver");
        int size = ((JsonArray) this.$element).size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            receiver.to(String.valueOf(i2), ((JsonArray) this.$element).get(i));
            i = i2;
        }
        receiver.to("count", Integer.valueOf(((JsonArray) this.$element).size()));
    }
}
