package p193e.p194a.p1342w4.p1345t.p1346a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p193e.p1482g.p1483a.AbstractC22646h;
import p193e.p1482g.p1483a.C22644g;
import p193e.p194a.p1342w4.p1345t.p1346a.p1347f.C21306f;
/* renamed from: e.a.w4.t.a.c */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/a/c.class */
public class C21297c {

    /* renamed from: a */
    public static final AbstractC22646h<String[]> f59653a = new C22644g(500, 0.99d);

    /* renamed from: b */
    public static final AbstractC22646h<String[]> f59654b = new C22644g(500, 0.99d);

    /* renamed from: c */
    public static final HashMap<String, C21298a[]> f59655c = new HashMap<>(1500, 0.5f);

    /* renamed from: d */
    public static final boolean[] f59656d;

    /* renamed from: e */
    public static final boolean[] f59657e;

    /* renamed from: e.a.w4.t.a.c$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/t/a/c$a.class */
    public static class C21298a {

        /* renamed from: a */
        public final String f59658a;

        /* renamed from: b */
        public final String[] f59659b;

        /* renamed from: c */
        public final List<List<Integer>> f59660c;

        /* renamed from: d */
        public int f59661d;

        /* renamed from: e */
        public int f59662e;

        public C21298a(String str, int i, int i2) {
            String[] mo7995i2;
            String[] mo7995i22;
            this.f59661d = i;
            this.f59662e = i2;
            this.f59658a = str;
            String str2 = null;
            String[] strArr = null;
            if (str.length() == 1) {
                char charAt = str.charAt(0);
                AbstractC22646h<String[]> abstractC22646h = C21297c.f59653a;
                if (C21306f.m9926b(charAt)) {
                    AbstractC22646h<String[]> abstractC22646h2 = C21297c.f59653a;
                    synchronized (abstractC22646h2) {
                        mo7995i22 = abstractC22646h2.mo7995i2(charAt);
                    }
                    strArr = mo7995i22;
                    if (mo7995i22 == null) {
                        try {
                            str2 = C21306f.m9927a(charAt);
                        } catch (Throwable th) {
                        }
                        strArr = mo7995i22;
                        if (str2 != null) {
                            strArr = str2.split(",");
                            AbstractC22646h<String[]> abstractC22646h3 = C21297c.f59653a;
                            synchronized (abstractC22646h3) {
                                abstractC22646h3.mo7996J(charAt, strArr);
                            }
                        }
                    }
                } else {
                    strArr = null;
                    if (C21296b.m9936b(charAt)) {
                        AbstractC22646h<String[]> abstractC22646h4 = C21297c.f59654b;
                        synchronized (abstractC22646h4) {
                            mo7995i2 = abstractC22646h4.mo7995i2(charAt);
                        }
                        strArr = mo7995i2;
                        if (mo7995i2 == null) {
                            String[] m9937a = C21296b.m9937a(charAt, true);
                            strArr = m9937a;
                            if (m9937a != null) {
                                synchronized (abstractC22646h4) {
                                    abstractC22646h4.mo7996J(charAt, m9937a);
                                }
                                strArr = m9937a;
                            }
                        }
                    }
                }
            }
            if (strArr == null) {
                this.f59659b = new String[]{C21295a.m9939a(str)};
            } else {
                String[] strArr2 = new String[strArr.length];
                this.f59659b = strArr2;
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            }
            this.f59660c = new ArrayList(this.f59659b.length);
            for (String str3 : this.f59659b) {
                this.f59660c.add(C21299d.m9930b(str3));
            }
        }

        public String toString() {
            return this.f59658a;
        }
    }

    static {
        boolean[] zArr = new boolean[128];
        f59656d = zArr;
        boolean[] zArr2 = new boolean[128];
        f59657e = zArr2;
        zArr[10] = true;
        zArr[13] = true;
        zArr[40] = true;
        zArr[41] = true;
        zArr[91] = true;
        zArr[93] = true;
        zArr[123] = true;
        zArr[125] = true;
        zArr[60] = true;
        zArr[62] = true;
        zArr[92] = true;
        zArr[47] = true;
        zArr[34] = true;
        zArr[38] = true;
        zArr[45] = true;
        zArr[95] = true;
        zArr[64] = true;
        zArr[59] = true;
        zArr[46] = true;
        zArr[58] = true;
        zArr[44] = true;
        zArr2[63] = true;
        zArr2[33] = true;
        zArr2[45] = true;
        zArr2[95] = true;
        zArr2[64] = true;
        zArr2[39] = true;
        zArr2[59] = true;
        zArr2[46] = true;
        zArr2[58] = true;
        zArr2[44] = true;
    }

    /* renamed from: a */
    public static void m9935a() {
        AbstractC22646h<String[]> abstractC22646h = f59653a;
        synchronized (abstractC22646h) {
            abstractC22646h.clear();
        }
        AbstractC22646h<String[]> abstractC22646h2 = f59654b;
        synchronized (abstractC22646h2) {
            abstractC22646h2.clear();
        }
        HashMap<String, C21298a[]> hashMap = f59655c;
        synchronized (hashMap) {
            hashMap.clear();
        }
    }

    /* renamed from: b */
    public static C21298a[] m9934b(String str, List<C21298a> list) {
        C21298a[] c21298aArr;
        int i;
        int i2;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        HashMap<String, C21298a[]> hashMap = f59655c;
        synchronized (hashMap) {
            c21298aArr = hashMap.get(str2);
        }
        C21298a[] c21298aArr2 = c21298aArr;
        if (c21298aArr == null) {
            list.clear();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= str2.length()) {
                    break;
                }
                char charAt = str2.charAt(i3);
                if (m9933c(charAt)) {
                    if (i3 > i) {
                        list.add(new C21298a(str2.substring(i, i3), i, i3));
                    }
                    i2 = i3;
                } else if (m9932d(charAt)) {
                    if (i3 > i) {
                        list.add(new C21298a(str2.substring(i, i3), i, i3));
                    }
                    i2 = i3 + 1;
                } else {
                    i2 = i;
                    if (C21306f.m9926b(charAt) || C21296b.m9936b(charAt)) {
                        if (i3 > i) {
                            list.add(new C21298a(str2.substring(i, i3), i, i3));
                        }
                        i2 = i3 + 1;
                        list.add(new C21298a(String.valueOf(charAt), i3, i2));
                    }
                }
                i3++;
                i4 = i2;
            }
            if (str2.length() > i) {
                if (i == 0) {
                    list.add(new C21298a(str2, 0, str2.length()));
                } else {
                    list.add(new C21298a(str2.substring(i, str2.length()), i, str2.length()));
                }
            }
            c21298aArr2 = (C21298a[]) list.toArray(new C21298a[list.size()]);
            HashMap<String, C21298a[]> hashMap2 = f59655c;
            synchronized (hashMap2) {
                hashMap2.put(str2, c21298aArr2);
            }
        }
        return c21298aArr2;
    }

    /* renamed from: c */
    public static boolean m9933c(char c) {
        boolean[] zArr = f59657e;
        return c < zArr.length && zArr[c];
    }

    /* renamed from: d */
    public static boolean m9932d(char c) {
        boolean z;
        if (c > ' ') {
            boolean[] zArr = f59656d;
            if ((c >= zArr.length || !zArr[c]) && c != 65288 && c != 65289 && c != 65308 && c != 65310 && c != 8220 && c != 8221 && c != 65292 && !Character.isWhitespace(c)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }
}
