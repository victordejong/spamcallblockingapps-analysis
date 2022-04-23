package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/LinkedHashMapClassDesc;", "Lkotlinx/serialization/internal/MapLikeDescriptor;", "keyDesc", "Lkotlinx/serialization/SerialDescriptor;", "valueDesc", "(Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/af.class */
public final class af extends ap {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(SerialDescriptor keyDesc, SerialDescriptor valueDesc) {
        super("kotlin.collections.LinkedHashMap", keyDesc, valueDesc, null);
        p.c(keyDesc, "keyDesc");
        p.c(valueDesc, "valueDesc");
    }
}
