package p459j.p460a.p463b0;

import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.b0.n */
/* loaded from: classes2-dex2jar.jar:j/a/b0/n.class */
public class C11142n {
    /* renamed from: a */
    public static int m10205a(int i) {
        return 1 << i;
    }

    /* renamed from: a */
    public static int m10204a(int i, int i2) {
        return i | i2;
    }

    /* renamed from: a */
    public static String[] m10206a() {
        String[] strArr = new String[m10203b().length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = C14206w4.m2225a(m10203b()[i]);
        }
        return strArr;
    }

    /* renamed from: b */
    public static int m10202b(int i) {
        boolean d = m10197d(i);
        int i2 = d ? 1 : 0;
        if (m10195f(i)) {
            i2 = (d ? 1 : 0) + 1;
        }
        int i3 = i2;
        if (m10196e(i)) {
            i3 = i2 + 1;
        }
        return i3;
    }

    /* renamed from: b */
    public static boolean m10201b(int i, int i2) {
        return (i & i2) == i2;
    }

    /* renamed from: b */
    public static int[] m10203b() {
        return new int[]{R$string.main_filter_in, R$string.main_filter_out, R$string.main_filter_miss};
    }

    /* renamed from: c */
    public static int m10200c() {
        return C13915b3.m3066a("PageFilter" + EnumC11144p.CALLLOG.ordinal(), 7);
    }

    /* renamed from: c */
    public static int m10198c(int i, int i2) {
        return i & (i2 ^ (-1));
    }

    /* renamed from: c */
    public static boolean m10199c(int i) {
        return 7 == i;
    }

    /* renamed from: d */
    public static boolean m10197d(int i) {
        return m10201b(i, 1);
    }

    /* renamed from: e */
    public static boolean m10196e(int i) {
        return m10201b(i, 4);
    }

    /* renamed from: f */
    public static boolean m10195f(int i) {
        return m10201b(i, 2);
    }

    /* renamed from: g */
    public static void m10194g(int i) {
        C13915b3.m3048d("PageFilter" + EnumC11144p.CALLLOG.ordinal(), i);
    }
}
