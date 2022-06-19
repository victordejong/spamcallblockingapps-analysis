package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.s */
/* loaded from: classes-dex2jar.jar:okhttp3/s.class */
public final class C5539s {

    /* renamed from: a */
    private final String[] f23126a;

    /* renamed from: okhttp3.s$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/s$a.class */
    public static final class C5540a {

        /* renamed from: a */
        final List<String> f23127a = new ArrayList(20);

        /* renamed from: d */
        private void m270d(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(C5449c.m662a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char charAt2 = str2.charAt(i2);
                if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                    throw new IllegalArgumentException(C5449c.m662a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        /* renamed from: a */
        public C5540a m275a(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? m272b(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? m272b("", str.substring(1)) : m272b("", str);
        }

        /* renamed from: a */
        public C5540a m274a(String str, String str2) {
            m270d(str, str2);
            return m272b(str, str2);
        }

        /* renamed from: a */
        public C5539s m276a() {
            return new C5539s(this);
        }

        /* renamed from: b */
        public C5540a m273b(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f23127a.size()) {
                    int i3 = i2;
                    if (str.equalsIgnoreCase(this.f23127a.get(i2))) {
                        this.f23127a.remove(i2);
                        this.f23127a.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return this;
                }
            }
        }

        /* renamed from: b */
        public C5540a m272b(String str, String str2) {
            this.f23127a.add(str);
            this.f23127a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C5540a m271c(String str, String str2) {
            m270d(str, str2);
            m273b(str);
            m272b(str, str2);
            return this;
        }
    }

    C5539s(C5540a c5540a) {
        this.f23126a = (String[]) c5540a.f23127a.toArray(new String[c5540a.f23127a.size()]);
    }

    private C5539s(String[] strArr) {
        this.f23126a = strArr;
    }

    /* renamed from: a */
    private static String m280a(String[] strArr, String str) {
        String str2;
        int length = strArr.length - 2;
        while (true) {
            if (length < 0) {
                str2 = null;
                break;
            } else if (str.equalsIgnoreCase(strArr[length])) {
                str2 = strArr[length + 1];
                break;
            } else {
                length -= 2;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static C5539s m281a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
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
        return new C5539s(strArr2);
    }

    /* renamed from: a */
    public int m284a() {
        return this.f23126a.length / 2;
    }

    /* renamed from: a */
    public String m283a(int i) {
        return this.f23126a[i * 2];
    }

    @Nullable
    /* renamed from: a */
    public String m282a(String str) {
        return m280a(this.f23126a, str);
    }

    /* renamed from: b */
    public String m278b(int i) {
        return this.f23126a[(i * 2) + 1];
    }

    /* renamed from: b */
    public List<String> m277b(String str) {
        ArrayList arrayList = null;
        int i = 0;
        int m284a = m284a();
        while (i < m284a) {
            ArrayList arrayList2 = arrayList;
            if (str.equalsIgnoreCase(m283a(i))) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(m278b(i));
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: b */
    public C5540a m279b() {
        C5540a c5540a = new C5540a();
        Collections.addAll(c5540a.f23127a, this.f23126a);
        return c5540a;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C5539s) && Arrays.equals(((C5539s) obj).f23126a, this.f23126a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f23126a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m284a = m284a();
        for (int i = 0; i < m284a; i++) {
            sb.append(m283a(i)).append(": ").append(m278b(i)).append("\n");
        }
        return sb.toString();
    }
}
