package kotlinx.serialization.json.internal;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.json.JsonElement;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "T", "it", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/TreeJsonOutputKt$writeJson$encoder$1.class */
final class TreeJsonOutputKt$writeJson$encoder$1 extends AbstractC18526r implements Function1<JsonElement, C20128v> {
    final /* synthetic */ C18490ab.C18495e $result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TreeJsonOutputKt$writeJson$encoder$1(C18490ab.C18495e c18495e) {
        super(1);
        this.$result = c18495e;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(JsonElement jsonElement) {
        invoke2(jsonElement);
        return C20128v.f66529a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: invoke */
    public final void invoke2(JsonElement it2) {
        C18524p.m3841c(it2, "it");
        this.$result.f63589a = it2;
    }
}
