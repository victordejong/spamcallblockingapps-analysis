package kotlin.jvm.internal;

import java.util.Iterator;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a%\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m400d2 = {"iterator", "", "T", "array", "", "([Ljava/lang/Object;)Ljava/util/Iterator;", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/jvm/internal/ArrayIteratorKt.class */
public final class ArrayIteratorKt {
    public static final <T> Iterator<T> iterator(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayIterator(array);
    }
}
