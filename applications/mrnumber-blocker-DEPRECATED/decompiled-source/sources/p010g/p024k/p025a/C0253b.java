package p010g.p024k.p025a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: g.k.a.b */
/* loaded from: classes2-dex2jar.jar:g/k/a/b.class */
public final class C0253b {

    /* renamed from: a */
    private final String[] f512a;

    /* renamed from: g.k.a.b$b */
    /* loaded from: classes2-dex2jar.jar:g/k/a/b$b.class */
    public static final class C0255b {

        /* renamed from: a */
        private final List<String> f513a = new ArrayList(20);

        /* renamed from: d */
        private void m552d(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            } else if (!str.isEmpty()) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= 31 || charAt >= 127) {
                        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 != null) {
                    int length2 = str2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt2 = str2.charAt(i2);
                        if (charAt2 <= 31 || charAt2 >= 127) {
                            throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str2));
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("value == null");
            } else {
                throw new IllegalArgumentException("name is empty");
            }
        }

        /* renamed from: b */
        C0255b m554b(String str, String str2) {
            this.f513a.add(str);
            this.f513a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C0253b m553c() {
            return new C0253b(this);
        }

        /* renamed from: e */
        public C0255b m551e(String str) {
            int i = 0;
            while (i < this.f513a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f513a.get(i))) {
                    this.f513a.remove(i);
                    this.f513a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* renamed from: f */
        public C0255b m550f(String str, String str2) {
            m552d(str, str2);
            m551e(str);
            m554b(str, str2);
            return this;
        }
    }

    private C0253b(C0255b bVar) {
        this.f512a = (String[]) bVar.f513a.toArray(new String[bVar.f513a.size()]);
    }

    /* renamed from: a */
    public String m558a(int i) {
        int i2 = i * 2;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f512a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    /* renamed from: b */
    public int m557b() {
        return this.f512a.length / 2;
    }

    /* renamed from: c */
    public String m556c(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f512a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b = m557b();
        for (int i = 0; i < b; i++) {
            sb.append(m558a(i));
            sb.append(": ");
            sb.append(m556c(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
