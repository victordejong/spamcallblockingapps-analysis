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
import okhttp3.internal.C1999c;
import okhttp3.internal.p092b.C1989d;
/* renamed from: okhttp3.l */
/* loaded from: classes-dex2jar.jar:okhttp3/l.class */
public final class C2076l {

    /* renamed from: a */
    private static final Pattern f5318a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b */
    private static final Pattern f5319b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c */
    private static final Pattern f5320c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d */
    private static final Pattern f5321d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e */
    private final String f5322e;

    /* renamed from: f */
    private final String f5323f;

    /* renamed from: g */
    private final long f5324g;

    /* renamed from: h */
    private final String f5325h;

    /* renamed from: i */
    private final String f5326i;

    /* renamed from: j */
    private final boolean f5327j;

    /* renamed from: k */
    private final boolean f5328k;

    /* renamed from: l */
    private final boolean f5329l;

    /* renamed from: m */
    private final boolean f5330m;

    private C2076l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5322e = str;
        this.f5323f = str2;
        this.f5324g = j;
        this.f5325h = str3;
        this.f5326i = str4;
        this.f5327j = z;
        this.f5328k = z2;
        this.f5330m = z3;
        this.f5329l = z4;
    }

    /* renamed from: a */
    private static int m2014a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private static long m2016a(String str) {
        char c = 0;
        try {
            ?? parseLong = Long.parseLong(str);
            if (parseLong > 0) {
                c = parseLong;
            }
            return c;
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            }
            if (!str.startsWith("-")) {
                c = 65535;
            }
            return c;
        }
    }

    /* renamed from: a */
    private static long m2015a(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m2014a = m2014a(str, i, i2, false);
        Matcher matcher = f5321d.matcher(str);
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        while (m2014a < i2) {
            int m2014a2 = m2014a(str, m2014a + 1, i2, true);
            matcher.region(m2014a, m2014a2);
            if (i13 == -1 && matcher.usePattern(f5321d).matches()) {
                i8 = Integer.parseInt(matcher.group(1));
                i6 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
                i7 = i14;
                i4 = i9;
                i3 = i10;
            } else if (i9 == -1 && matcher.usePattern(f5320c).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i7 = i14;
                i8 = i13;
                i3 = i10;
                i6 = i11;
                i5 = i12;
            } else if (i10 != -1 || !matcher.usePattern(f5319b).matches()) {
                i7 = i14;
                i8 = i13;
                i4 = i9;
                i3 = i10;
                i6 = i11;
                i5 = i12;
                if (i14 == -1) {
                    i7 = i14;
                    i8 = i13;
                    i4 = i9;
                    i3 = i10;
                    i6 = i11;
                    i5 = i12;
                    if (matcher.usePattern(f5318a).matches()) {
                        i7 = Integer.parseInt(matcher.group(1));
                        i5 = i12;
                        i6 = i11;
                        i3 = i10;
                        i4 = i9;
                        i8 = i13;
                    }
                }
            } else {
                i3 = f5319b.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                i7 = i14;
                i8 = i13;
                i4 = i9;
                i6 = i11;
                i5 = i12;
            }
            i14 = i7;
            i13 = i8;
            i9 = i4;
            i10 = i3;
            i11 = i6;
            i12 = i5;
            m2014a = m2014a(str, m2014a2 + 1, i2, false);
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
        if (i16 >= 1601) {
            if (i10 == -1) {
                throw new IllegalArgumentException();
            }
            if (i9 < 1 || i9 > 31) {
                throw new IllegalArgumentException();
            }
            if (i13 < 0 || i13 > 23) {
                throw new IllegalArgumentException();
            }
            if (i11 < 0 || i11 > 59) {
                throw new IllegalArgumentException();
            }
            if (i12 < 0 || i12 > 59) {
                throw new IllegalArgumentException();
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(C1999c.f4988g);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i16);
            gregorianCalendar.set(2, i10 - 1);
            gregorianCalendar.set(5, i9);
            gregorianCalendar.set(11, i13);
            gregorianCalendar.set(12, i11);
            gregorianCalendar.set(13, i12);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static List<C2076l> m2011a(C2089s c2089s, C2087r c2087r) {
        List<String> m1963b = c2087r.m1963b("Set-Cookie");
        int size = m1963b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            C2076l m2012a = m2012a(c2089s, m1963b.get(i));
            if (m2012a != null) {
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(m2012a);
                arrayList = arrayList2;
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x024d, code lost:
        if (r0 > 253402300799999L) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    @javax.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static okhttp3.C2076l m2017a(long r13, okhttp3.C2089s r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C2076l.m2017a(long, okhttp3.s, java.lang.String):okhttp3.l");
    }

    @Nullable
    /* renamed from: a */
    public static C2076l m2012a(C2089s c2089s, String str) {
        return m2017a(System.currentTimeMillis(), c2089s, str);
    }

    /* renamed from: a */
    private static boolean m2013a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !C1999c.m2329c(str);
    }

    /* renamed from: b */
    private static String m2008b(String str) {
        if (!str.endsWith(".")) {
            String str2 = str;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
            }
            String m2350a = C1999c.m2350a(str2);
            if (m2350a == null) {
                throw new IllegalArgumentException();
            }
            return m2350a;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public String m2018a() {
        return this.f5322e;
    }

    /* renamed from: a */
    String m2010a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5322e);
        sb.append('=');
        sb.append(this.f5323f);
        if (this.f5329l) {
            if (this.f5324g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C1989d.m2393a(new Date(this.f5324g)));
            }
        }
        if (!this.f5330m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f5325h);
        }
        sb.append("; path=");
        sb.append(this.f5326i);
        if (this.f5327j) {
            sb.append("; secure");
        }
        if (this.f5328k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public String m2009b() {
        return this.f5323f;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C2076l)) {
            return false;
        }
        C2076l c2076l = (C2076l) obj;
        boolean z = false;
        if (c2076l.f5322e.equals(this.f5322e)) {
            z = false;
            if (c2076l.f5323f.equals(this.f5323f)) {
                z = false;
                if (c2076l.f5325h.equals(this.f5325h)) {
                    z = false;
                    if (c2076l.f5326i.equals(this.f5326i)) {
                        z = false;
                        if (c2076l.f5324g == this.f5324g) {
                            z = false;
                            if (c2076l.f5327j == this.f5327j) {
                                z = false;
                                if (c2076l.f5328k == this.f5328k) {
                                    z = false;
                                    if (c2076l.f5329l == this.f5329l) {
                                        z = false;
                                        if (c2076l.f5330m == this.f5330m) {
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
        return z;
    }

    public int hashCode() {
        int hashCode = this.f5322e.hashCode();
        int hashCode2 = this.f5323f.hashCode();
        int hashCode3 = this.f5325h.hashCode();
        int hashCode4 = this.f5326i.hashCode();
        long j = this.f5324g;
        return ((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f5327j ? 1 : 0)) * 31) + (!this.f5328k ? 1 : 0)) * 31) + (!this.f5329l ? 1 : 0)) * 31) + (!this.f5330m ? 1 : 0);
    }

    public String toString() {
        return m2010a(false);
    }
}
