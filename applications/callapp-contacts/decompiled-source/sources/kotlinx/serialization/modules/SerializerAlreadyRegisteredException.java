package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018��2\u00060\u0001j\u0002`\u0002B\u001f\b\u0016\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0006B\u0013\b\u0016\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\bB\u000f\b��\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/serialization/modules/SerializerAlreadyRegisteredException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "baseClass", "Lkotlin/reflect/KClass;", "concreteClass", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)V", "forClass", "(Lkotlin/reflect/KClass;)V", "msg", "", "(Ljava/lang/String;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/SerializerAlreadyRegisteredException.class */
public final class SerializerAlreadyRegisteredException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(String msg) {
        super(msg);
        p.c(msg, "msg");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(c<?> forClass) {
        this("Serializer for " + forClass + " already registered in this module");
        p.c(forClass, "forClass");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(c<?> baseClass, c<?> concreteClass) {
        this("Serializer for " + concreteClass + " already registered in the scope of " + baseClass);
        p.c(baseClass, "baseClass");
        p.c(concreteClass, "concreteClass");
    }
}
