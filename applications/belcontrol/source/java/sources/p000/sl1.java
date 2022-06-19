package p000;
/* renamed from: sl1 */
/* loaded from: classes3-dex2jar.jar:sl1.class */
public class sl1 extends rl1 {
    /* renamed from: b */
    public static final boolean m559b(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    /* renamed from: c */
    public static final boolean m558c(String str, int i, String str2, int i2, int i3, boolean z) {
        qk1.m744c(str, "$this$regionMatches");
        qk1.m744c(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    /* renamed from: d */
    public static final String m557d(String str, String str2, String str3, boolean z) {
        qk1.m744c(str, "$this$replace");
        qk1.m744c(str2, "oldValue");
        qk1.m744c(str3, "newValue");
        return gl1.m1652d(tl1.m455v(str, new String[]{str2}, z, 0, 4, null), str3, null, null, 0, null, null, 62, null);
    }

    /* renamed from: e */
    public static /* synthetic */ String m556e(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m557d(str, str2, str3, z);
    }
}
