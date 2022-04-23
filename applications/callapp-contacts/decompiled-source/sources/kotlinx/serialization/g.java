package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.b.bd;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0007\u001a$\u0010\u0005\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0007¨\u0006\u0006"}, d2 = {"serializer", "Lkotlinx/serialization/KSerializer;", "T", "", "Lkotlin/reflect/KClass;", "serializerOrNull", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/g.class */
public final class g {
    public static final <T> KSerializer<T> a(c<T> serializer) {
        p.c(serializer, "$this$serializer");
        KSerializer<T> b2 = b(serializer);
        if (b2 != null) {
            return b2;
        }
        throw new SerializationException("Can't locate argument-less serializer for class " + q.b(serializer) + ". For generic classes, such as lists, please provide serializer explicitly.", null, 2, null);
    }

    public static final <T> KSerializer<T> b(c<T> serializerOrNull) {
        p.c(serializerOrNull, "$this$serializerOrNull");
        KSerializer<T> a2 = q.a(serializerOrNull);
        KSerializer<T> kSerializer = a2;
        if (a2 == null) {
            kSerializer = bd.a(serializerOrNull);
        }
        return kSerializer;
    }
}
