package kotlinx.serialization.json.internal;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.json.JsonElement;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "node", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/AbstractJsonTreeOutput$beginStructure$consumer$1.class */
final class AbstractJsonTreeOutput$beginStructure$consumer$1 extends AbstractC18526r implements Function1<JsonElement, C20128v> {
    final /* synthetic */ AbstractJsonTreeOutput this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractJsonTreeOutput$beginStructure$consumer$1(AbstractJsonTreeOutput abstractJsonTreeOutput) {
        super(1);
        this.this$0 = abstractJsonTreeOutput;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(JsonElement jsonElement) {
        invoke2(jsonElement);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(JsonElement node) {
        String currentTag;
        C18524p.m3841c(node, "node");
        AbstractJsonTreeOutput abstractJsonTreeOutput = this.this$0;
        currentTag = abstractJsonTreeOutput.getCurrentTag();
        abstractJsonTreeOutput.putElement(currentTag, node);
    }
}
