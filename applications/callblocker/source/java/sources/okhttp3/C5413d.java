package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.p193b.C5441e;
/* renamed from: okhttp3.d */
/* loaded from: classes-dex2jar.jar:okhttp3/d.class */
public final class C5413d {

    /* renamed from: a */
    public static final C5413d f22532a = new C5414a().m758a().m755c();

    /* renamed from: b */
    public static final C5413d f22533b = new C5414a().m756b().m757a(Integer.MAX_VALUE, TimeUnit.SECONDS).m755c();
    @Nullable

    /* renamed from: c */
    String f22534c;

    /* renamed from: d */
    private final boolean f22535d;

    /* renamed from: e */
    private final boolean f22536e;

    /* renamed from: f */
    private final int f22537f;

    /* renamed from: g */
    private final int f22538g;

    /* renamed from: h */
    private final boolean f22539h;

    /* renamed from: i */
    private final boolean f22540i;

    /* renamed from: j */
    private final boolean f22541j;

    /* renamed from: k */
    private final int f22542k;

    /* renamed from: l */
    private final int f22543l;

    /* renamed from: m */
    private final boolean f22544m;

    /* renamed from: n */
    private final boolean f22545n;

    /* renamed from: o */
    private final boolean f22546o;

    /* renamed from: okhttp3.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/d$a.class */
    public static final class C5414a {

        /* renamed from: a */
        boolean f22547a;

        /* renamed from: b */
        boolean f22548b;

        /* renamed from: c */
        int f22549c = -1;

        /* renamed from: d */
        int f22550d = -1;

        /* renamed from: e */
        int f22551e = -1;

        /* renamed from: f */
        boolean f22552f;

        /* renamed from: g */
        boolean f22553g;

        /* renamed from: h */
        boolean f22554h;

        /* renamed from: a */
        public C5414a m758a() {
            this.f22547a = true;
            return this;
        }

        /* renamed from: a */
        public C5414a m757a(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException("maxStale < 0: " + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.f22550d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        /* renamed from: b */
        public C5414a m756b() {
            this.f22552f = true;
            return this;
        }

        /* renamed from: c */
        public C5413d m755c() {
            return new C5413d(this);
        }
    }

    C5413d(C5414a c5414a) {
        this.f22535d = c5414a.f22547a;
        this.f22536e = c5414a.f22548b;
        this.f22537f = c5414a.f22549c;
        this.f22538g = -1;
        this.f22539h = false;
        this.f22540i = false;
        this.f22541j = false;
        this.f22542k = c5414a.f22550d;
        this.f22543l = c5414a.f22551e;
        this.f22544m = c5414a.f22552f;
        this.f22545n = c5414a.f22553g;
        this.f22546o = c5414a.f22554h;
    }

    private C5413d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f22535d = z;
        this.f22536e = z2;
        this.f22537f = i;
        this.f22538g = i2;
        this.f22539h = z3;
        this.f22540i = z4;
        this.f22541j = z5;
        this.f22542k = i3;
        this.f22543l = i4;
        this.f22544m = z6;
        this.f22545n = z7;
        this.f22546o = z8;
        this.f22534c = str;
    }

    /* renamed from: a */
    public static C5413d m769a(C5539s c5539s) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        boolean z6;
        boolean z7;
        boolean z8;
        int i3;
        int i4;
        boolean z9;
        String str;
        String str2;
        boolean z10;
        int i5;
        int i6;
        boolean z11;
        boolean z12;
        boolean z13;
        int i7;
        int i8;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17 = false;
        boolean z18 = false;
        int i9 = -1;
        int i10 = -1;
        boolean z19 = false;
        boolean z20 = false;
        boolean z21 = false;
        int i11 = -1;
        int i12 = -1;
        boolean z22 = false;
        boolean z23 = false;
        boolean z24 = false;
        boolean z25 = true;
        String str3 = null;
        int m284a = c5539s.m284a();
        int i13 = 0;
        while (i13 < m284a) {
            String m283a = c5539s.m283a(i13);
            String m278b = c5539s.m278b(i13);
            if (m283a.equalsIgnoreCase("Cache-Control")) {
                if (str3 != null) {
                    z25 = false;
                } else {
                    str3 = m278b;
                }
            } else if (m283a.equalsIgnoreCase("Pragma")) {
                z25 = false;
            } else {
                z = z17;
                z2 = z25;
                z3 = z24;
                z4 = z23;
                z5 = z22;
                i = i12;
                i2 = i11;
                z6 = z21;
                z7 = z20;
                z8 = z19;
                i3 = i10;
                i4 = i9;
                z9 = z18;
                str = str3;
                i13++;
                z17 = z;
                str3 = str;
                z18 = z9;
                i9 = i4;
                i10 = i3;
                z19 = z8;
                z20 = z7;
                z21 = z6;
                i11 = i2;
                i12 = i;
                z22 = z5;
                z23 = z4;
                z24 = z3;
                z25 = z2;
            }
            int i14 = 0;
            while (true) {
                str = str3;
                z9 = z18;
                i4 = i9;
                i3 = i10;
                z8 = z19;
                z7 = z20;
                z6 = z21;
                i2 = i11;
                i = i12;
                z5 = z22;
                z4 = z23;
                z3 = z24;
                z2 = z25;
                z = z17;
                if (i14 < m278b.length()) {
                    int m707a = C5441e.m707a(m278b, i14, "=,;");
                    String trim = m278b.substring(i14, m707a).trim();
                    if (m707a == m278b.length() || m278b.charAt(m707a) == ',' || m278b.charAt(m707a) == ';') {
                        i14 = m707a + 1;
                        str2 = null;
                    } else {
                        int m708a = C5441e.m708a(m278b, m707a + 1);
                        if (m708a >= m278b.length() || m278b.charAt(m708a) != '\"') {
                            i14 = C5441e.m707a(m278b, m708a, ",;");
                            str2 = m278b.substring(m708a, i14).trim();
                        } else {
                            int i15 = m708a + 1;
                            int m707a2 = C5441e.m707a(m278b, i15, "\"");
                            str2 = m278b.substring(i15, m707a2);
                            i14 = m707a2 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(trim)) {
                        z16 = true;
                        z15 = z23;
                        z14 = z22;
                        i8 = i12;
                        i7 = i11;
                        z13 = z21;
                        z12 = z20;
                        z11 = z19;
                        i6 = i10;
                        i5 = i9;
                        z10 = z18;
                    } else if ("no-store".equalsIgnoreCase(trim)) {
                        z10 = true;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("max-age".equalsIgnoreCase(trim)) {
                        i5 = C5441e.m703b(str2, -1);
                        z10 = z18;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("s-maxage".equalsIgnoreCase(trim)) {
                        i6 = C5441e.m703b(str2, -1);
                        z10 = z18;
                        i5 = i9;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("private".equalsIgnoreCase(trim)) {
                        z11 = true;
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("public".equalsIgnoreCase(trim)) {
                        z12 = true;
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                        z13 = true;
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("max-stale".equalsIgnoreCase(trim)) {
                        i7 = C5441e.m703b(str2, Integer.MAX_VALUE);
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("min-fresh".equalsIgnoreCase(trim)) {
                        i8 = C5441e.m703b(str2, -1);
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                    } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                        z14 = true;
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z15 = z23;
                        z16 = z17;
                    } else if ("no-transform".equalsIgnoreCase(trim)) {
                        z15 = true;
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z16 = z17;
                    } else {
                        z10 = z18;
                        i5 = i9;
                        i6 = i10;
                        z11 = z19;
                        z12 = z20;
                        z13 = z21;
                        i7 = i11;
                        i8 = i12;
                        z14 = z22;
                        z15 = z23;
                        z16 = z17;
                        if ("immutable".equalsIgnoreCase(trim)) {
                            z24 = true;
                            z10 = z18;
                            i5 = i9;
                            i6 = i10;
                            z11 = z19;
                            z12 = z20;
                            z13 = z21;
                            i7 = i11;
                            i8 = i12;
                            z14 = z22;
                            z15 = z23;
                            z16 = z17;
                        }
                    }
                    z18 = z10;
                    i9 = i5;
                    i10 = i6;
                    z19 = z11;
                    z20 = z12;
                    z21 = z13;
                    i11 = i7;
                    i12 = i8;
                    z22 = z14;
                    z23 = z15;
                    z17 = z16;
                }
            }
            i13++;
            z17 = z;
            str3 = str;
            z18 = z9;
            i9 = i4;
            i10 = i3;
            z19 = z8;
            z20 = z7;
            z21 = z6;
            i11 = i2;
            i12 = i;
            z22 = z5;
            z23 = z4;
            z24 = z3;
            z25 = z2;
        }
        return new C5413d(z17, z18, i9, i10, z19, z20, z21, i11, i12, z22, z23, z24, !z25 ? null : str3);
    }

    /* renamed from: k */
    private String m759k() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        if (this.f22535d) {
            sb2.append("no-cache, ");
        }
        if (this.f22536e) {
            sb2.append("no-store, ");
        }
        if (this.f22537f != -1) {
            sb2.append("max-age=").append(this.f22537f).append(", ");
        }
        if (this.f22538g != -1) {
            sb2.append("s-maxage=").append(this.f22538g).append(", ");
        }
        if (this.f22539h) {
            sb2.append("private, ");
        }
        if (this.f22540i) {
            sb2.append("public, ");
        }
        if (this.f22541j) {
            sb2.append("must-revalidate, ");
        }
        if (this.f22542k != -1) {
            sb2.append("max-stale=").append(this.f22542k).append(", ");
        }
        if (this.f22543l != -1) {
            sb2.append("min-fresh=").append(this.f22543l).append(", ");
        }
        if (this.f22544m) {
            sb2.append("only-if-cached, ");
        }
        if (this.f22545n) {
            sb2.append("no-transform, ");
        }
        if (this.f22546o) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            sb = "";
        } else {
            sb2.delete(sb2.length() - 2, sb2.length());
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public boolean m770a() {
        return this.f22535d;
    }

    /* renamed from: b */
    public boolean m768b() {
        return this.f22536e;
    }

    /* renamed from: c */
    public int m767c() {
        return this.f22537f;
    }

    /* renamed from: d */
    public boolean m766d() {
        return this.f22539h;
    }

    /* renamed from: e */
    public boolean m765e() {
        return this.f22540i;
    }

    /* renamed from: f */
    public boolean m764f() {
        return this.f22541j;
    }

    /* renamed from: g */
    public int m763g() {
        return this.f22542k;
    }

    /* renamed from: h */
    public int m762h() {
        return this.f22543l;
    }

    /* renamed from: i */
    public boolean m761i() {
        return this.f22544m;
    }

    /* renamed from: j */
    public boolean m760j() {
        return this.f22546o;
    }

    public String toString() {
        String str = this.f22534c;
        if (str == null) {
            str = m759k();
            this.f22534c = str;
        }
        return str;
    }
}
