package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.r */
/* loaded from: classes-dex2jar.jar:okhttp3/r.class */
public final class C2087r {

    /* renamed from: a */
    private final String[] f5346a;

    /* renamed from: okhttp3.r$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/r$a.class */
    public static final class C2088a {

        /* renamed from: a */
        final List<String> f5347a = new ArrayList(20);

        /* renamed from: d */
        private void m1956d(String str, String str2) {
            if (str != null) {
                if (str.isEmpty()) {
                    throw new IllegalArgumentException("name is empty");
                }
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= ' ' || charAt >= 127) {
                        throw new IllegalArgumentException(C1999c.m2342a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 == null) {
                    throw new NullPointerException("value for name " + str + " == null");
                }
                int length2 = str2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    char charAt2 = str2.charAt(i2);
                    if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                        throw new IllegalArgumentException(C1999c.m2342a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                    }
                }
                return;
            }
            throw new NullPointerException("name == null");
        }

        /* renamed from: a */
        public C2088a m1961a(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? m1958b(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? m1958b("", str.substring(1)) : m1958b("", str);
        }

        /* renamed from: a */
        public C2088a m1960a(String str, String str2) {
            m1956d(str, str2);
            return m1958b(str, str2);
        }

        /* renamed from: a */
        public C2087r m1962a() {
            return new C2087r(this);
        }

        /* renamed from: b */
        public C2088a m1959b(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f5347a.size()) {
                    int i3 = i2;
                    if (str.equalsIgnoreCase(this.f5347a.get(i2))) {
                        this.f5347a.remove(i2);
                        this.f5347a.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return this;
                }
            }
        }

        /* renamed from: b */
        public C2088a m1958b(String str, String str2) {
            this.f5347a.add(str);
            this.f5347a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C2088a m1957c(String str, String str2) {
            m1956d(str, str2);
            m1959b(str);
            m1958b(str, str2);
            return this;
        }
    }

    C2087r(C2088a c2088a) {
        this.f5346a = (String[]) c2088a.f5347a.toArray(new String[c2088a.f5347a.size()]);
    }

    private C2087r(String[] strArr) {
        this.f5346a = strArr;
    }

    /* renamed from: a */
    private static String m1966a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C2087r m1967a(String... strArr) {
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values");
            }
            String[] strArr2 = (String[]) strArr.clone();
            for (int i = 0; i < strArr2.length; i++) {
                if (strArr2[i] == null) {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
                strArr2[i] = strArr2[i].trim();
            }
            for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
                String str = strArr2[i2];
                String str2 = strArr2[i2 + 1];
                if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                    throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
                }
            }
            return new C2087r(strArr2);
        }
        throw new NullPointerException("namesAndValues == null");
    }

    /* renamed from: a */
    public int m1970a() {
        return this.f5346a.length / 2;
    }

    /* renamed from: a */
    public String m1969a(int i) {
        return this.f5346a[i * 2];
    }

    @Nullable
    /* renamed from: a */
    public String m1968a(String str) {
        return m1966a(this.f5346a, str);
    }

    /* renamed from: b */
    public String m1964b(int i) {
        return this.f5346a[(i * 2) + 1];
    }

    /* renamed from: b */
    public List<String> m1963b(String str) {
        int m1970a = m1970a();
        ArrayList arrayList = null;
        int i = 0;
        while (i < m1970a) {
            ArrayList arrayList2 = arrayList;
            if (str.equalsIgnoreCase(m1969a(i))) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(m1964b(i));
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: b */
    public C2088a m1965b() {
        C2088a c2088a = new C2088a();
        Collections.addAll(c2088a.f5347a, this.f5346a);
        return c2088a;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C2087r) && Arrays.equals(((C2087r) obj).f5346a, this.f5346a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f5346a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m1970a = m1970a();
        for (int i = 0; i < m1970a; i++) {
            sb.append(m1969a(i));
            sb.append(": ");
            sb.append(m1964b(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
