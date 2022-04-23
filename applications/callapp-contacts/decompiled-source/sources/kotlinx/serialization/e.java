package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a&\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0006\u001a+\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b2\u0006\u0010\t\u001a\u0002H\u0002¢\u0006\u0002\u0010\n\u001a0\u0010\u000b\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0019\b\u0004\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0002\b\u0011H\u0086\b¨\u0006\u0012"}, d2 = {"encode", "", "T", "", "Lkotlinx/serialization/Encoder;", "obj", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "strategy", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeStructure", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "block", "Lkotlin/Function1;", "Lkotlinx/serialization/CompositeEncoder;", "Lkotlin/ExtensionFunctionType;", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/e.class */
public final class e {
    public static final <T> void a(Encoder encode, r<? super T> strategy, T t) {
        p.c(encode, "$this$encode");
        p.c(strategy, "strategy");
        encode.encodeSerializableValue(strategy, t);
    }
}
