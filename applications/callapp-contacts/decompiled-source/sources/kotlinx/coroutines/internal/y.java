package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.h.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H��\u001a,\u0010��\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H��\u001a,\u0010��\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\b2\b\b\u0002\u0010\u0006\u001a\u00020\b2\b\b\u0002\u0010\u0007\u001a\u00020\bH��¨\u0006\t"}, d2 = {"systemProp", "", "propertyName", "", "defaultValue", "", "minValue", "maxValue", "", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 2}, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/y.class */
public final /* synthetic */ class y {
    public static final long a(String str, long j, long j2, long j3) {
        String a2 = x.a(str);
        if (a2 == null) {
            return j;
        }
        Long f = p.f(a2);
        if (f != null) {
            long longValue = f.longValue();
            if (j2 <= longValue && j3 >= longValue) {
                return longValue;
            }
            throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
        }
        throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + a2 + '\'').toString());
    }

    public static final boolean a(String str, boolean z) {
        String a2 = x.a(str);
        if (a2 != null) {
            return Boolean.parseBoolean(a2);
        }
        return true;
    }
}
