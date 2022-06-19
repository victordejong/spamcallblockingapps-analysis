package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import okhttp3.internal.p193b.C5439d;
/* renamed from: okhttp3.l */
/* loaded from: classes-dex2jar.jar:okhttp3/l.class */
public final class C5526l {

    /* renamed from: a */
    private static final Pattern f23092a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b */
    private static final Pattern f23093b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c */
    private static final Pattern f23094c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d */
    private static final Pattern f23095d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e */
    private final String f23096e;

    /* renamed from: f */
    private final String f23097f;

    /* renamed from: g */
    private final long f23098g;

    /* renamed from: h */
    private final String f23099h;

    /* renamed from: i */
    private final String f23100i;

    /* renamed from: j */
    private final boolean f23101j;

    /* renamed from: k */
    private final boolean f23102k;

    /* renamed from: l */
    private final boolean f23103l;

    /* renamed from: m */
    private final boolean f23104m;

    private C5526l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f23096e = str;
        this.f23097f = str2;
        this.f23098g = j;
        this.f23099h = str3;
        this.f23100i = str4;
        this.f23101j = z;
        this.f23102k = z2;
        this.f23104m = z3;
        this.f23103l = z4;
    }

    /* renamed from: a */
    private static int m332a(String str, int i, int i2, boolean z) {
        int i3;
        while (true) {
            i3 = i2;
            if (i >= i2) {
                break;
            }
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                i3 = i;
                break;
            }
            i++;
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    private static long m334a(String str) {
        char c;
        try {
            c = Long.parseLong(str);
            if (c <= 0) {
                c = 0;
            }
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            }
            c = 0;
            if (!str.startsWith("-")) {
                c = 65535;
            }
        }
        return c;
    }

    /* renamed from: a */
    private static long m333a(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m332a = m332a(str, i, i2, false);
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        Matcher matcher = f23095d.matcher(str);
        while (m332a < i2) {
            int m332a2 = m332a(str, m332a + 1, i2, true);
            matcher.region(m332a, m332a2);
            if (i9 == -1 && matcher.usePattern(f23095d).matches()) {
                i8 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i6 = Integer.parseInt(matcher.group(3));
                i5 = i12;
                i4 = i13;
                i3 = i14;
            } else if (i12 == -1 && matcher.usePattern(f23094c).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
                i3 = i14;
                i4 = i13;
                i6 = i11;
                i7 = i10;
                i8 = i9;
            } else if (i13 != -1 || !matcher.usePattern(f23093b).matches()) {
                i3 = i14;
                i4 = i13;
                i5 = i12;
                i6 = i11;
                i7 = i10;
                i8 = i9;
                if (i14 == -1) {
                    i3 = i14;
                    i4 = i13;
                    i5 = i12;
                    i6 = i11;
                    i7 = i10;
                    i8 = i9;
                    if (matcher.usePattern(f23092a).matches()) {
                        i3 = Integer.parseInt(matcher.group(1));
                        i4 = i13;
                        i5 = i12;
                        i6 = i11;
                        i7 = i10;
                        i8 = i9;
                    }
                }
            } else {
                i4 = f23093b.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                i3 = i14;
                i5 = i12;
                i6 = i11;
                i7 = i10;
                i8 = i9;
            }
            i14 = i3;
            i13 = i4;
            i12 = i5;
            i11 = i6;
            i10 = i7;
            i9 = i8;
            m332a = m332a(str, m332a2 + 1, i2, false);
        }
        int i15 = i14;
        if (i14 >= 70) {
            i15 = i14;
            if (i14 <= 99) {
                i15 = i14 + 1900;
            }
        }
        int i16 = i15;
        if (i15 >= 0) {
            i16 = i15;
            if (i15 <= 69) {
                i16 = i15 + 2000;
            }
        }
        if (i16 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i13 == -1) {
            throw new IllegalArgumentException();
        }
        if (i12 < 1 || i12 > 31) {
            throw new IllegalArgumentException();
        }
        if (i9 < 0 || i9 > 23) {
            throw new IllegalArgumentException();
        }
        if (i10 < 0 || i10 > 59) {
            throw new IllegalArgumentException();
        }
        if (i11 < 0 || i11 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(C5449c.f22762g);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i16);
        gregorianCalendar.set(2, i13 - 1);
        gregorianCalendar.set(5, i12);
        gregorianCalendar.set(11, i9);
        gregorianCalendar.set(12, i10);
        gregorianCalendar.set(13, i11);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    /* renamed from: a */
    public static List<C5526l> m329a(C5541t c5541t, C5539s c5539s) {
        List<String> m277b = c5539s.m277b("Set-Cookie");
        ArrayList arrayList = null;
        int size = m277b.size();
        for (int i = 0; i < size; i++) {
            C5526l m330a = m330a(c5541t, m277b.get(i));
            if (m330a != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m330a);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c9, code lost:
        if (r0 > 253402300799999L) goto L67;
     */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @javax.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static okhttp3.C5526l m335a(long r13, okhttp3.C5541t r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C5526l.m335a(long, okhttp3.t, java.lang.String):okhttp3.l");
    }

    @Nullable
    /* renamed from: a */
    public static C5526l m330a(C5541t c5541t, String str) {
        return m335a(System.currentTimeMillis(), c5541t, str);
    }

    /* renamed from: a */
    private static boolean m331a(String str, String str2) {
        boolean z = true;
        if (!str.equals(str2) && (!str.endsWith(str2) || str.charAt((str.length() - str2.length()) - 1) != '.' || C5449c.m649c(str))) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static String m326b(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        String str2 = str;
        if (str.startsWith(".")) {
            str2 = str.substring(1);
        }
        String m670a = C5449c.m670a(str2);
        if (m670a != null) {
            return m670a;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public String m336a() {
        return this.f23096e;
    }

    /* renamed from: a */
    String m328a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f23096e);
        sb.append('=');
        sb.append(this.f23097f);
        if (this.f23103l) {
            if (this.f23098g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=").append(C5439d.m711a(new Date(this.f23098g)));
            }
        }
        if (!this.f23104m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f23099h);
        }
        sb.append("; path=").append(this.f23100i);
        if (this.f23101j) {
            sb.append("; secure");
        }
        if (this.f23102k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public String m327b() {
        return this.f23097f;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (!(obj instanceof C5526l)) {
            z = false;
        } else {
            C5526l c5526l = (C5526l) obj;
            z = false;
            if (c5526l.f23096e.equals(this.f23096e)) {
                z = false;
                if (c5526l.f23097f.equals(this.f23097f)) {
                    z = false;
                    if (c5526l.f23099h.equals(this.f23099h)) {
                        z = false;
                        if (c5526l.f23100i.equals(this.f23100i)) {
                            z = false;
                            if (c5526l.f23098g == this.f23098g) {
                                z = false;
                                if (c5526l.f23101j == this.f23101j) {
                                    z = false;
                                    if (c5526l.f23102k == this.f23102k) {
                                        z = false;
                                        if (c5526l.f23103l == this.f23103l) {
                                            z = false;
                                            if (c5526l.f23104m == this.f23104m) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f23096e.hashCode();
        int hashCode2 = this.f23097f.hashCode();
        int hashCode3 = this.f23099h.hashCode();
        int hashCode4 = this.f23100i.hashCode();
        int i2 = (int) (this.f23098g ^ (this.f23098g >>> 32));
        int i3 = this.f23101j ? 0 : 1;
        int i4 = this.f23102k ? 0 : 1;
        int i5 = this.f23103l ? 0 : 1;
        if (!this.f23104m) {
            i = 1;
        }
        return ((i5 + ((i4 + ((i3 + ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31)) * 31)) * 31)) * 31) + i;
    }

    public String toString() {
        return m328a(false);
    }
}
