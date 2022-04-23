package kotlinx.serialization.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010&\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "<name for destructuring parameter 0>", "", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObject$toString$1.class */
public final class JsonObject$toString$1 extends r implements Function1<Map.Entry<? extends String, ? extends JsonElement>, String> {
    public static final JsonObject$toString$1 INSTANCE = new JsonObject$toString$1();

    JsonObject$toString$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ String invoke(Map.Entry<? extends String, ? extends JsonElement> entry) {
        return invoke2((Map.Entry<String, ? extends JsonElement>) entry);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final String invoke2(Map.Entry<String, ? extends JsonElement> entry) {
        p.c(entry, "<name for destructuring parameter 0>");
        String key = entry.getKey();
        JsonElement jsonElement = (JsonElement) entry.getValue();
        return "\"" + key + "\":" + jsonElement;
    }
}
