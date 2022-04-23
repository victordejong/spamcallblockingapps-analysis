package p599h;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p599h.p600d0.C10109c;
/* renamed from: h.r */
/* loaded from: classes2-dex2jar.jar:h/r.class */
public final class C10234r {

    /* renamed from: a */
    public final String[] f37752a;

    /* renamed from: h.r$a */
    /* loaded from: classes2-dex2jar.jar:h/r$a.class */
    public static final class C10235a {

        /* renamed from: a */
        public final List<String> f37753a = new ArrayList(20);

        /* renamed from: a */
        public C10235a m962a(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                m959b(str.substring(0, indexOf), str.substring(indexOf + 1));
                return this;
            } else if (str.startsWith(":")) {
                m959b("", str.substring(1));
                return this;
            } else {
                m959b("", str);
                return this;
            }
        }

        /* renamed from: a */
        public C10235a m961a(String str, String str2) {
            C10234r.m964c(str);
            C10234r.m970a(str2, str);
            m959b(str, str2);
            return this;
        }

        /* renamed from: a */
        public C10234r m963a() {
            return new C10234r(this);
        }

        /* renamed from: b */
        public C10235a m959b(String str, String str2) {
            this.f37753a.add(str);
            this.f37753a.add(str2.trim());
            return this;
        }

        /* renamed from: b */
        public String m960b(String str) {
            for (int size = this.f37753a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f37753a.get(size))) {
                    return this.f37753a.get(size + 1);
                }
            }
            return null;
        }

        /* renamed from: c */
        public C10235a m958c(String str) {
            int i = 0;
            while (i < this.f37753a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f37753a.get(i))) {
                    this.f37753a.remove(i);
                    this.f37753a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* renamed from: c */
        public C10235a m957c(String str, String str2) {
            C10234r.m964c(str);
            C10234r.m970a(str2, str);
            m958c(str);
            m959b(str, str2);
            return this;
        }
    }

    public C10234r(C10235a aVar) {
        List<String> list = aVar.f37753a;
        this.f37752a = (String[]) list.toArray(new String[list.size()]);
    }

    public C10234r(String[] strArr) {
        this.f37752a = strArr;
    }

    /* renamed from: a */
    public static C10234r m969a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        } else if (strArr.length % 2 == 0) {
            String[] strArr2 = (String[]) strArr.clone();
            for (int i = 0; i < strArr2.length; i++) {
                if (strArr2[i] != null) {
                    strArr2[i] = strArr2[i].trim();
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
                String str = strArr2[i2];
                String str2 = strArr2[i2 + 1];
                m964c(str);
                m970a(str2, str);
            }
            return new C10234r(strArr2);
        } else {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
    }

    /* renamed from: a */
    public static String m968a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m970a(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    throw new IllegalArgumentException(C10109c.m1452a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException("value for name " + str2 + " == null");
    }

    /* renamed from: c */
    public static void m964c(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (!str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(C10109c.m1452a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
        } else {
            throw new IllegalArgumentException("name is empty");
        }
    }

    /* renamed from: a */
    public C10235a m973a() {
        C10235a aVar = new C10235a();
        Collections.addAll(aVar.f37753a, this.f37752a);
        return aVar;
    }

    /* renamed from: a */
    public String m972a(int i) {
        return this.f37752a[i * 2];
    }

    /* renamed from: a */
    public String m971a(String str) {
        return m968a(this.f37752a, str);
    }

    /* renamed from: b */
    public int m967b() {
        return this.f37752a.length / 2;
    }

    /* renamed from: b */
    public String m966b(int i) {
        return this.f37752a[(i * 2) + 1];
    }

    /* renamed from: b */
    public List<String> m965b(String str) {
        int b = m967b();
        ArrayList arrayList = null;
        for (int i = 0; i < b; i++) {
            arrayList = arrayList;
            if (str.equalsIgnoreCase(m972a(i))) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(m966b(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C10234r) && Arrays.equals(((C10234r) obj).f37752a, this.f37752a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f37752a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b = m967b();
        for (int i = 0; i < b; i++) {
            sb.append(m972a(i));
            sb.append(": ");
            sb.append(m966b(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
