package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.json.JsonElement;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "node", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/AbstractJsonTreeOutput$beginStructure$consumer$1.class */
final class AbstractJsonTreeOutput$beginStructure$consumer$1 extends r implements Function1<JsonElement, v> {
    final /* synthetic */ AbstractJsonTreeOutput this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractJsonTreeOutput$beginStructure$consumer$1(AbstractJsonTreeOutput abstractJsonTreeOutput) {
        super(1);
        this.this$0 = abstractJsonTreeOutput;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(JsonElement jsonElement) {
        invoke2(jsonElement);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(JsonElement node) {
        String currentTag;
        p.c(node, "node");
        AbstractJsonTreeOutput abstractJsonTreeOutput = this.this$0;
        currentTag = abstractJsonTreeOutput.getCurrentTag();
        abstractJsonTreeOutput.putElement(currentTag, node);
    }
}
