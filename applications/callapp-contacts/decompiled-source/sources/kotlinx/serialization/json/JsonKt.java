package kotlinx.serialization.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.t;
import kotlinx.serialization.modules.b;
import kotlinx.serialization.modules.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"defaultJsonModule", "Lkotlinx/serialization/modules/SerialModule;", "defaultJsonModule$annotations", "()V", "lenientHint", "", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonKt.class */
public final class JsonKt {
    private static final b defaultJsonModule;
    public static final String lenientHint = "Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON";

    static {
        Map map = ai.a(t.a(ac.b(JsonElement.class), JsonElementSerializer.INSTANCE), t.a(ac.b(JsonPrimitive.class), JsonPrimitiveSerializer.INSTANCE), t.a(ac.b(JsonLiteral.class), JsonLiteralSerializer.INSTANCE), t.a(ac.b(JsonNull.class), JsonNullSerializer.INSTANCE), t.a(ac.b(JsonObject.class), JsonObjectSerializer.INSTANCE), t.a(ac.b(JsonArray.class), JsonArraySerializer.INSTANCE));
        p.c(map, "map");
        defaultJsonModule = c.a(new c.a(map));
    }

    private static /* synthetic */ void defaultJsonModule$annotations() {
    }
}
