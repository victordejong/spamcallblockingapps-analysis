package p599h;

import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p599h.p600d0.C10109c;
import p599h.p600d0.p603g.C10139d;
/* renamed from: h.l */
/* loaded from: classes2-dex2jar.jar:h/l.class */
public final class C10223l {

    /* renamed from: j */
    public static final Pattern f37724j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k */
    public static final Pattern f37725k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l */
    public static final Pattern f37726l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m */
    public static final Pattern f37727m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a */
    public final String f37728a;

    /* renamed from: b */
    public final String f37729b;

    /* renamed from: c */
    public final long f37730c;

    /* renamed from: d */
    public final String f37731d;

    /* renamed from: e */
    public final String f37732e;

    /* renamed from: f */
    public final boolean f37733f;

    /* renamed from: g */
    public final boolean f37734g;

    /* renamed from: h */
    public final boolean f37735h;

    /* renamed from: i */
    public final boolean f37736i;

    public C10223l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f37728a = str;
        this.f37729b = str2;
        this.f37730c = j;
        this.f37731d = str3;
        this.f37732e = str4;
        this.f37733f = z;
        this.f37734g = z2;
        this.f37736i = z3;
        this.f37735h = z4;
    }

    /* renamed from: a */
    public static int m1018a(String str, int i, int i2, boolean z) {
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
    public static long m1019a(String str, int i, int i2) {
        int a = m1018a(str, i, i2, false);
        Matcher matcher = f37727m.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (a < i2) {
            int a2 = m1018a(str, a + 1, i2, true);
            matcher.region(a, a2);
            if (i4 == -1 && matcher.usePattern(f37727m).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i8 = Integer.parseInt(matcher.group(3));
                i3 = i3;
                i5 = i5;
                i6 = i6;
            } else if (i5 == -1 && matcher.usePattern(f37726l).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
                i3 = i3;
                i4 = i4;
                i6 = i6;
                i7 = i7;
                i8 = i8;
            } else if (i6 != -1 || !matcher.usePattern(f37725k).matches()) {
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
                    if (matcher.usePattern(f37724j).matches()) {
                        i3 = Integer.parseInt(matcher.group(1));
                        i8 = i8;
                        i7 = i7;
                        i6 = i6;
                        i5 = i5;
                        i4 = i4;
                    }
                }
            } else {
                i6 = f37725k.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i7 = i7;
                i8 = i8;
            }
            a = m1018a(str, a2 + 1, i2, false);
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
                i10 = i9 + AdError.SERVER_ERROR_CODE;
            }
        }
        if (i10 < 1601) {
            throw new IllegalArgumentException();
        } else if (i6 == -1) {
            throw new IllegalArgumentException();
        } else if (i5 < 1 || i5 > 31) {
            throw new IllegalArgumentException();
        } else if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        } else if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        } else if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(C10109c.f37327n);
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
        if (r0 > 253402300799999L) goto L_0x0241;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p599h.C10223l m1023a(long r13, p599h.C10236s r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10223l.m1023a(long, h.s, java.lang.String):h.l");
    }

    /* renamed from: a */
    public static C10223l m1021a(C10236s sVar, String str) {
        return m1023a(System.currentTimeMillis(), sVar, str);
    }

    /* renamed from: a */
    public static String m1020a(String str) {
        if (!str.endsWith(".")) {
            String str2 = str;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
            }
            String a = C10109c.m1460a(str2);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static List<C10223l> m1022a(C10236s sVar, C10234r rVar) {
        List<String> b = rVar.m965b("Set-Cookie");
        int size = b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            C10223l a = m1021a(sVar, b.get(i));
            if (a != null) {
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(a);
                arrayList = arrayList2;
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: a */
    public static boolean m1017a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !C10109c.m1435d(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m1014b(java.lang.String r5) {
        /*
            r0 = -9223372036854775808
            r6 = r0
            r0 = r5
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0016
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0012
            goto L_0x0014
        L_0x0012:
            r0 = r8
            r6 = r0
        L_0x0014:
            r0 = r6
            return r0
        L_0x0016:
            r10 = move-exception
            r0 = r5
            java.lang.String r1 = "-?\\d+"
            boolean r0 = r0.matches(r1)
            if (r0 == 0) goto L_0x0035
            r0 = r5
            java.lang.String r1 = "-"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x002f
            goto L_0x0033
        L_0x002f:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = r0
        L_0x0033:
            r0 = r6
            return r0
        L_0x0035:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10223l.m1014b(java.lang.String):long");
    }

    /* renamed from: a */
    public String m1024a() {
        return this.f37728a;
    }

    /* renamed from: a */
    public String m1016a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f37728a);
        sb.append('=');
        sb.append(this.f37729b);
        if (this.f37735h) {
            if (this.f37730c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C10139d.m1329a(new Date(this.f37730c)));
            }
        }
        if (!this.f37736i) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f37731d);
        }
        sb.append("; path=");
        sb.append(this.f37732e);
        if (this.f37733f) {
            sb.append("; secure");
        }
        if (this.f37734g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public String m1015b() {
        return this.f37729b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10223l)) {
            return false;
        }
        C10223l lVar = (C10223l) obj;
        boolean z = false;
        if (lVar.f37728a.equals(this.f37728a)) {
            z = false;
            if (lVar.f37729b.equals(this.f37729b)) {
                z = false;
                if (lVar.f37731d.equals(this.f37731d)) {
                    z = false;
                    if (lVar.f37732e.equals(this.f37732e)) {
                        z = false;
                        if (lVar.f37730c == this.f37730c) {
                            z = false;
                            if (lVar.f37733f == this.f37733f) {
                                z = false;
                                if (lVar.f37734g == this.f37734g) {
                                    z = false;
                                    if (lVar.f37735h == this.f37735h) {
                                        z = false;
                                        if (lVar.f37736i == this.f37736i) {
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
        int hashCode = this.f37728a.hashCode();
        int hashCode2 = this.f37729b.hashCode();
        int hashCode3 = this.f37731d.hashCode();
        int hashCode4 = this.f37732e.hashCode();
        long j = this.f37730c;
        return ((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f37733f ? 1 : 0)) * 31) + (!this.f37734g ? 1 : 0)) * 31) + (!this.f37735h ? 1 : 0)) * 31) + (!this.f37736i ? 1 : 0);
    }

    public String toString() {
        return m1016a(false);
    }
}
