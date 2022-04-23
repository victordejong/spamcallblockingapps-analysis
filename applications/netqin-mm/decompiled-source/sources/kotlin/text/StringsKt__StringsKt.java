package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import p573f.C9928f;
import p573f.p575b0.AbstractC9896b;
import p573f.p575b0.C9902h;
import p573f.p576c0.C9909b;
import p573f.p576c0.C9910c;
import p573f.p576c0.C9925q;
import p573f.p577r.AbstractC9976l;
import p573f.p577r.C9966g;
import p573f.p577r.C9968h;
import p573f.p577r.C9977m;
import p573f.p577r.C9979o;
import p573f.p577r.C9986v;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10077a;
import p573f.p595z.C10080c;
import p573f.p595z.C10084f;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt.class */
public class StringsKt__StringsKt extends C9925q {

    /* renamed from: kotlin.text.StringsKt__StringsKt$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt$a.class */
    public static final class C10488a extends AbstractC9976l {

        /* renamed from: a */
        public int f38758a;

        /* renamed from: b */
        public final /* synthetic */ CharSequence f38759b;

        public C10488a(CharSequence charSequence) {
            this.f38759b = charSequence;
        }

        @Override // p573f.p577r.AbstractC9976l
        /* renamed from: a */
        public char mo11a() {
            CharSequence charSequence = this.f38759b;
            int i = this.f38758a;
            this.f38758a = i + 1;
            return charSequence.charAt(i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f38758a < this.f38759b.length();
        }
    }

    /* renamed from: a */
    public static final int m34a(CharSequence charSequence, char c, int i, boolean z) {
        C10059q.m1637b(charSequence, "$this$indexOf");
        return (z || !(charSequence instanceof String)) ? m24a(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m33a(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m34a(charSequence, c, i, z);
    }

    /* renamed from: a */
    public static final int m30a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        C10077a cVar = !z2 ? new C10080c(C10084f.m1571a(i, 0), C10084f.m1569b(i2, charSequence.length())) : C10084f.m1568c(C10084f.m1569b(i, m13c(charSequence)), C10084f.m1571a(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int first = cVar.getFirst();
            int last = cVar.getLast();
            int a = cVar.m1578a();
            if (a >= 0) {
                if (first > last) {
                    return -1;
                }
            } else if (first < last) {
                return -1;
            }
            while (!m32a(charSequence2, 0, charSequence, first, charSequence2.length(), z)) {
                if (first == last) {
                    return -1;
                }
                first += a;
            }
            return first;
        }
        int first2 = cVar.getFirst();
        int last2 = cVar.getLast();
        int a2 = cVar.m1578a();
        if (a2 >= 0) {
            if (first2 > last2) {
                return -1;
            }
        } else if (first2 < last2) {
            return -1;
        }
        while (!C9925q.m1784a((String) charSequence2, 0, (String) charSequence, first2, charSequence2.length(), z)) {
            if (first2 == last2) {
                return -1;
            }
            first2 += a2;
        }
        return first2;
    }

    /* renamed from: a */
    public static /* synthetic */ int m29a(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m30a(charSequence, charSequence2, i, i2, z, z2);
    }

    /* renamed from: a */
    public static final int m28a(CharSequence charSequence, String str, int i, boolean z) {
        C10059q.m1637b(charSequence, "$this$indexOf");
        C10059q.m1637b(str, "string");
        return (z || !(charSequence instanceof String)) ? m29a(charSequence, str, i, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m27a(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m28a(charSequence, str, i, z);
    }

    /* renamed from: a */
    public static final int m24a(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        C10059q.m1637b(charSequence, "$this$indexOfAny");
        C10059q.m1637b(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            int a = C10084f.m1571a(i, 0);
            int c = m13c(charSequence);
            if (a > c) {
                return -1;
            }
            while (true) {
                char charAt = charSequence.charAt(a);
                int length = cArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z2 = false;
                        break;
                    } else if (C9909b.m1802a(cArr[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return a;
                }
                if (a == c) {
                    return -1;
                }
                a++;
            }
        } else {
            return ((String) charSequence).indexOf(C9968h.m1718a(cArr), i);
        }
    }

    /* renamed from: a */
    public static final AbstractC9896b<C10080c> m23a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new C9910c(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$4(C9966g.m1722a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9896b m22a(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m23a(charSequence, strArr, i, z, i2);
    }

    /* renamed from: a */
    public static final String m31a(CharSequence charSequence, C10080c cVar) {
        C10059q.m1637b(charSequence, "$this$substring");
        C10059q.m1637b(cVar, "range");
        return charSequence.subSequence(cVar.m1574c().intValue(), cVar.m1575b().intValue() + 1).toString();
    }

    /* renamed from: a */
    public static final List<String> m26a(CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int a;
        int i2 = 0;
        if (i >= 0) {
            int a2 = m28a(charSequence, str, 0, z);
            if (a2 == -1 || i == 1) {
                return C9977m.m1710a(charSequence.toString());
            }
            boolean z2 = i > 0;
            int i3 = 10;
            if (z2) {
                i3 = C10084f.m1569b(i, 10);
            }
            ArrayList arrayList = new ArrayList(i3);
            int i4 = a2;
            do {
                arrayList.add(charSequence.subSequence(i2, i4).toString());
                length = str.length() + i4;
                if (z2 && arrayList.size() == i - 1) {
                    break;
                }
                a = m28a(charSequence, str, length, z);
                i2 = length;
                i4 = a;
            } while (a != -1);
            arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: a */
    public static final List<String> m21a(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C10059q.m1637b(charSequence, "$this$split");
        C10059q.m1637b(strArr, "delimiters");
        boolean z2 = true;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                z2 = false;
            }
            if (!z2) {
                return m26a(charSequence, str, z, i);
            }
        }
        Iterable<C10080c> a = C9902h.m1811a(m22a(charSequence, strArr, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(C9979o.m1705a(a, 10));
        for (C10080c cVar : a) {
            arrayList.add(m31a(charSequence, cVar));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static /* synthetic */ List m20a(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m21a(charSequence, strArr, z, i);
    }

    /* renamed from: a */
    public static final boolean m32a(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        C10059q.m1637b(charSequence, "$this$regionMatchesImpl");
        C10059q.m1637b(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!C9909b.m1802a(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static final int m18b(CharSequence charSequence, String str, int i, boolean z) {
        C10059q.m1637b(charSequence, "$this$lastIndexOf");
        C10059q.m1637b(str, "string");
        return (z || !(charSequence instanceof String)) ? m30a(charSequence, (CharSequence) str, i, 0, z, true) : ((String) charSequence).lastIndexOf(str, i);
    }

    /* renamed from: b */
    public static /* synthetic */ int m17b(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m13c(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m18b(charSequence, str, i, z);
    }

    /* renamed from: b */
    public static final AbstractC9896b<String> m15b(CharSequence charSequence, String[] strArr, boolean z, int i) {
        C10059q.m1637b(charSequence, "$this$splitToSequence");
        C10059q.m1637b(strArr, "delimiters");
        return C9902h.m1810a(m22a(charSequence, strArr, 0, z, i, 2, null), new StringsKt__StringsKt$splitToSequence$1(charSequence));
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC9896b m14b(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m15b(charSequence, strArr, z, i);
    }

    /* renamed from: b */
    public static final C10080c m19b(CharSequence charSequence) {
        C10059q.m1637b(charSequence, "$this$indices");
        return new C10080c(0, charSequence.length() - 1);
    }

    /* renamed from: b */
    public static final Pair<Integer, String> m16b(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object obj;
        Object obj2;
        Pair<Integer, String> pair = null;
        if (z || collection.size() != 1) {
            C10077a cVar = !z2 ? new C10080c(C10084f.m1571a(i, 0), charSequence.length()) : C10084f.m1568c(C10084f.m1569b(i, m13c(charSequence)), 0);
            if (charSequence instanceof String) {
                int first = cVar.getFirst();
                int last = cVar.getLast();
                int a = cVar.m1578a();
                if (a >= 0) {
                    if (first > last) {
                        return null;
                    }
                } else if (first < last) {
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
                        String str = (String) obj2;
                        if (C9925q.m1784a(str, 0, (String) charSequence, first, str.length(), z)) {
                            break;
                        }
                    }
                    String str2 = (String) obj2;
                    if (str2 != null) {
                        return C9928f.m1777a(Integer.valueOf(first), str2);
                    }
                    if (first == last) {
                        return null;
                    }
                    first += a;
                }
            } else {
                int first2 = cVar.getFirst();
                int last2 = cVar.getLast();
                int a2 = cVar.m1578a();
                if (a2 >= 0) {
                    if (first2 > last2) {
                        return null;
                    }
                } else if (first2 < last2) {
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
                        String str3 = (String) obj;
                        if (m32a(str3, 0, charSequence, first2, str3.length(), z)) {
                            break;
                        }
                    }
                    String str4 = (String) obj;
                    if (str4 != null) {
                        return C9928f.m1777a(Integer.valueOf(first2), str4);
                    }
                    if (first2 == last2) {
                        return null;
                    }
                    first2 += a2;
                }
            }
        } else {
            String str5 = (String) C9986v.m1696b(collection);
            int a3 = !z2 ? m27a(charSequence, str5, i, false, 4, (Object) null) : m17b(charSequence, str5, i, false, 4, (Object) null);
            if (a3 >= 0) {
                pair = C9928f.m1777a(Integer.valueOf(a3), str5);
            }
            return pair;
        }
    }

    /* renamed from: c */
    public static final int m13c(CharSequence charSequence) {
        C10059q.m1637b(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    /* renamed from: d */
    public static final AbstractC9976l m12d(CharSequence charSequence) {
        C10059q.m1637b(charSequence, "$this$iterator");
        return new C10488a(charSequence);
    }
}
