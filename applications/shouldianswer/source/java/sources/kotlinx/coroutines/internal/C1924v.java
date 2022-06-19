package kotlinx.coroutines.internal;

import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: kotlinx.coroutines.internal.v */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/v.class */
public final class C1924v {

    /* renamed from: a */
    private static final int f4670a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static final int m2589a() {
        return f4670a;
    }

    /* renamed from: a */
    public static final int m2587a(String str, int i, int i2, int i3) {
        C1694h.m3117b(str, "propertyName");
        return (int) m2585a(str, i, i2, i3);
    }

    /* renamed from: a */
    public static /* synthetic */ int m2586a(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return m2587a(str, i, i2, i3);
    }

    /* renamed from: a */
    public static final long m2585a(String str, long j, long j2, long j3) {
        C1694h.m3117b(str, "propertyName");
        String m2588a = m2588a(str);
        if (m2588a != null) {
            Long b = C1747g.m3043b(m2588a);
            if (b == null) {
                throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + m2588a + '\'').toString());
            }
            long longValue = b.longValue();
            if (j2 <= longValue && j3 >= longValue) {
                return longValue;
            }
            throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* renamed from: a */
    public static /* synthetic */ long m2584a(String str, long j, long j2, long j3, int i, Object obj) {
        ?? r11 = j2;
        if ((i & 4) != 0) {
            r11 = 1;
        }
        ?? r13 = j3;
        if ((i & 8) != 0) {
            r13 = 9223372036854775807;
        }
        return m2585a(str, j, (long) r11, (long) r13);
    }

    /* renamed from: a */
    public static final String m2588a(String str) {
        String str2;
        C1694h.m3117b(str, "propertyName");
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: a */
    public static final boolean m2583a(String str, boolean z) {
        boolean z2;
        C1694h.m3117b(str, "propertyName");
        try {
            String property = System.getProperty(str);
            z2 = z;
            if (property != null) {
                z2 = Boolean.parseBoolean(property);
            }
        } catch (SecurityException e) {
            z2 = z;
        }
        return z2;
    }
}
