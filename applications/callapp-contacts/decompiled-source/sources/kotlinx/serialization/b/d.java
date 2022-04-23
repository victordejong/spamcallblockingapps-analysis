package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/serialization/internal/ArrayClassDesc;", "Lkotlinx/serialization/internal/ListLikeDescriptor;", "elementDesc", "Lkotlinx/serialization/SerialDescriptor;", "(Lkotlinx/serialization/SerialDescriptor;)V", "serialName", "", "getSerialName", "()Ljava/lang/String;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/d.class */
public final class d extends aj {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(SerialDescriptor elementDesc) {
        super(elementDesc, null);
        p.c(elementDesc, "elementDesc");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return "kotlin.Array";
    }
}
