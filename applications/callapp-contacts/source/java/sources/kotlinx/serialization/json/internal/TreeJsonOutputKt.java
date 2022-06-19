package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.C20416e;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010\u0002\u001a\u0002H\u0003\"\n\b��\u0010\u0003\u0018\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0080\b¢\u0006\u0002\u0010\u0006\u001a-\u0010\u0007\u001a\u00020\u0004\"\u0004\b��\u0010\u0003*\u00020\b2\u0006\u0010\u0005\u001a\u0002H\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00030\nH��¢\u0006\u0002\u0010\u000b\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"PRIMITIVE_TAG", "", "cast", "T", "Lkotlinx/serialization/json/JsonElement;", "value", "(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;", "writeJson", "Lkotlinx/serialization/json/Json;", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/TreeJsonOutputKt.class */
public final class TreeJsonOutputKt {
    public static final String PRIMITIVE_TAG = "primitive";

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T extends JsonElement> T cast(JsonElement value) {
        C18524p.m3841c(value, "value");
        C18524p.m3844b();
        if (value instanceof JsonElement) {
            return value;
        }
        StringBuilder sb = new StringBuilder("Expected ");
        C18524p.m3844b();
        sb.append(C18496ac.m3882b(JsonElement.class));
        sb.append(" but found ");
        sb.append(C18496ac.m3882b(value.getClass()));
        throw new IllegalStateException(sb.toString().toString());
    }

    public static final <T> JsonElement writeJson(Json writeJson, T t, AbstractC20460r<? super T> serializer) {
        C18524p.m3841c(writeJson, "$this$writeJson");
        C18524p.m3841c(serializer, "serializer");
        C18490ab.C18495e c18495e = new C18490ab.C18495e();
        c18495e.f63589a = null;
        C20416e.m692a(new JsonTreeOutput(writeJson, new TreeJsonOutputKt$writeJson$encoder$1(c18495e)), serializer, t);
        T t2 = c18495e.f63589a;
        if (t2 == null) {
            C18524p.m3848a("result");
        }
        return (JsonElement) t2;
    }
}
