package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.modules.AbstractC20450d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u00020\u0006\"\b\b��\u0010\u0007*\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00070\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\fH\u0016JF\u0010\r\u001a\u00020\u0006\"\b\b��\u0010\u000e*\u00020\b\"\b\b\u0001\u0010\u000f*\u0002H\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m4298d2 = {"Lkotlinx/serialization/json/internal/ContextValidator;", "Lkotlinx/serialization/modules/SerialModuleCollector;", "discriminator", "", "(Ljava/lang/String;)V", "contextual", "", "T", "", "kClass", "Lkotlin/reflect/KClass;", "serializer", "Lkotlinx/serialization/KSerializer;", "polymorphic", "Base", "Sub", "baseClass", "actualClass", "actualSerializer", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/ContextValidator.class */
public final class ContextValidator implements AbstractC20450d {
    private final String discriminator;

    public ContextValidator(String discriminator) {
        C18524p.m3841c(discriminator, "discriminator");
        this.discriminator = discriminator;
    }

    @Override // kotlinx.serialization.modules.AbstractC20450d
    public final <T> void contextual(AbstractC18551c<T> kClass, KSerializer<T> serializer) {
        C18524p.m3841c(kClass, "kClass");
        C18524p.m3841c(serializer, "serializer");
    }

    @Override // kotlinx.serialization.modules.AbstractC20450d
    public final <Base, Sub extends Base> void polymorphic(AbstractC18551c<Base> baseClass, AbstractC18551c<Sub> actualClass, KSerializer<Sub> actualSerializer) {
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(actualClass, "actualClass");
        C18524p.m3841c(actualSerializer, "actualSerializer");
        SerialDescriptor descriptor = actualSerializer.getDescriptor();
        int mo659d = descriptor.mo659d();
        for (int i = 0; i < mo659d; i++) {
            String mo664a = descriptor.mo664a(i);
            if (C18524p.m3850a((Object) mo664a, (Object) this.discriminator)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + actualClass + " has property '" + mo664a + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }
}
