package kotlinx.serialization.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010&\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "<name for destructuring parameter 0>", "", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObject$toString$1.class */
final class JsonObject$toString$1 extends AbstractC18526r implements Function1<Map.Entry<? extends String, ? extends JsonElement>, String> {
    public static final JsonObject$toString$1 INSTANCE = new JsonObject$toString$1();

    JsonObject$toString$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ String invoke(Map.Entry<? extends String, ? extends JsonElement> entry) {
        return invoke2((Map.Entry<String, ? extends JsonElement>) entry);
    }

    /* renamed from: invoke */
    public final String invoke2(Map.Entry<String, ? extends JsonElement> entry) {
        C18524p.m3841c(entry, "<name for destructuring parameter 0>");
        String key = entry.getKey();
        JsonElement value = entry.getValue();
        return "\"" + key + "\":" + value;
    }
}
