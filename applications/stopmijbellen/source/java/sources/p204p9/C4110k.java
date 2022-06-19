package p204p9;

import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import p214q9.C4171c;
import p246t9.C4434d;
/* renamed from: p9.k */
/* loaded from: classes2-dex2jar.jar:p9/k.class */
public final class C4110k {

    /* renamed from: j */
    public static final Pattern f12927j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k */
    public static final Pattern f12928k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l */
    public static final Pattern f12929l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m */
    public static final Pattern f12930m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a */
    public final String f12931a;

    /* renamed from: b */
    public final String f12932b;

    /* renamed from: c */
    public final long f12933c;

    /* renamed from: d */
    public final String f12934d;

    /* renamed from: e */
    public final String f12935e;

    /* renamed from: f */
    public final boolean f12936f;

    /* renamed from: g */
    public final boolean f12937g;

    /* renamed from: h */
    public final boolean f12938h;

    /* renamed from: i */
    public final boolean f12939i;

    public C4110k(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f12931a = str;
        this.f12932b = str2;
        this.f12933c = j;
        this.f12934d = str3;
        this.f12935e = str4;
        this.f12936f = z;
        this.f12937g = z2;
        this.f12939i = z3;
        this.f12938h = z4;
    }

    /* renamed from: a */
    public static int m1409a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: b */
    public static long m1408b(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m1409a = m1409a(str, i, i2, false);
        Matcher matcher = f12930m.matcher(str);
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        while (m1409a < i2) {
            int m1409a2 = m1409a(str, m1409a + 1, i2, true);
            matcher.region(m1409a, m1409a2);
            if (i10 == -1 && matcher.usePattern(f12930m).matches()) {
                i8 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i6 = Integer.parseInt(matcher.group(3));
                i5 = i9;
                i4 = i11;
                i3 = i12;
            } else if (i11 != -1 || !matcher.usePattern(f12929l).matches()) {
                if (i12 == -1) {
                    Pattern pattern = f12928k;
                    if (matcher.usePattern(pattern).matches()) {
                        i3 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                        i5 = i9;
                        i8 = i10;
                        i4 = i11;
                        i7 = i13;
                        i6 = i14;
                    }
                }
                i5 = i9;
                i8 = i10;
                i4 = i11;
                i3 = i12;
                i7 = i13;
                i6 = i14;
                if (i9 == -1) {
                    i5 = i9;
                    i8 = i10;
                    i4 = i11;
                    i3 = i12;
                    i7 = i13;
                    i6 = i14;
                    if (matcher.usePattern(f12927j).matches()) {
                        i5 = Integer.parseInt(matcher.group(1));
                        i6 = i14;
                        i7 = i13;
                        i3 = i12;
                        i4 = i11;
                        i8 = i10;
                    }
                }
            } else {
                i4 = Integer.parseInt(matcher.group(1));
                i5 = i9;
                i8 = i10;
                i3 = i12;
                i7 = i13;
                i6 = i14;
            }
            i9 = i5;
            i10 = i8;
            i11 = i4;
            i12 = i3;
            i13 = i7;
            i14 = i6;
            m1409a = m1409a(str, m1409a2 + 1, i2, false);
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
                i16 = i15 + AdError.SERVER_ERROR_CODE;
            }
        }
        if (i16 >= 1601) {
            if (i12 == -1) {
                throw new IllegalArgumentException();
            }
            if (i11 < 1 || i11 > 31) {
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
            GregorianCalendar gregorianCalendar = new GregorianCalendar(C4171c.f13148e);
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

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C4110k)) {
            return false;
        }
        C4110k c4110k = (C4110k) obj;
        boolean z = false;
        if (c4110k.f12931a.equals(this.f12931a)) {
            z = false;
            if (c4110k.f12932b.equals(this.f12932b)) {
                z = false;
                if (c4110k.f12934d.equals(this.f12934d)) {
                    z = false;
                    if (c4110k.f12935e.equals(this.f12935e)) {
                        z = false;
                        if (c4110k.f12933c == this.f12933c) {
                            z = false;
                            if (c4110k.f12936f == this.f12936f) {
                                z = false;
                                if (c4110k.f12937g == this.f12937g) {
                                    z = false;
                                    if (c4110k.f12938h == this.f12938h) {
                                        z = false;
                                        if (c4110k.f12939i == this.f12939i) {
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
        int m4793d = C1676a.m4793d(this.f12935e, C1676a.m4793d(this.f12934d, C1676a.m4793d(this.f12932b, C1676a.m4793d(this.f12931a, 527, 31), 31), 31), 31);
        long j = this.f12933c;
        return ((((((((m4793d + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f12936f ? 1 : 0)) * 31) + (!this.f12937g ? 1 : 0)) * 31) + (!this.f12938h ? 1 : 0)) * 31) + (!this.f12939i ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f12931a);
        sb.append('=');
        sb.append(this.f12932b);
        if (this.f12938h) {
            if (this.f12933c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C4434d.f13784a.get().format(new Date(this.f12933c)));
            }
        }
        if (!this.f12939i) {
            sb.append("; domain=");
            sb.append(this.f12934d);
        }
        sb.append("; path=");
        sb.append(this.f12935e);
        if (this.f12936f) {
            sb.append("; secure");
        }
        if (this.f12937g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
