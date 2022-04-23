package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ac;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016\u0082\u0001\u0004\u0005\u0006\u0007\b¨\u0006\t"}, d2 = {"Lkotlinx/serialization/SerialKind;", "", "()V", "toString", "", "Lkotlinx/serialization/PrimitiveKind;", "Lkotlinx/serialization/StructureKind;", "Lkotlinx/serialization/UnionKind;", "Lkotlinx/serialization/PolymorphicKind;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/p.class */
public abstract class p {
    private p() {
    }

    public /* synthetic */ p(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public String toString() {
        String b2 = q.b(ac.b(getClass()));
        if (b2 == null) {
            kotlin.jvm.internal.p.a();
        }
        return b2;
    }
}
