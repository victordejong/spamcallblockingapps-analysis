package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.json.JsonElement;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "it", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/TreeJsonOutputKt$writeJson$encoder$1.class */
final class TreeJsonOutputKt$writeJson$encoder$1 extends r implements Function1<JsonElement, v> {
    final /* synthetic */ ab.e $result;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TreeJsonOutputKt$writeJson$encoder$1(ab.e eVar) {
        super(1);
        this.$result = eVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(JsonElement jsonElement) {
        invoke2(jsonElement);
        return v.f38654a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(JsonElement it2) {
        p.c(it2, "it");
        this.$result.f36780a = it2;
    }
}
