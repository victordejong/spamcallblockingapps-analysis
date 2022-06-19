package p000;

import android.util.SparseArray;
import android.util.SparseIntArray;
/* renamed from: b81 */
/* loaded from: classes3-dex2jar.jar:b81.class */
public class b81 {

    /* renamed from: e */
    public static int f1825e = -1;

    /* renamed from: f */
    public static int f1826f = 500;

    /* renamed from: g */
    public static b81 f1827g;

    /* renamed from: a */
    public SparseArray<String> f1828a;

    /* renamed from: b */
    public SparseIntArray f1829b;

    /* renamed from: c */
    public String f1830c;

    /* renamed from: d */
    public int f1831d = 0;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e4, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b81() {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.b81.<init>():void");
    }

    /* renamed from: a */
    public static Integer[] m5754a() {
        return ka1.m1422b(m5751d().f1828a);
    }

    /* renamed from: b */
    public static int m5753b(int i) {
        return m5751d().f1829b.get(i);
    }

    /* renamed from: c */
    public static String m5752c() {
        return m5751d().f1830c;
    }

    /* renamed from: d */
    public static b81 m5751d() {
        if (f1827g == null) {
            f1827g = new b81();
        }
        return f1827g;
    }

    /* renamed from: e */
    public static boolean m5750e() {
        return m5751d().f1828a.size() > 0;
    }

    /* renamed from: f */
    public static boolean m5749f() {
        return m5751d().f1831d > 0;
    }

    /* renamed from: g */
    public static String m5748g(int i) {
        return m5751d().f1828a.get(i);
    }

    /* renamed from: h */
    public static void m5747h() {
        f1827g = null;
    }

    /* renamed from: i */
    public static void m5746i() {
        b81 b81Var = f1827g;
        if (b81Var == null) {
            return;
        }
        b81Var.f1829b.clear();
        f1827g.f1831d = 0;
        q81 q81Var = new q81();
        String str = "";
        for (Integer num : m5754a()) {
            int intValue = num.intValue();
            int m873Y = intValue == f1825e ? q81Var.m873Y() : q81Var.m874X(intValue);
            str = str + intValue + ":" + m873Y + ",";
            f1827g.f1829b.put(intValue, m873Y);
            f1827g.f1831d += m873Y;
        }
        f1827g.f1830c = ka1.m1410n(str);
    }
}
