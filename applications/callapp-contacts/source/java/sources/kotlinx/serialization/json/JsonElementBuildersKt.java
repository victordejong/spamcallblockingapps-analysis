package kotlinx.serialization.json;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u001f\u0010��\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u0007\u001a\u00020\b2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¨\u0006\n"}, m4298d2 = {"json", "Lkotlinx/serialization/json/JsonObject;", "init", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonObjectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "jsonArray", "Lkotlinx/serialization/json/JsonArray;", "Lkotlinx/serialization/json/JsonArrayBuilder;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementBuildersKt.class */
public final class JsonElementBuildersKt {
    public static final JsonObject json(Function1<? super JsonObjectBuilder, C20128v> init) {
        C18524p.m3841c(init, "init");
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        init.invoke(jsonObjectBuilder);
        return new JsonObject(jsonObjectBuilder.getContent$kotlinx_serialization_runtime());
    }

    public static final JsonArray jsonArray(Function1<? super JsonArrayBuilder, C20128v> init) {
        C18524p.m3841c(init, "init");
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        init.invoke(jsonArrayBuilder);
        return new JsonArray(jsonArrayBuilder.getContent$kotlinx_serialization_runtime());
    }
}
