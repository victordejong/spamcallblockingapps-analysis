package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4022d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.bytedance.sdk.a.b.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/l.class */
public final class C4121l {

    /* renamed from: a */
    private static final Pattern f15084a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b */
    private static final Pattern f15085b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c */
    private static final Pattern f15086c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d */
    private static final Pattern f15087d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e */
    private final String f15088e;

    /* renamed from: f */
    private final String f15089f;

    /* renamed from: g */
    private final long f15090g;

    /* renamed from: h */
    private final String f15091h;

    /* renamed from: i */
    private final String f15092i;

    /* renamed from: j */
    private final boolean f15093j;

    /* renamed from: k */
    private final boolean f15094k;

    /* renamed from: l */
    private final boolean f15095l;

    /* renamed from: m */
    private final boolean f15096m;

    private C4121l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f15088e = str;
        this.f15089f = str2;
        this.f15090g = j;
        this.f15091h = str3;
        this.f15092i = str4;
        this.f15093j = z;
        this.f15094k = z2;
        this.f15096m = z3;
        this.f15095l = z4;
    }

    /* renamed from: a */
    private static int m36512a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    private static long m36514a(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 0) {
                return parseLong;
            }
            return Long.MIN_VALUE;
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            }
            return str.startsWith(VerificationLanguage.REGION_PREFIX) ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
    }

    /* renamed from: a */
    private static long m36513a(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m36512a = m36512a(str, i, i2, false);
        Matcher matcher = f15087d.matcher(str);
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        while (m36512a < i2) {
            int m36512a2 = m36512a(str, m36512a + 1, i2, true);
            matcher.region(m36512a, m36512a2);
            if (i10 == -1 && matcher.usePattern(f15087d).matches()) {
                i7 = Integer.parseInt(matcher.group(1));
                i6 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
                i8 = i9;
                i4 = i11;
                i3 = i12;
            } else if (i11 != -1 || !matcher.usePattern(f15086c).matches()) {
                if (i12 == -1) {
                    Pattern pattern = f15085b;
                    if (matcher.usePattern(pattern).matches()) {
                        i3 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                        i8 = i9;
                        i7 = i10;
                        i4 = i11;
                        i6 = i13;
                        i5 = i14;
                    }
                }
                i8 = i9;
                i7 = i10;
                i4 = i11;
                i3 = i12;
                i6 = i13;
                i5 = i14;
                if (i9 == -1) {
                    i8 = i9;
                    i7 = i10;
                    i4 = i11;
                    i3 = i12;
                    i6 = i13;
                    i5 = i14;
                    if (matcher.usePattern(f15084a).matches()) {
                        i8 = Integer.parseInt(matcher.group(1));
                        i5 = i14;
                        i6 = i13;
                        i3 = i12;
                        i4 = i11;
                        i7 = i10;
                    }
                }
            } else {
                i4 = Integer.parseInt(matcher.group(1));
                i8 = i9;
                i7 = i10;
                i3 = i12;
                i6 = i13;
                i5 = i14;
            }
            i9 = i8;
            i10 = i7;
            i11 = i4;
            i12 = i3;
            i13 = i6;
            i14 = i5;
            m36512a = m36512a(str, m36512a2 + 1, i2, false);
        }
        int i15 = i9;
        if (i9 >= 70) {
            i15 = i9;
            if (i9 <= 99) {
                i15 = i9 + 1900;
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
            if (i12 == -1) {
                throw new IllegalArgumentException();
            }
            if (i11 <= 0 || i11 > 31) {
                throw new IllegalArgumentException();
            }
            if (i10 < 0 || i10 > 23) {
                throw new IllegalArgumentException();
            }
            if (i13 < 0 || i13 > 59) {
                throw new IllegalArgumentException();
            }
            if (i14 < 0 || i14 > 59) {
                throw new IllegalArgumentException();
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(C4015c.f14580g);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i16);
            gregorianCalendar.set(2, i12 - 1);
            gregorianCalendar.set(5, i11);
            gregorianCalendar.set(11, i10);
            gregorianCalendar.set(12, i13);
            gregorianCalendar.set(13, i14);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x023e, code lost:
        if (r0 > okhttp3.internal.http.DatesKt.MAX_DATE) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.bytedance.sdk.p127a.p129b.C4121l m36517a(long r13, com.bytedance.sdk.p127a.p129b.C4134s r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.C4121l.m36517a(long, com.bytedance.sdk.a.b.s, java.lang.String):com.bytedance.sdk.a.b.l");
    }

    /* renamed from: a */
    public static C4121l m36515a(C4134s c4134s, String str) {
        return m36517a(System.currentTimeMillis(), c4134s, str);
    }

    /* renamed from: a */
    public static List<C4121l> m36516a(C4134s c4134s, C4132r c4132r) {
        List<String> m36465b = c4132r.m36465b("Set-Cookie");
        int size = m36465b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            C4121l m36515a = m36515a(c4134s, m36465b.get(i));
            ArrayList arrayList2 = arrayList;
            if (m36515a != null) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(m36515a);
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: a */
    private static boolean m36511a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !C4015c.m36891c(str);
    }

    /* renamed from: b */
    private static String m36508b(String str) {
        if (!str.endsWith(".")) {
            String str2 = str;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
            }
            String m36911a = C4015c.m36911a(str2);
            if (m36911a == null) {
                throw new IllegalArgumentException();
            }
            return m36911a;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final String m36518a() {
        return this.f15088e;
    }

    /* renamed from: a */
    final String m36510a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15088e);
        sb.append('=');
        sb.append(this.f15089f);
        if (this.f15095l) {
            if (this.f15090g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C4022d.m36884a(new Date(this.f15090g)));
            }
        }
        if (!this.f15096m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f15091h);
        }
        sb.append("; path=");
        sb.append(this.f15092i);
        if (this.f15093j) {
            sb.append("; secure");
        }
        if (this.f15094k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public final String m36509b() {
        return this.f15089f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4121l)) {
            return false;
        }
        C4121l c4121l = (C4121l) obj;
        return c4121l.f15088e.equals(this.f15088e) && c4121l.f15089f.equals(this.f15089f) && c4121l.f15091h.equals(this.f15091h) && c4121l.f15092i.equals(this.f15092i) && c4121l.f15090g == this.f15090g && c4121l.f15093j == this.f15093j && c4121l.f15094k == this.f15094k && c4121l.f15095l == this.f15095l && c4121l.f15096m == this.f15096m;
    }

    public final int hashCode() {
        int hashCode = this.f15088e.hashCode();
        int hashCode2 = this.f15089f.hashCode();
        int hashCode3 = this.f15091h.hashCode();
        int hashCode4 = this.f15092i.hashCode();
        long j = this.f15090g;
        return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f15093j ? 1 : 0)) * 31) + (!this.f15094k ? 1 : 0)) * 31) + (!this.f15095l ? 1 : 0)) * 31) + (!this.f15096m ? 1 : 0);
    }

    public final String toString() {
        return m36510a(false);
    }
}
