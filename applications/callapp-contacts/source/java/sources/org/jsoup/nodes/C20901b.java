package org.jsoup.nodes;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.SerializationException;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20813f;
/* renamed from: org.jsoup.nodes.b */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/b.class */
public final class C20901b implements Cloneable, Iterable<C20900a> {

    /* renamed from: d */
    private static final String[] f67451d = new String[0];

    /* renamed from: a */
    public int f67452a = 0;

    /* renamed from: b */
    public String[] f67453b;

    /* renamed from: c */
    public String[] f67454c;

    public C20901b() {
        String[] strArr = f67451d;
        this.f67453b = strArr;
        this.f67454c = strArr;
    }

    /* renamed from: a */
    private void m312a(int i) {
        C20779c.m503a(i >= this.f67452a);
        String[] strArr = this.f67453b;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = 2;
        if (length >= 2) {
            i2 = this.f67452a * 2;
        }
        if (i <= i2) {
            i = i2;
        }
        this.f67453b = m304a(strArr, i);
        this.f67454c = m304a(this.f67454c, i);
    }

    /* renamed from: a */
    private static String[] m304a(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i));
        return strArr2;
    }

    /* renamed from: b */
    public void m302b(int i) {
        C20779c.m499b(i >= this.f67452a);
        int i2 = (this.f67452a - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.f67453b;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            String[] strArr2 = this.f67454c;
            System.arraycopy(strArr2, i3, strArr2, i, i2);
        }
        int i4 = this.f67452a - 1;
        this.f67452a = i4;
        this.f67453b[i4] = null;
        this.f67454c[i4] = null;
    }

    /* renamed from: c */
    public static String m297c(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: e */
    private String m294e() {
        StringBuilder m496a = C20782c.m496a();
        try {
            m311a(m496a, new C20906f("").f67457a);
            return C20782c.m491a(m496a);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* renamed from: h */
    public static String m290h(String str) {
        return "/".concat(String.valueOf(str));
    }

    /* renamed from: i */
    public static boolean m289i(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    /* renamed from: a */
    public final int m313a() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < this.f67452a) {
                int i4 = i3;
                if (!m289i(this.f67453b[i])) {
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: a */
    public final int m310a(String str) {
        C20779c.m507a((Object) str);
        for (int i = 0; i < this.f67452a; i++) {
            if (str.equals(this.f67453b[i])) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final int m308a(C20813f c20813f) {
        int i;
        int i2;
        int i3 = 0;
        if (m303b()) {
            return 0;
        }
        boolean z = c20813f.f67375d;
        int i4 = 0;
        while (i3 < this.f67453b.length) {
            int i5 = i3 + 1;
            int i6 = i5;
            while (true) {
                String[] strArr = this.f67453b;
                if (i6 < strArr.length && strArr[i6] != null) {
                    if (!z || !strArr[i3].equals(strArr[i6])) {
                        i2 = i4;
                        i = i6;
                        if (!z) {
                            String[] strArr2 = this.f67453b;
                            i2 = i4;
                            i = i6;
                            if (!strArr2[i3].equalsIgnoreCase(strArr2[i6])) {
                            }
                        }
                        i6 = i + 1;
                        i4 = i2;
                    }
                    i2 = i4 + 1;
                    m302b(i6);
                    i = i6 - 1;
                    i6 = i + 1;
                    i4 = i2;
                }
            }
            i3 = i5;
        }
        return i4;
    }

    /* renamed from: a */
    public final C20901b m309a(String str, String str2) {
        m312a(this.f67452a + 1);
        String[] strArr = this.f67453b;
        int i = this.f67452a;
        strArr[i] = str;
        this.f67454c[i] = str2;
        this.f67452a = i + 1;
        return this;
    }

    /* renamed from: a */
    public final C20901b m307a(C20900a c20900a) {
        C20779c.m507a(c20900a);
        m300b(c20900a.f67448a, m297c(c20900a.f67449b));
        c20900a.f67450c = this;
        return this;
    }

    /* renamed from: a */
    public final void m311a(Appendable appendable, C20906f.C20907a c20907a) throws IOException {
        int i = this.f67452a;
        for (int i2 = 0; i2 < i; i2++) {
            if (!m289i(this.f67453b[i2])) {
                String str = this.f67453b[i2];
                String str2 = this.f67454c[i2];
                appendable.append(' ').append(str);
                if (!C20900a.m315a(str, str2, c20907a)) {
                    appendable.append("=\"");
                    String str3 = str2;
                    if (str2 == null) {
                        str3 = "";
                    }
                    C20914i.m257a(appendable, str3, c20907a, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    /* renamed from: a */
    public final void m306a(C20901b c20901b) {
        if (c20901b.m313a() == 0) {
            return;
        }
        m312a(this.f67452a + c20901b.f67452a);
        Iterator<C20900a> it2 = c20901b.iterator();
        while (it2.hasNext()) {
            m307a(it2.next());
        }
    }

    /* renamed from: b */
    public final int m301b(String str) {
        C20779c.m507a((Object) str);
        for (int i = 0; i < this.f67452a; i++) {
            if (str.equalsIgnoreCase(this.f67453b[i])) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final C20901b m300b(String str, String str2) {
        C20779c.m507a((Object) str);
        int m310a = m310a(str);
        if (m310a != -1) {
            this.f67454c[m310a] = str2;
        } else {
            m309a(str, str2);
        }
        return this;
    }

    /* renamed from: b */
    public final boolean m303b() {
        return this.f67452a == 0;
    }

    /* renamed from: c */
    public final C20901b clone() {
        try {
            C20901b c20901b = (C20901b) super.clone();
            c20901b.f67452a = this.f67452a;
            this.f67453b = m304a(this.f67453b, this.f67452a);
            this.f67454c = m304a(this.f67454c, this.f67452a);
            return c20901b;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public final String m295d(String str) {
        int m310a = m310a(str);
        return m310a == -1 ? "" : m297c(this.f67454c[m310a]);
    }

    /* renamed from: d */
    public final void m296d() {
        for (int i = 0; i < this.f67452a; i++) {
            String[] strArr = this.f67453b;
            strArr[i] = C20781b.m497a(strArr[i]);
        }
    }

    /* renamed from: e */
    public final String m293e(String str) {
        int m301b = m301b(str);
        return m301b == -1 ? "" : m297c(this.f67454c[m301b]);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C20901b c20901b = (C20901b) obj;
        if (this.f67452a != c20901b.f67452a || !Arrays.equals(this.f67453b, c20901b.f67453b)) {
            return false;
        }
        return Arrays.equals(this.f67454c, c20901b.f67454c);
    }

    /* renamed from: f */
    public final boolean m292f(String str) {
        return m310a(str) != -1;
    }

    /* renamed from: g */
    public final boolean m291g(String str) {
        return m301b(str) != -1;
    }

    public final int hashCode() {
        return (((this.f67452a * 31) + Arrays.hashCode(this.f67453b)) * 31) + Arrays.hashCode(this.f67454c);
    }

    @Override // java.lang.Iterable
    public final Iterator<C20900a> iterator() {
        return new Iterator<C20900a>() { // from class: org.jsoup.nodes.b.1

            /* renamed from: a */
            int f67455a = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                while (this.f67455a < C20901b.this.f67452a && C20901b.m289i(C20901b.this.f67453b[this.f67455a])) {
                    this.f67455a++;
                }
                return this.f67455a < C20901b.this.f67452a;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ C20900a next() {
                C20900a c20900a = new C20900a(C20901b.this.f67453b[this.f67455a], C20901b.this.f67454c[this.f67455a], C20901b.this);
                this.f67455a++;
                return c20900a;
            }

            @Override // java.util.Iterator
            public final void remove() {
                C20901b c20901b = C20901b.this;
                int i = this.f67455a - 1;
                this.f67455a = i;
                c20901b.m302b(i);
            }
        };
    }

    public final String toString() {
        return m294e();
    }
}
