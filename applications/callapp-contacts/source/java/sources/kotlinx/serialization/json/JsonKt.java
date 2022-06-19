package kotlinx.serialization.json;

import java.util.Map;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.modules.C20448c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"defaultJsonModule", "Lkotlinx/serialization/modules/SerialModule;", "defaultJsonModule$annotations", "()V", "lenientHint", "", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonKt.class */
public final class JsonKt {
    private static final AbstractC20447b defaultJsonModule;
    public static final String lenientHint = "Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON";

    static {
        Map map = C18247ai.m4251a(C20126t.m1103a(C18496ac.m3882b(JsonElement.class), JsonElementSerializer.INSTANCE), C20126t.m1103a(C18496ac.m3882b(JsonPrimitive.class), JsonPrimitiveSerializer.INSTANCE), C20126t.m1103a(C18496ac.m3882b(JsonLiteral.class), JsonLiteralSerializer.INSTANCE), C20126t.m1103a(C18496ac.m3882b(JsonNull.class), JsonNullSerializer.INSTANCE), C20126t.m1103a(C18496ac.m3882b(JsonObject.class), JsonObjectSerializer.INSTANCE), C20126t.m1103a(C18496ac.m3882b(JsonArray.class), JsonArraySerializer.INSTANCE));
        C18524p.m3841c(map, "map");
        defaultJsonModule = C20448c.m673a(new C20448c.C20449a(map));
    }

    private static /* synthetic */ void defaultJsonModule$annotations() {
    }
}
