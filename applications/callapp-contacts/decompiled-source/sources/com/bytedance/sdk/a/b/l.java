package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.a.c.d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f8115a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f8116b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f8117c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f8118d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private final String e;
    private final String f;
    private final long g;
    private final String h;
    private final String i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;

    private l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.e = str;
        this.f = str2;
        this.g = j;
        this.h = str3;
        this.i = str4;
        this.j = z;
        this.k = z2;
        this.m = z3;
        this.l = z4;
    }

    private static int a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    private static long a(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e) {
            if (str.matches("-?\\d+")) {
                return str.startsWith(VerificationLanguage.REGION_PREFIX) ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e;
        }
    }

    private static long a(String str, int i, int i2) {
        int a2 = a(str, i, i2, false);
        Matcher matcher = f8118d.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (a2 < i2) {
            int a3 = a(str, a2 + 1, i2, true);
            matcher.region(a2, a3);
            if (i4 == -1 && matcher.usePattern(f8118d).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i8 = Integer.parseInt(matcher.group(3));
                i3 = i3;
                i5 = i5;
                i6 = i6;
            } else if (i5 != -1 || !matcher.usePattern(f8117c).matches()) {
                if (i6 == -1) {
                    Pattern pattern = f8116b;
                    if (matcher.usePattern(pattern).matches()) {
                        i6 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i7 = i7;
                        i8 = i8;
                    }
                }
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                i8 = i8;
                if (i3 == -1) {
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    if (matcher.usePattern(f8115a).matches()) {
                        i3 = Integer.parseInt(matcher.group(1));
                        i8 = i8;
                        i7 = i7;
                        i6 = i6;
                        i5 = i5;
                        i4 = i4;
                    }
                }
            } else {
                i5 = Integer.parseInt(matcher.group(1));
                i3 = i3;
                i4 = i4;
                i6 = i6;
                i7 = i7;
                i8 = i8;
            }
            a2 = a(str, a3 + 1, i2, false);
        }
        int i9 = i3;
        if (i3 >= 70) {
            i9 = i3;
            if (i3 <= 99) {
                i9 = i3 + 1900;
            }
        }
        int i10 = i9;
        if (i9 >= 0) {
            i10 = i9;
            if (i9 <= 69) {
                i10 = i9 + 2000;
            }
        }
        if (i10 < 1601) {
            throw new IllegalArgumentException();
        } else if (i6 == -1) {
            throw new IllegalArgumentException();
        } else if (i5 <= 0 || i5 > 31) {
            throw new IllegalArgumentException();
        } else if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        } else if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        } else if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(c.g);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i10);
            gregorianCalendar.set(2, i6 - 1);
            gregorianCalendar.set(5, i5);
            gregorianCalendar.set(11, i4);
            gregorianCalendar.set(12, i7);
            gregorianCalendar.set(13, i8);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x023e, code lost:
        if (r0 > okhttp3.internal.http.DatesKt.MAX_DATE) goto L_0x0241;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v10 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r26v8 */
    /* JADX WARN: Type inference failed for: r26v9 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    /* JADX WARN: Type inference failed for: r41v4 */
    /* JADX WARN: Type inference failed for: r41v5 */
    /* JADX WARN: Type inference failed for: r41v6 */
    /* JADX WARN: Type inference failed for: r41v7 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.bytedance.sdk.a.b.l a(long r13, com.bytedance.sdk.a.b.s r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.l.a(long, com.bytedance.sdk.a.b.s, java.lang.String):com.bytedance.sdk.a.b.l");
    }

    public static l a(s sVar, String str) {
        return a(System.currentTimeMillis(), sVar, str);
    }

    public static List<l> a(s sVar, r rVar) {
        List<String> b2 = rVar.b("Set-Cookie");
        int size = b2.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            l a2 = a(sVar, b2.get(i));
            arrayList = arrayList;
            if (a2 != null) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(a2);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !c.c(str);
    }

    private static String b(String str) {
        if (!str.endsWith(".")) {
            String str2 = str;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
            }
            String a2 = c.a(str2);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public final String a() {
        return this.e;
    }

    final String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.e);
        sb.append('=');
        sb.append(this.f);
        if (this.l) {
            if (this.g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(d.a(new Date(this.g)));
            }
        }
        if (!this.m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.h);
        }
        sb.append("; path=");
        sb.append(this.i);
        if (this.j) {
            sb.append("; secure");
        }
        if (this.k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public final String b() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return lVar.e.equals(this.e) && lVar.f.equals(this.f) && lVar.h.equals(this.h) && lVar.i.equals(this.i) && lVar.g == this.g && lVar.j == this.j && lVar.k == this.k && lVar.l == this.l && lVar.m == this.m;
    }

    public final int hashCode() {
        int hashCode = this.e.hashCode();
        int hashCode2 = this.f.hashCode();
        int hashCode3 = this.h.hashCode();
        int hashCode4 = this.i.hashCode();
        long j = this.g;
        return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.j ? 1 : 0)) * 31) + (!this.k ? 1 : 0)) * 31) + (!this.l ? 1 : 0)) * 31) + (!this.m ? 1 : 0);
    }

    public final String toString() {
        return a(false);
    }
}
