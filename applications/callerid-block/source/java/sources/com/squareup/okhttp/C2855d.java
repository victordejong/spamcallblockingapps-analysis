package com.squareup.okhttp;

import java.util.concurrent.TimeUnit;
/* renamed from: com.squareup.okhttp.d */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/d.class */
public final class C2855d {

    /* renamed from: a */
    private final boolean f12073a;

    /* renamed from: b */
    private final boolean f12074b;

    /* renamed from: c */
    private final int f12075c;

    /* renamed from: d */
    private final int f12076d;

    /* renamed from: e */
    private final boolean f12077e;

    /* renamed from: f */
    private final boolean f12078f;

    /* renamed from: g */
    private final boolean f12079g;

    /* renamed from: h */
    private final int f12080h;

    /* renamed from: i */
    private final int f12081i;

    /* renamed from: j */
    private final boolean f12082j;

    /* renamed from: k */
    private final boolean f12083k;

    /* renamed from: l */
    String f12084l;

    /* renamed from: com.squareup.okhttp.d$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/d$b.class */
    public static final class C2857b {

        /* renamed from: a */
        boolean f12085a;

        /* renamed from: b */
        boolean f12086b;

        /* renamed from: c */
        int f12087c = -1;

        /* renamed from: d */
        int f12088d = -1;

        /* renamed from: e */
        int f12089e = -1;

        /* renamed from: f */
        boolean f12090f;

        /* renamed from: g */
        boolean f12091g;

        /* renamed from: a */
        public C2855d m1304a() {
            return new C2855d(this);
        }

        /* renamed from: b */
        public C2857b m1303b(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f12088d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i);
        }

        /* renamed from: c */
        public C2857b m1302c() {
            this.f12085a = true;
            return this;
        }

        /* renamed from: d */
        public C2857b m1301d() {
            this.f12090f = true;
            return this;
        }
    }

    static {
        C2857b c2857b = new C2857b();
        c2857b.m1302c();
        c2857b.m1304a();
        C2857b c2857b2 = new C2857b();
        c2857b2.m1301d();
        c2857b2.m1303b(Integer.MAX_VALUE, TimeUnit.SECONDS);
        c2857b2.m1304a();
    }

    private C2855d(C2857b c2857b) {
        this.f12073a = c2857b.f12085a;
        this.f12074b = c2857b.f12086b;
        this.f12075c = c2857b.f12087c;
        this.f12076d = -1;
        this.f12077e = false;
        this.f12078f = false;
        this.f12079g = false;
        this.f12080h = c2857b.f12088d;
        this.f12081i = c2857b.f12089e;
        this.f12082j = c2857b.f12090f;
        this.f12083k = c2857b.f12091g;
    }

    private C2855d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, String str) {
        this.f12073a = z;
        this.f12074b = z2;
        this.f12075c = i;
        this.f12076d = i2;
        this.f12077e = z3;
        this.f12078f = z4;
        this.f12079g = z5;
        this.f12080h = i3;
        this.f12081i = i4;
        this.f12082j = z6;
        this.f12083k = z7;
        this.f12084l = str;
    }

    /* renamed from: a */
    private String m1315a() {
        StringBuilder sb = new StringBuilder();
        if (this.f12073a) {
            sb.append("no-cache, ");
        }
        if (this.f12074b) {
            sb.append("no-store, ");
        }
        if (this.f12075c != -1) {
            sb.append("max-age=");
            sb.append(this.f12075c);
            sb.append(", ");
        }
        if (this.f12076d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f12076d);
            sb.append(", ");
        }
        if (this.f12077e) {
            sb.append("private, ");
        }
        if (this.f12078f) {
            sb.append("public, ");
        }
        if (this.f12079g) {
            sb.append("must-revalidate, ");
        }
        if (this.f12080h != -1) {
            sb.append("max-stale=");
            sb.append(this.f12080h);
            sb.append(", ");
        }
        if (this.f12081i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f12081i);
            sb.append(", ");
        }
        if (this.f12082j) {
            sb.append("only-if-cached, ");
        }
        if (this.f12083k) {
            sb.append("no-transform, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00dd  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.squareup.okhttp.C2855d m1305k(com.squareup.okhttp.C2943k r15) {
        /*
            Method dump skipped, instructions count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2855d.m1305k(com.squareup.okhttp.k):com.squareup.okhttp.d");
    }

    /* renamed from: b */
    public boolean m1314b() {
        return this.f12077e;
    }

    /* renamed from: c */
    public boolean m1313c() {
        return this.f12078f;
    }

    /* renamed from: d */
    public int m1312d() {
        return this.f12075c;
    }

    /* renamed from: e */
    public int m1311e() {
        return this.f12080h;
    }

    /* renamed from: f */
    public int m1310f() {
        return this.f12081i;
    }

    /* renamed from: g */
    public boolean m1309g() {
        return this.f12079g;
    }

    /* renamed from: h */
    public boolean m1308h() {
        return this.f12073a;
    }

    /* renamed from: i */
    public boolean m1307i() {
        return this.f12074b;
    }

    /* renamed from: j */
    public boolean m1306j() {
        return this.f12082j;
    }

    public String toString() {
        String str = this.f12084l;
        if (str == null) {
            str = m1315a();
            this.f12084l = str;
        }
        return str;
    }
}
