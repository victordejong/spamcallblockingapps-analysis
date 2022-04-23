package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/internal/NamedMapClassDescriptor;", "Lkotlinx/serialization/internal/MapLikeDescriptor;", "name", "", "keyDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "valueDescriptor", "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/as.class */
public final class as extends ap {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public as(String name, SerialDescriptor keyDescriptor, SerialDescriptor valueDescriptor) {
        super(name, keyDescriptor, valueDescriptor, null);
        p.c(name, "name");
        p.c(keyDescriptor, "keyDescriptor");
        p.c(valueDescriptor, "valueDescriptor");
    }
}
