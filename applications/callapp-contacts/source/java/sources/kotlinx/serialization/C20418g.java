package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.p572b.C20370bd;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0007\u001a$\u0010\u0005\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0007¨\u0006\u0006"}, m4298d2 = {"serializer", "Lkotlinx/serialization/KSerializer;", "T", "", "Lkotlin/reflect/KClass;", "serializerOrNull", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.g */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/g.class */
public final class C20418g {
    /* renamed from: a */
    public static final <T> KSerializer<T> m690a(AbstractC18551c<T> serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        KSerializer<T> m689b = m689b(serializer);
        if (m689b != null) {
            return m689b;
        }
        throw new SerializationException("Can't locate argument-less serializer for class " + C20459q.m652b(serializer) + ". For generic classes, such as lists, please provide serializer explicitly.", null, 2, null);
    }

    /* renamed from: b */
    public static final <T> KSerializer<T> m689b(AbstractC18551c<T> serializerOrNull) {
        C18524p.m3841c(serializerOrNull, "$this$serializerOrNull");
        KSerializer<T> m654a = C20459q.m654a(serializerOrNull);
        KSerializer<T> kSerializer = m654a;
        if (m654a == null) {
            kSerializer = C20370bd.m717a(serializerOrNull);
        }
        return kSerializer;
    }
}
