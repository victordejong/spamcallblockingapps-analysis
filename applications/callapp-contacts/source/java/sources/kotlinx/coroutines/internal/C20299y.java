package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H��\u001a,\u0010��\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H��\u001a,\u0010��\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\b2\b\b\u0002\u0010\u0006\u001a\u00020\b2\b\b\u0002\u0010\u0007\u001a\u00020\bH��¨\u0006\t"}, m4298d2 = {"systemProp", "", "propertyName", "", "defaultValue", "", "minValue", "maxValue", "", "kotlinx-coroutines-core"}, m4297k = 5, m4296mv = {1, 4, 2}, m4293xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* renamed from: kotlinx.coroutines.internal.y */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/y.class */
public final /* synthetic */ class C20299y {
    /* renamed from: a */
    public static final long m808a(String str, long j, long j2, long j3) {
        String m809a = C20298x.m809a(str);
        if (m809a == null) {
            return j;
        }
        Long f = C18425p.m3967f(m809a);
        if (f == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + m809a + '\'').toString());
        }
        long longValue = f.longValue();
        if (j2 <= longValue && j3 >= longValue) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
    }

    /* renamed from: a */
    public static final boolean m807a(String str, boolean z) {
        String m809a = C20298x.m809a(str);
        if (m809a != null) {
            return Boolean.parseBoolean(m809a);
        }
        return true;
    }
}
