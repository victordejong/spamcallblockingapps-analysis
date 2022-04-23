package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u001a(\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007¨\u0006\u0005"}, d2 = {"makeNullable", "Lkotlinx/serialization/KSerializer;", "T", "", "actualSerializer", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/aw.class */
public final class aw {
    public static final <T> KSerializer<T> a(KSerializer<T> actualSerializer) {
        p.c(actualSerializer, "actualSerializer");
        return new av(actualSerializer);
    }
}
