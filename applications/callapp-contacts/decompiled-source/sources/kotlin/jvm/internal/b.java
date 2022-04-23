package kotlin.jvm.internal;

import java.util.Iterator;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a%\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"iterator", "", "T", "array", "", "([Ljava/lang/Object;)Ljava/util/Iterator;", "kotlin-stdlib"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/b.class */
public final class b {
    public static final <T> Iterator<T> a(T[] array) {
        p.d(array, "array");
        return new a(array);
    }
}
