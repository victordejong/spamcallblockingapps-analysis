package kotlin.p087i;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.C1738i;
import kotlin.C1773m;
import kotlin.p073a.C1594a;
import kotlin.p073a.C1600g;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1711c;
import kotlin.p084f.C1713d;
import kotlin.p086h.AbstractC1728b;
import kotlin.p086h.C1729c;
/* renamed from: kotlin.i.p */
/* loaded from: classes-dex2jar.jar:kotlin/i/p.class */
public class C1756p extends C1755o {

    /* renamed from: kotlin.i.p$a */
    /* loaded from: classes-dex2jar.jar:kotlin/i/p$a.class */
    public static final class C1757a extends AbstractC1695i implements AbstractC1674m<CharSequence, Integer, C1738i<? extends Integer, ? extends Integer>> {

        /* renamed from: a */
        final /* synthetic */ char[] f4432a;

        /* renamed from: b */
        final /* synthetic */ boolean f4433b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1757a(char[] cArr, boolean z) {
            super(2);
            this.f4432a = cArr;
            this.f4433b = z;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* synthetic */ C1738i<? extends Integer, ? extends Integer> mo44a(CharSequence charSequence, Integer num) {
            return m2999a(charSequence, num.intValue());
        }

        /* renamed from: a */
        public final C1738i<Integer, Integer> m2999a(CharSequence charSequence, int i) {
            C1694h.m3117b(charSequence, "$receiver");
            int a = C1747g.m3014a(charSequence, this.f4432a, i, this.f4433b);
            return a < 0 ? null : C1773m.m2975a(Integer.valueOf(a), 1);
        }
    }

    /* renamed from: kotlin.i.p$b */
    /* loaded from: classes-dex2jar.jar:kotlin/i/p$b.class */
    public static final class C1758b extends AbstractC1695i implements AbstractC1674m<CharSequence, Integer, C1738i<? extends Integer, ? extends Integer>> {

        /* renamed from: a */
        final /* synthetic */ List f4434a;

        /* renamed from: b */
        final /* synthetic */ boolean f4435b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1758b(List list, boolean z) {
            super(2);
            this.f4434a = list;
            this.f4435b = z;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* synthetic */ C1738i<? extends Integer, ? extends Integer> mo44a(CharSequence charSequence, Integer num) {
            return m2998a(charSequence, num.intValue());
        }

        /* renamed from: a */
        public final C1738i<Integer, Integer> m2998a(CharSequence charSequence, int i) {
            C1694h.m3117b(charSequence, "$receiver");
            C1738i m3002b = C1756p.m3002b(charSequence, (Collection<String>) this.f4434a, i, this.f4435b, false);
            return m3002b != null ? C1773m.m2975a(m3002b.m3062a(), Integer.valueOf(((String) m3002b.m3061b()).length())) : null;
        }
    }

    /* renamed from: kotlin.i.p$c */
    /* loaded from: classes-dex2jar.jar:kotlin/i/p$c.class */
    public static final class C1759c extends AbstractC1695i implements AbstractC1663b<C1711c, String> {

        /* renamed from: a */
        final /* synthetic */ CharSequence f4436a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1759c(CharSequence charSequence) {
            super(1);
            this.f4436a = charSequence;
        }

        /* renamed from: a */
        public final String mo138a(C1711c c1711c) {
            C1694h.m3117b(c1711c, "it");
            return C1747g.m3015a(this.f4436a, c1711c);
        }
    }

    /* renamed from: kotlin.i.p$d */
    /* loaded from: classes-dex2jar.jar:kotlin/i/p$d.class */
    public static final class C1760d extends AbstractC1695i implements AbstractC1663b<C1711c, String> {

        /* renamed from: a */
        final /* synthetic */ CharSequence f4437a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1760d(CharSequence charSequence) {
            super(1);
            this.f4437a = charSequence;
        }

        /* renamed from: a */
        public final String mo138a(C1711c c1711c) {
            C1694h.m3117b(c1711c, "it");
            return C1747g.m3015a(this.f4437a, c1711c);
        }
    }

    /* renamed from: a */
    public static final int m3028a(CharSequence charSequence, char c, int i, boolean z) {
        C1694h.m3117b(charSequence, "$this$indexOf");
        return (z || !(charSequence instanceof String)) ? C1747g.m3014a(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m3027a(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return C1747g.m3028a(charSequence, c, i, z);
    }

    /* renamed from: a */
    private static final int m3023a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        C1711c c1711c = !z2 ? new C1711c(C1713d.m3076c(i, 0), C1713d.m3075d(i2, charSequence.length())) : C1713d.m3081a(C1713d.m3075d(i, C1747g.m3005b(charSequence)), C1713d.m3076c(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int m3092a = c1711c.m3092a();
            int m3091b = c1711c.m3091b();
            int m3090c = c1711c.m3090c();
            if (m3090c >= 0) {
                if (m3092a > m3091b) {
                    return -1;
                }
            } else if (m3092a < m3091b) {
                return -1;
            }
            while (!C1747g.m3024a(charSequence2, 0, charSequence, m3092a, charSequence2.length(), z)) {
                if (m3092a == m3091b) {
                    return -1;
                }
                m3092a += m3090c;
            }
            return m3092a;
        }
        int m3092a2 = c1711c.m3092a();
        int m3091b2 = c1711c.m3091b();
        int m3090c2 = c1711c.m3090c();
        if (m3090c2 >= 0) {
            if (m3092a2 > m3091b2) {
                return -1;
            }
        } else if (m3092a2 < m3091b2) {
            return -1;
        }
        while (!C1747g.m3039a((String) charSequence2, 0, (String) charSequence, m3092a2, charSequence2.length(), z)) {
            if (m3092a2 == m3091b2) {
                return -1;
            }
            m3092a2 += m3090c2;
        }
        return m3092a2;
    }

    /* renamed from: a */
    static /* synthetic */ int m3022a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m3023a(charSequence, charSequence2, i, i2, z, z2);
    }

    /* renamed from: a */
    public static final int m3019a(CharSequence charSequence, String str, int i, boolean z) {
        C1694h.m3117b(charSequence, "$this$indexOf");
        C1694h.m3117b(str, "string");
        return (z || !(charSequence instanceof String)) ? m3022a(charSequence, str, i, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m3018a(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return C1747g.m3019a(charSequence, str, i, z);
    }

    /* renamed from: a */
    public static final int m3014a(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        C1694h.m3117b(charSequence, "$this$indexOfAny");
        C1694h.m3117b(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(C1594a.m3213a(cArr), i);
        }
        int c = C1713d.m3076c(i, 0);
        int b = C1747g.m3005b(charSequence);
        if (c > b) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(c);
            int length = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                } else if (C1739a.m3055a(cArr[i2], charAt, z)) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2) {
                return c;
            }
            if (c == b) {
                return -1;
            }
            c++;
        }
    }

    /* renamed from: a */
    public static final CharSequence m3029a(CharSequence charSequence) {
        C1694h.m3117b(charSequence, "$this$trim");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean a = C1739a.m3058a(charSequence.charAt(!z ? i : length));
            if (!z) {
                if (!a) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!a) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    /* renamed from: a */
    public static final String m3015a(CharSequence charSequence, C1711c c1711c) {
        C1694h.m3117b(charSequence, "$this$substring");
        C1694h.m3117b(c1711c, "range");
        return charSequence.subSequence(c1711c.m3085f().intValue(), c1711c.m3084g().intValue() + 1).toString();
    }

    /* renamed from: a */
    private static final List<String> m3017a(CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int a;
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        int a2 = C1747g.m3019a(charSequence, str, 0, z);
        if (a2 == -1 || i == 1) {
            return C1600g.m3203a(charSequence.toString());
        }
        boolean z2 = i > 0;
        int i3 = 10;
        if (z2) {
            i3 = C1713d.m3075d(i, 10);
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = a2;
        do {
            arrayList.add(charSequence.subSequence(i2, i4).toString());
            length = str.length() + i4;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            a = C1747g.m3019a(charSequence, str, length, z);
            i2 = length;
            i4 = a;
        } while (a != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    /* renamed from: a */
    private static final AbstractC1728b<C1711c> m3013a(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new C1743e(charSequence, i, i2, new C1757a(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC1728b m3012a(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m3013a(charSequence, cArr, i, z, i2);
    }

    /* renamed from: a */
    public static final AbstractC1728b<String> m3011a(CharSequence charSequence, char[] cArr, boolean z, int i) {
        C1694h.m3117b(charSequence, "$this$splitToSequence");
        C1694h.m3117b(cArr, "delimiters");
        return C1729c.m3066a(m3012a(charSequence, cArr, 0, z, i, 2, (Object) null), new C1760d(charSequence));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC1728b m3010a(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return C1747g.m3011a(charSequence, cArr, z, i);
    }

    /* renamed from: a */
    private static final AbstractC1728b<C1711c> m3009a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new C1743e(charSequence, i, i2, new C1758b(C1594a.m3215a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC1728b m3008a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m3009a(charSequence, strArr, i, z, i2);
    }

    /* renamed from: a */
    public static final AbstractC1728b<String> m3007a(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C1694h.m3117b(charSequence, "$this$splitToSequence");
        C1694h.m3117b(strArr, "delimiters");
        return C1729c.m3066a(m3008a(charSequence, strArr, 0, z, i, 2, (Object) null), new C1759c(charSequence));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC1728b m3006a(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return C1747g.m3007a(charSequence, strArr, z, i);
    }

    /* renamed from: a */
    public static final boolean m3026a(CharSequence charSequence, char c, boolean z) {
        C1694h.m3117b(charSequence, "$this$contains");
        return C1747g.m3027a(charSequence, c, 0, z, 2, (Object) null) >= 0;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m3025a(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C1747g.m3026a(charSequence, c, z);
    }

    /* renamed from: a */
    public static final boolean m3024a(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        C1694h.m3117b(charSequence, "$this$regionMatchesImpl");
        C1694h.m3117b(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!C1739a.m3055a(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static final boolean m3021a(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        boolean z2;
        C1694h.m3117b(charSequence, "$this$contains");
        C1694h.m3117b(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (C1747g.m3018a(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0) {
                z2 = true;
            }
            z2 = false;
        } else {
            if (m3022a(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0) {
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m3020a(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C1747g.m3021a(charSequence, charSequence2, z);
    }

    /* renamed from: b */
    public static final int m3005b(CharSequence charSequence) {
        C1694h.m3117b(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    /* renamed from: b */
    public static final int m3004b(CharSequence charSequence, String str, int i, boolean z) {
        C1694h.m3117b(charSequence, "$this$lastIndexOf");
        C1694h.m3117b(str, "string");
        return (z || !(charSequence instanceof String)) ? m3023a(charSequence, (CharSequence) str, i, 0, z, true) : ((String) charSequence).lastIndexOf(str, i);
    }

    /* renamed from: b */
    public static /* synthetic */ int m3003b(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = C1747g.m3005b(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return C1747g.m3004b(charSequence, str, i, z);
    }

    /* renamed from: b */
    public static final List<String> m3001b(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C1694h.m3117b(charSequence, "$this$split");
        C1694h.m3117b(strArr, "delimiters");
        if (strArr.length == 1) {
            boolean z2 = false;
            String str = strArr[0];
            if (str.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                return m3017a(charSequence, str, z, i);
            }
        }
        Iterable<C1711c> b = C1729c.m3065b(m3008a(charSequence, strArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(C1600g.m3199a(b, 10));
        for (C1711c c1711c : b) {
            arrayList.add(C1747g.m3015a(charSequence, c1711c));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static /* synthetic */ List m3000b(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return C1747g.m3001b(charSequence, strArr, z, i);
    }

    /* renamed from: b */
    public static final C1738i<Integer, String> m3002b(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object obj;
        Object obj2;
        if (!z && collection.size() == 1) {
            String str = (String) C1600g.m3194b(collection);
            int a = !z2 ? C1747g.m3018a(charSequence, str, i, false, 4, (Object) null) : C1747g.m3003b(charSequence, str, i, false, 4, (Object) null);
            return a < 0 ? null : C1773m.m2975a(Integer.valueOf(a), str);
        }
        C1711c c1711c = !z2 ? new C1711c(C1713d.m3076c(i, 0), charSequence.length()) : C1713d.m3081a(C1713d.m3075d(i, C1747g.m3005b(charSequence)), 0);
        if (charSequence instanceof String) {
            int m3092a = c1711c.m3092a();
            int m3091b = c1711c.m3091b();
            int m3090c = c1711c.m3090c();
            if (m3090c >= 0) {
                if (m3092a > m3091b) {
                    return null;
                }
            } else if (m3092a < m3091b) {
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
                    String str2 = (String) obj2;
                    if (C1747g.m3039a(str2, 0, (String) charSequence, m3092a, str2.length(), z)) {
                        break;
                    }
                }
                String str3 = (String) obj2;
                if (str3 != null) {
                    return C1773m.m2975a(Integer.valueOf(m3092a), str3);
                }
                if (m3092a == m3091b) {
                    return null;
                }
                m3092a += m3090c;
            }
        } else {
            int m3092a2 = c1711c.m3092a();
            int m3091b2 = c1711c.m3091b();
            int m3090c2 = c1711c.m3090c();
            if (m3090c2 >= 0) {
                if (m3092a2 > m3091b2) {
                    return null;
                }
            } else if (m3092a2 < m3091b2) {
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
                    String str4 = (String) obj;
                    if (C1747g.m3024a(str4, 0, charSequence, m3092a2, str4.length(), z)) {
                        break;
                    }
                }
                String str5 = (String) obj;
                if (str5 != null) {
                    return C1773m.m2975a(Integer.valueOf(m3092a2), str5);
                }
                if (m3092a2 == m3091b2) {
                    return null;
                }
                m3092a2 += m3090c2;
            }
        }
    }
}
