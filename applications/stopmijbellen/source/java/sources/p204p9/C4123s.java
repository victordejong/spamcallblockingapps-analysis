package p204p9;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import p011aa.C0053f;
import p214q9.C4171c;
/* renamed from: p9.s */
/* loaded from: classes2-dex2jar.jar:p9/s.class */
public final class C4123s {

    /* renamed from: j */
    public static final char[] f12954j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final String f12955a;

    /* renamed from: b */
    public final String f12956b;

    /* renamed from: c */
    public final String f12957c;

    /* renamed from: d */
    public final String f12958d;

    /* renamed from: e */
    public final int f12959e;

    /* renamed from: f */
    public final List<String> f12960f;
    @Nullable

    /* renamed from: g */
    public final List<String> f12961g;
    @Nullable

    /* renamed from: h */
    public final String f12962h;

    /* renamed from: i */
    public final String f12963i;

    /* renamed from: p9.s$a */
    /* loaded from: classes2-dex2jar.jar:p9/s$a.class */
    public static final class C4124a {
        @Nullable

        /* renamed from: a */
        public String f12964a;
        @Nullable

        /* renamed from: d */
        public String f12967d;

        /* renamed from: f */
        public final List<String> f12969f;
        @Nullable

        /* renamed from: g */
        public List<String> f12970g;
        @Nullable

        /* renamed from: h */
        public String f12971h;

        /* renamed from: b */
        public String f12965b = "";

        /* renamed from: c */
        public String f12966c = "";

        /* renamed from: e */
        public int f12968e = -1;

        public C4124a() {
            ArrayList arrayList = new ArrayList();
            this.f12969f = arrayList;
            arrayList.add("");
        }

        /* renamed from: a */
        public C4123s m1374a() {
            if (this.f12964a != null) {
                if (this.f12967d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new C4123s(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: b */
        public C4124a m1373b(@Nullable String str) {
            this.f12970g = str != null ? C4123s.m1377o(C4123s.m1390b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:118:0x033d, code lost:
            if (r18 <= 65535) goto L120;
         */
        /* JADX WARN: Code restructure failed: missing block: B:179:0x05f4, code lost:
            if (r15 != false) goto L137;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
            if (r0 == ':') goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x037b  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x039c  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x048a  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x065b  */
        /* JADX WARN: Removed duplicated region for block: B:230:0x0302 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x01cf  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01da  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x02bb  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:138:0x0465 -> B:139:0x0483). Please submit an issue!!! */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p204p9.C4123s.C4124a m1372c(@javax.annotation.Nullable p204p9.C4123s r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 1678
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p204p9.C4123s.C4124a.m1372c(p9.s, java.lang.String):p9.s$a");
        }

        /* renamed from: d */
        public C4124a m1371d(String str) {
            this.f12966c = C4123s.m1390b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: e */
        public C4124a m1370e(String str) {
            this.f12965b = C4123s.m1390b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f12964a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f12965b.isEmpty() || !this.f12966c.isEmpty()) {
                sb.append(this.f12965b);
                if (!this.f12966c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f12966c);
                }
                sb.append('@');
            }
            String str2 = this.f12967d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f12967d);
                    sb.append(']');
                } else {
                    sb.append(this.f12967d);
                }
            }
            int i = this.f12968e;
            if (i != -1 || this.f12964a != null) {
                if (i == -1) {
                    i = C4123s.m1389c(this.f12964a);
                }
                String str3 = this.f12964a;
                if (str3 == null || i != C4123s.m1389c(str3)) {
                    sb.append(':');
                    sb.append(i);
                }
            }
            List<String> list = this.f12969f;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append(list.get(i2));
            }
            if (this.f12970g != null) {
                sb.append('?');
                C4123s.m1383i(sb, this.f12970g);
            }
            if (this.f12971h != null) {
                sb.append('#');
                sb.append(this.f12971h);
            }
            return sb.toString();
        }
    }

    public C4123s(C4124a c4124a) {
        this.f12955a = c4124a.f12964a;
        this.f12956b = m1380l(c4124a.f12965b, false);
        this.f12957c = m1380l(c4124a.f12966c, false);
        this.f12958d = c4124a.f12967d;
        int i = c4124a.f12968e;
        this.f12959e = i == -1 ? m1389c(c4124a.f12964a) : i;
        this.f12960f = m1379m(c4124a.f12969f, false);
        List<String> list = c4124a.f12970g;
        this.f12961g = list != null ? m1379m(list, true) : null;
        String str = c4124a.f12971h;
        this.f12962h = str != null ? m1381k(str, 0, str.length(), false) : null;
        this.f12963i = c4124a.toString();
    }

    /* renamed from: a */
    public static String m1391a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3;
        C0053f c0053f;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                return str.substring(i, i2);
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m1378n(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        C0053f c0053f2 = new C0053f();
        c0053f2.m8847e0(str, i, i3);
        C0053f c0053f3 = null;
        while (true) {
            C0053f c0053f4 = c0053f3;
            if (i3 < i2) {
                int codePointAt2 = str.codePointAt(i3);
                if (z) {
                    c0053f = c0053f4;
                    if (codePointAt2 != 9) {
                        c0053f = c0053f4;
                        if (codePointAt2 != 10) {
                            c0053f = c0053f4;
                            if (codePointAt2 != 12) {
                                if (codePointAt2 == 13) {
                                    c0053f = c0053f4;
                                }
                            }
                        }
                    }
                    i3 += Character.charCount(codePointAt2);
                    c0053f3 = c0053f;
                }
                if (codePointAt2 == 43 && z3) {
                    c0053f2.m8848d0(z ? "+" : "%2B");
                    c0053f = c0053f4;
                } else if (codePointAt2 < 32 || codePointAt2 == 127 || ((codePointAt2 >= 128 && z4) || str2.indexOf(codePointAt2) != -1 || (codePointAt2 == 37 && (!z || (z2 && !m1378n(str, i3, i2)))))) {
                    C0053f c0053f5 = c0053f4;
                    if (c0053f4 == null) {
                        c0053f5 = new C0053f();
                    }
                    c0053f5.m8846f0(codePointAt2);
                    while (true) {
                        c0053f = c0053f5;
                        if (!c0053f5.mo8798v()) {
                            int readByte = c0053f5.readByte() & 255;
                            c0053f2.m8854Y(37);
                            char[] cArr = f12954j;
                            c0053f2.m8854Y(cArr[(readByte >> 4) & 15]);
                            c0053f2.m8854Y(cArr[readByte & 15]);
                        }
                    }
                } else {
                    c0053f2.m8846f0(codePointAt2);
                    c0053f = c0053f4;
                }
                i3 += Character.charCount(codePointAt2);
                c0053f3 = c0053f;
            } else {
                return c0053f2.m8861D();
            }
        }
    }

    /* renamed from: b */
    public static String m1390b(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m1391a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: c */
    public static int m1389c(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: i */
    public static void m1383i(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* renamed from: k */
    public static String m1381k(String str, int i, int i2, boolean z) {
        int i3;
        for (int i4 = i; i4 < i2; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                C0053f c0053f = new C0053f();
                c0053f.m8847e0(str, i, i4);
                int i5 = i4;
                while (true) {
                    int i6 = i5;
                    if (i6 >= i2) {
                        return c0053f.m8861D();
                    }
                    int codePointAt = str.codePointAt(i6);
                    if (codePointAt != 37 || (i3 = i6 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            c0053f.m8854Y(32);
                            i5 = i6 + Character.charCount(codePointAt);
                        }
                        c0053f.m8846f0(codePointAt);
                        i5 = i6 + Character.charCount(codePointAt);
                    } else {
                        int m1330f = C4171c.m1330f(str.charAt(i6 + 1));
                        int m1330f2 = C4171c.m1330f(str.charAt(i3));
                        if (m1330f != -1 && m1330f2 != -1) {
                            c0053f.m8854Y((m1330f << 4) + m1330f2);
                            i6 = i3;
                            i5 = i6 + Character.charCount(codePointAt);
                        }
                        c0053f.m8846f0(codePointAt);
                        i5 = i6 + Character.charCount(codePointAt);
                    }
                }
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: l */
    public static String m1380l(String str, boolean z) {
        return m1381k(str, 0, str.length(), z);
    }

    /* renamed from: n */
    public static boolean m1378n(String str, int i, int i2) {
        int i3 = i + 2;
        boolean z = true;
        if (i3 >= i2 || str.charAt(i) != '%' || C4171c.m1330f(str.charAt(i + 1)) == -1 || C4171c.m1330f(str.charAt(i3)) == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public static List<String> m1377o(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 <= str.length()) {
                int indexOf = str.indexOf(38, i2);
                int i3 = indexOf;
                if (indexOf == -1) {
                    i3 = str.length();
                }
                int indexOf2 = str.indexOf(61, i2);
                if (indexOf2 == -1 || indexOf2 > i3) {
                    arrayList.add(str.substring(i2, i3));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i2, indexOf2));
                    arrayList.add(str.substring(indexOf2 + 1, i3));
                }
                i = i3 + 1;
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: d */
    public String m1388d() {
        if (this.f12957c.isEmpty()) {
            return "";
        }
        int indexOf = this.f12963i.indexOf(58, this.f12955a.length() + 3);
        return this.f12963i.substring(indexOf + 1, this.f12963i.indexOf(64));
    }

    /* renamed from: e */
    public String m1387e() {
        int indexOf = this.f12963i.indexOf(47, this.f12955a.length() + 3);
        String str = this.f12963i;
        return this.f12963i.substring(indexOf, C4171c.m1327i(str, indexOf, str.length(), "?#"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C4123s) && ((C4123s) obj).f12963i.equals(this.f12963i);
    }

    /* renamed from: f */
    public List<String> m1386f() {
        int indexOf = this.f12963i.indexOf(47, this.f12955a.length() + 3);
        String str = this.f12963i;
        int m1327i = C4171c.m1327i(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m1327i) {
            int i = indexOf + 1;
            indexOf = C4171c.m1328h(this.f12963i, i, m1327i, '/');
            arrayList.add(this.f12963i.substring(i, indexOf));
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: g */
    public String m1385g() {
        if (this.f12961g == null) {
            return null;
        }
        int indexOf = this.f12963i.indexOf(63) + 1;
        String str = this.f12963i;
        return this.f12963i.substring(indexOf, C4171c.m1328h(str, indexOf, str.length(), '#'));
    }

    /* renamed from: h */
    public String m1384h() {
        if (this.f12956b.isEmpty()) {
            return "";
        }
        int length = this.f12955a.length() + 3;
        String str = this.f12963i;
        return this.f12963i.substring(length, C4171c.m1327i(str, length, str.length(), ":@"));
    }

    public int hashCode() {
        return this.f12963i.hashCode();
    }

    /* renamed from: j */
    public C4124a m1382j() {
        C4124a c4124a = new C4124a();
        c4124a.f12964a = this.f12955a;
        c4124a.f12965b = m1384h();
        c4124a.f12966c = m1388d();
        c4124a.f12967d = this.f12958d;
        c4124a.f12968e = this.f12959e != m1389c(this.f12955a) ? this.f12959e : -1;
        c4124a.f12969f.clear();
        c4124a.f12969f.addAll(m1386f());
        c4124a.m1373b(m1385g());
        c4124a.f12971h = this.f12962h == null ? null : this.f12963i.substring(this.f12963i.indexOf(35) + 1);
        return c4124a;
    }

    /* renamed from: m */
    public final List<String> m1379m(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m1381k(str, 0, str.length(), z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: p */
    public URI m1376p() {
        C4124a m1382j = m1382j();
        int size = m1382j.f12969f.size();
        for (int i = 0; i < size; i++) {
            m1382j.f12969f.set(i, m1390b(m1382j.f12969f.get(i), "[]", true, true, false, true));
        }
        List<String> list = m1382j.f12970g;
        if (list != null) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = m1382j.f12970g.get(i2);
                if (str != null) {
                    m1382j.f12970g.set(i2, m1390b(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = m1382j.f12971h;
        if (str2 != null) {
            m1382j.f12971h = m1390b(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String c4124a = m1382j.toString();
        try {
            return new URI(c4124a);
        } catch (URISyntaxException e) {
            try {
                return URI.create(c4124a.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: q */
    public URL m1375q() {
        try {
            return new URL(this.f12963i);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String toString() {
        return this.f12963i;
    }
}
