package com.sinch.metadata.collector.sim;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObjectBuilder;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/json/JsonObjectBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2.class */
final class SimCardsInfoListSerializer$writeTransform$2 extends AbstractC18526r implements Function1<JsonObjectBuilder, C20128v> {
    final /* synthetic */ JsonElement $element;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimCardsInfoListSerializer$writeTransform$2(JsonElement jsonElement) {
        super(1);
        this.$element = jsonElement;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(JsonObjectBuilder jsonObjectBuilder) {
        invoke2(jsonObjectBuilder);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(JsonObjectBuilder receiver) {
        C18524p.m3841c(receiver, "$receiver");
        int size = ((JsonArray) this.$element).size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= size) {
                receiver.m686to("count", Integer.valueOf(((JsonArray) this.$element).size()));
                return;
            }
            int i3 = i2 + 1;
            receiver.m684to(String.valueOf(i3), ((JsonArray) this.$element).get(i2));
            i = i3;
        }
    }
}
