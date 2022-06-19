package p204p9;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import p214q9.C4171c;
/* renamed from: p9.r */
/* loaded from: classes2-dex2jar.jar:p9/r.class */
public final class C4121r {

    /* renamed from: a */
    public final String[] f12952a;

    /* renamed from: p9.r$a */
    /* loaded from: classes2-dex2jar.jar:p9/r$a.class */
    public static final class C4122a {

        /* renamed from: a */
        public final List<String> f12953a = new ArrayList(20);

        /* renamed from: a */
        public C4122a m1395a(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                m1394b(str.substring(0, indexOf), str.substring(indexOf + 1));
                return this;
            } else if (!str.startsWith(":")) {
                this.f12953a.add("");
                this.f12953a.add(str.trim());
                return this;
            } else {
                String substring = str.substring(1);
                this.f12953a.add("");
                this.f12953a.add(substring.trim());
                return this;
            }
        }

        /* renamed from: b */
        public C4122a m1394b(String str, String str2) {
            this.f12953a.add(str);
            this.f12953a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public String m1393c(String str) {
            for (int size = this.f12953a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f12953a.get(size))) {
                    return this.f12953a.get(size + 1);
                }
            }
            return null;
        }

        /* renamed from: d */
        public C4122a m1392d(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f12953a.size()) {
                    int i3 = i2;
                    if (str.equalsIgnoreCase(this.f12953a.get(i2))) {
                        this.f12953a.remove(i2);
                        this.f12953a.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return this;
                }
            }
        }
    }

    public C4121r(C4122a c4122a) {
        List<String> list = c4122a.f12953a;
        this.f12952a = (String[]) list.toArray(new String[list.size()]);
    }

    /* renamed from: a */
    public static void m1403a(String str) {
        Objects.requireNonNull(str, "name == null");
        if (!str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(C4171c.m1324l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            return;
        }
        throw new IllegalArgumentException("name is empty");
    }

    /* renamed from: b */
    public static void m1402b(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    throw new IllegalArgumentException(C4171c.m1324l("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException(C0082b.m8755g("value for name ", str2, " == null"));
    }

    @Nullable
    /* renamed from: c */
    public String m1401c(String str) {
        String str2;
        String[] strArr = this.f12952a;
        int length = strArr.length;
        while (true) {
            int i = length - 2;
            if (i < 0) {
                str2 = null;
                break;
            }
            length = i;
            if (str.equalsIgnoreCase(strArr[i])) {
                str2 = strArr[i + 1];
                break;
            }
        }
        return str2;
    }

    /* renamed from: d */
    public String m1400d(int i) {
        return this.f12952a[i * 2];
    }

    /* renamed from: e */
    public C4122a m1399e() {
        C4122a c4122a = new C4122a();
        Collections.addAll(c4122a.f12953a, this.f12952a);
        return c4122a;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C4121r) && Arrays.equals(((C4121r) obj).f12952a, this.f12952a);
    }

    /* renamed from: f */
    public int m1398f() {
        return this.f12952a.length / 2;
    }

    /* renamed from: g */
    public String m1397g(int i) {
        return this.f12952a[(i * 2) + 1];
    }

    /* renamed from: h */
    public List<String> m1396h(String str) {
        int m1398f = m1398f();
        ArrayList arrayList = null;
        int i = 0;
        while (i < m1398f) {
            ArrayList arrayList2 = arrayList;
            if (str.equalsIgnoreCase(m1400d(i))) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(m1397g(i));
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public int hashCode() {
        return Arrays.hashCode(this.f12952a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m1398f = m1398f();
        for (int i = 0; i < m1398f; i++) {
            sb.append(m1400d(i));
            sb.append(": ");
            sb.append(m1397g(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
