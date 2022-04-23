package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.modules.d;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u00020\u0006\"\b\b��\u0010\u0007*\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00070\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\fH\u0016JF\u0010\r\u001a\u00020\u0006\"\b\b��\u0010\u000e*\u00020\b\"\b\b\u0001\u0010\u000f*\u0002H\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lkotlinx/serialization/json/internal/ContextValidator;", "Lkotlinx/serialization/modules/SerialModuleCollector;", "discriminator", "", "(Ljava/lang/String;)V", "contextual", "", "T", "", "kClass", "Lkotlin/reflect/KClass;", "serializer", "Lkotlinx/serialization/KSerializer;", "polymorphic", "Base", "Sub", "baseClass", "actualClass", "actualSerializer", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/ContextValidator.class */
public final class ContextValidator implements d {
    private final String discriminator;

    public ContextValidator(String discriminator) {
        p.c(discriminator, "discriminator");
        this.discriminator = discriminator;
    }

    @Override // kotlinx.serialization.modules.d
    public final <T> void contextual(c<T> kClass, KSerializer<T> serializer) {
        p.c(kClass, "kClass");
        p.c(serializer, "serializer");
    }

    @Override // kotlinx.serialization.modules.d
    public final <Base, Sub extends Base> void polymorphic(c<Base> baseClass, c<Sub> actualClass, KSerializer<Sub> actualSerializer) {
        p.c(baseClass, "baseClass");
        p.c(actualClass, "actualClass");
        p.c(actualSerializer, "actualSerializer");
        SerialDescriptor descriptor = actualSerializer.getDescriptor();
        int d2 = descriptor.d();
        for (int i = 0; i < d2; i++) {
            String a2 = descriptor.a(i);
            if (p.a((Object) a2, (Object) this.discriminator)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + actualClass + " has property '" + a2 + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }
}
