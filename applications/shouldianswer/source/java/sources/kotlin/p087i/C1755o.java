package kotlin.p087i;

import kotlin.p081e.p083b.C1694h;
import kotlin.p086h.C1729c;
/* renamed from: kotlin.i.o */
/* loaded from: classes-dex2jar.jar:kotlin/i/o.class */
public class C1755o extends C1754n {
    /* renamed from: a */
    public static final String m3041a(String str, char c, char c2, boolean z) {
        C1694h.m3117b(str, "$this$replace");
        if (!z) {
            String replace = str.replace(c, c2);
            C1694h.m3122a((Object) replace, "(this as java.lang.Strin…replace(oldChar, newChar)");
            return replace;
        }
        return C1729c.m3067a(C1747g.m3010a(str, new char[]{c}, z, 0, 4, (Object) null), String.valueOf(c2), null, null, 0, null, null, 62, null);
    }

    /* renamed from: a */
    public static /* synthetic */ String m3040a(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return C1747g.m3041a(str, c, c2, z);
    }

    /* renamed from: a */
    public static final String m3038a(String str, String str2, String str3, boolean z) {
        C1694h.m3117b(str, "$this$replace");
        C1694h.m3117b(str2, "oldValue");
        C1694h.m3117b(str3, "newValue");
        return C1729c.m3067a(C1747g.m3006a(str, new String[]{str2}, z, 0, 4, (Object) null), str3, null, null, 0, null, null, 62, null);
    }

    /* renamed from: a */
    public static /* synthetic */ String m3037a(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return C1747g.m3038a(str, str2, str3, z);
    }

    /* renamed from: a */
    public static final boolean m3039a(String str, int i, String str2, int i2, int i3, boolean z) {
        C1694h.m3117b(str, "$this$regionMatches");
        C1694h.m3117b(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    /* renamed from: a */
    public static final boolean m3036a(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m3035a(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C1747g.m3036a(str, str2, z);
    }

    /* renamed from: b */
    public static final boolean m3034b(String str, String str2, boolean z) {
        C1694h.m3117b(str, "$this$startsWith");
        C1694h.m3117b(str2, "prefix");
        return !z ? str.startsWith(str2) : C1747g.m3039a(str, 0, str2, 0, str2.length(), z);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m3033b(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C1747g.m3034b(str, str2, z);
    }

    /* renamed from: c */
    public static final boolean m3032c(String str, String str2, boolean z) {
        C1694h.m3117b(str, "$this$endsWith");
        C1694h.m3117b(str2, "suffix");
        return !z ? str.endsWith(str2) : C1747g.m3039a(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m3031c(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C1747g.m3032c(str, str2, z);
    }

    /* renamed from: d */
    public static final int m3030d(String str, String str2, boolean z) {
        C1694h.m3117b(str, "$this$compareTo");
        C1694h.m3117b(str2, "other");
        return z ? str.compareToIgnoreCase(str2) : str.compareTo(str2);
    }
}
