package p000;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* renamed from: tl1 */
/* loaded from: classes3-dex2jar.jar:tl1.class */
public class tl1 extends sl1 {

    /* renamed from: tl1$a */
    /* loaded from: classes3-dex2jar.jar:tl1$a.class */
    public static final class C1671a extends rk1 implements kk1<CharSequence, Integer, kj1<? extends Integer, ? extends Integer>> {

        /* renamed from: b */
        public final /* synthetic */ List f8267b;

        /* renamed from: c */
        public final /* synthetic */ boolean f8268c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1671a(List list, boolean z) {
            super(2);
            this.f8267b = list;
            this.f8268c = z;
        }

        @Override // p000.kk1
        /* renamed from: b */
        public /* bridge */ /* synthetic */ kj1<? extends Integer, ? extends Integer> mo453b(CharSequence charSequence, Integer num) {
            return m452c(charSequence, num.intValue());
        }

        /* renamed from: c */
        public final kj1<Integer, Integer> m452c(CharSequence charSequence, int i) {
            qk1.m744c(charSequence, "$receiver");
            kj1 m470g = tl1.m470g(charSequence, this.f8267b, i, this.f8268c, false);
            return m470g != null ? lj1.m1293a(m470g.m1387c(), Integer.valueOf(((String) m470g.m1386d()).length())) : null;
        }
    }

    /* renamed from: tl1$b */
    /* loaded from: classes3-dex2jar.jar:tl1$b.class */
    public static final class C1672b extends rk1 implements jk1<wk1, String> {

        /* renamed from: b */
        public final /* synthetic */ CharSequence f8269b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1672b(CharSequence charSequence) {
            super(1);
            this.f8269b = charSequence;
        }

        /* renamed from: c */
        public final String mo451a(wk1 wk1Var) {
            qk1.m744c(wk1Var, "it");
            return tl1.m454w(this.f8269b, wk1Var);
        }
    }

    /* renamed from: g */
    public static final kj1<Integer, String> m470g(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        int m392a;
        Object obj;
        String str;
        Object obj2;
        if (!z && collection.size() == 1) {
            String str2 = (String) ck1.m5310l(collection);
            int m465l = !z2 ? m465l(charSequence, str2, i, false, 4, null) : m463n(charSequence, str2, i, false, 4, null);
            return m465l < 0 ? null : lj1.m1293a(Integer.valueOf(m465l), str2);
        }
        wk1 wk1Var = !z2 ? new wk1(zk1.m6a(i, 0), charSequence.length()) : zk1.m3d(zk1.m5b(i, m469h(charSequence)), 0);
        if (charSequence instanceof String) {
            m392a = wk1Var.m392a();
            int m391b = wk1Var.m391b();
            int m390c = wk1Var.m390c();
            if (m390c >= 0) {
                if (m392a > m391b) {
                    return null;
                }
            } else if (m392a < m391b) {
                return null;
            }
            while (true) {
                Iterator<T> it = collection.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it.next();
                    String str3 = (String) obj2;
                    if (sl1.m558c(str3, 0, (String) charSequence, m392a, str3.length(), z)) {
                        break;
                    }
                }
                String str4 = (String) obj2;
                if (str4 != null) {
                    str = str4;
                    break;
                } else if (m392a == m391b) {
                    return null;
                } else {
                    m392a += m390c;
                }
            }
        } else {
            m392a = wk1Var.m392a();
            int m391b2 = wk1Var.m391b();
            int m390c2 = wk1Var.m390c();
            if (m390c2 >= 0) {
                if (m392a > m391b2) {
                    return null;
                }
            } else if (m392a < m391b2) {
                return null;
            }
            while (true) {
                Iterator<T> it2 = collection.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    String str5 = (String) obj;
                    if (m460q(str5, 0, charSequence, m392a, str5.length(), z)) {
                        break;
                    }
                }
                String str6 = (String) obj;
                if (str6 != null) {
                    str = str6;
                    break;
                } else if (m392a == m391b2) {
                    return null;
                } else {
                    m392a += m390c2;
                }
            }
        }
        return lj1.m1293a(Integer.valueOf(m392a), str);
    }

    /* renamed from: h */
    public static final int m469h(CharSequence charSequence) {
        qk1.m744c(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    /* renamed from: i */
    public static final int m468i(CharSequence charSequence, String str, int i, boolean z) {
        qk1.m744c(charSequence, "$this$indexOf");
        qk1.m744c(str, "string");
        return (z || !(charSequence instanceof String)) ? m466k(charSequence, str, i, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i);
    }

    /* renamed from: j */
    public static final int m467j(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        wk1 wk1Var = !z2 ? new wk1(zk1.m6a(i, 0), zk1.m5b(i2, charSequence.length())) : zk1.m3d(zk1.m5b(i, m469h(charSequence)), zk1.m6a(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int m392a = wk1Var.m392a();
            int m391b = wk1Var.m391b();
            int m390c = wk1Var.m390c();
            if (m390c >= 0) {
                if (m392a > m391b) {
                    return -1;
                }
            } else if (m392a < m391b) {
                return -1;
            }
            while (!m460q(charSequence2, 0, charSequence, m392a, charSequence2.length(), z)) {
                if (m392a == m391b) {
                    return -1;
                }
                m392a += m390c;
            }
            return m392a;
        }
        int m392a2 = wk1Var.m392a();
        int m391b2 = wk1Var.m391b();
        int m390c2 = wk1Var.m390c();
        if (m390c2 >= 0) {
            if (m392a2 > m391b2) {
                return -1;
            }
        } else if (m392a2 < m391b2) {
            return -1;
        }
        while (!sl1.m558c((String) charSequence2, 0, (String) charSequence, m392a2, charSequence2.length(), z)) {
            if (m392a2 == m391b2) {
                return -1;
            }
            m392a2 += m390c2;
        }
        return m392a2;
    }

    /* renamed from: k */
    public static /* synthetic */ int m466k(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m467j(charSequence, charSequence2, i, i2, z, z2);
    }

    /* renamed from: l */
    public static /* synthetic */ int m465l(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m468i(charSequence, str, i, z);
    }

    /* renamed from: m */
    public static final int m464m(CharSequence charSequence, String str, int i, boolean z) {
        qk1.m744c(charSequence, "$this$lastIndexOf");
        qk1.m744c(str, "string");
        return (z || !(charSequence instanceof String)) ? m467j(charSequence, str, i, 0, z, true) : ((String) charSequence).lastIndexOf(str, i);
    }

    /* renamed from: n */
    public static /* synthetic */ int m463n(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m469h(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m464m(charSequence, str, i, z);
    }

    /* renamed from: o */
    public static final bl1<wk1> m462o(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new kl1(charSequence, i, i2, new C1671a(rj1.m625a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: p */
    public static /* synthetic */ bl1 m461p(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m462o(charSequence, strArr, i, z, i2);
    }

    /* renamed from: q */
    public static final boolean m460q(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        qk1.m744c(charSequence, "$this$regionMatchesImpl");
        qk1.m744c(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!jl1.m1471a(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: r */
    public static final List<String> m459r(CharSequence charSequence, String[] strArr, boolean z, int i) {
        qk1.m744c(charSequence, "$this$split");
        qk1.m744c(strArr, "delimiters");
        boolean z2 = true;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                z2 = false;
            }
            if (!z2) {
                return m458s(charSequence, str, z, i);
            }
        }
        Iterable<wk1> m1655a = gl1.m1655a(m461p(charSequence, strArr, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(vj1.m298e(m1655a, 10));
        for (wk1 wk1Var : m1655a) {
            arrayList.add(m454w(charSequence, wk1Var));
        }
        return arrayList;
    }

    /* renamed from: s */
    public static final List<String> m458s(CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int m468i;
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        int m468i2 = m468i(charSequence, str, 0, z);
        if (m468i2 == -1 || i == 1) {
            return tj1.m475a(charSequence.toString());
        }
        boolean z2 = i > 0;
        int i3 = 10;
        if (z2) {
            i3 = zk1.m5b(i, 10);
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = m468i2;
        do {
            arrayList.add(charSequence.subSequence(i2, i4).toString());
            length = str.length() + i4;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            m468i = m468i(charSequence, str, length, z);
            i2 = length;
            i4 = m468i;
        } while (m468i != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    /* renamed from: t */
    public static /* synthetic */ List m457t(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m459r(charSequence, strArr, z, i);
    }

    /* renamed from: u */
    public static final bl1<String> m456u(CharSequence charSequence, String[] strArr, boolean z, int i) {
        qk1.m744c(charSequence, "$this$splitToSequence");
        qk1.m744c(strArr, "delimiters");
        return gl1.m1651e(m461p(charSequence, strArr, 0, z, i, 2, null), new C1672b(charSequence));
    }

    /* renamed from: v */
    public static /* synthetic */ bl1 m455v(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m456u(charSequence, strArr, z, i);
    }

    /* renamed from: w */
    public static final String m454w(CharSequence charSequence, wk1 wk1Var) {
        qk1.m744c(charSequence, "$this$substring");
        qk1.m744c(wk1Var, "range");
        return charSequence.subSequence(wk1Var.m212g().intValue(), wk1Var.m213f().intValue() + 1).toString();
    }
}
