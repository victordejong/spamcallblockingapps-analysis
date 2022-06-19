package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018��2\u00060\u0001j\u0002`\u0002B\u001f\b\u0016\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0006B\u0013\b\u0016\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\bB\u000f\b��\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m4298d2 = {"Lkotlinx/serialization/modules/SerializerAlreadyRegisteredException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "baseClass", "Lkotlin/reflect/KClass;", "concreteClass", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)V", "forClass", "(Lkotlin/reflect/KClass;)V", "msg", "", "(Ljava/lang/String;)V", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/SerializerAlreadyRegisteredException.class */
public final class SerializerAlreadyRegisteredException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(String msg) {
        super(msg);
        C18524p.m3841c(msg, "msg");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(AbstractC18551c<?> forClass) {
        this("Serializer for " + forClass + " already registered in this module");
        C18524p.m3841c(forClass, "forClass");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(AbstractC18551c<?> baseClass, AbstractC18551c<?> concreteClass) {
        this("Serializer for " + concreteClass + " already registered in the scope of " + baseClass);
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(concreteClass, "concreteClass");
    }
}
