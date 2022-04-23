package com.bytedance.sdk.a.b;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f8082a = new a().a().c();

    /* renamed from: b  reason: collision with root package name */
    public static final d f8083b = new a().b().a(Integer.MAX_VALUE, TimeUnit.SECONDS).c();

    /* renamed from: c  reason: collision with root package name */
    String f8084c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f8085d;
    private final boolean e;
    private final int f;
    private final int g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final int k;
    private final int l;
    private final boolean m;
    private final boolean n;
    private final boolean o;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f8086a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8087b;

        /* renamed from: c  reason: collision with root package name */
        int f8088c = -1;

        /* renamed from: d  reason: collision with root package name */
        int f8089d = -1;
        int e = -1;
        boolean f;
        boolean g;
        boolean h;

        public final a a() {
            this.f8086a = true;
            return this;
        }

        public final a a(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f8089d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: ".concat(String.valueOf(i)));
        }

        public final a b() {
            this.f = true;
            return this;
        }

        public final d c() {
            return new d(this);
        }
    }

    d(a aVar) {
        this.f8085d = aVar.f8086a;
        this.e = aVar.f8087b;
        this.f = aVar.f8088c;
        this.g = -1;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = aVar.f8089d;
        this.l = aVar.e;
        this.m = aVar.f;
        this.n = aVar.g;
        this.o = aVar.h;
    }

    private d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f8085d = z;
        this.e = z2;
        this.f = i;
        this.g = i2;
        this.h = z3;
        this.i = z4;
        this.j = z5;
        this.k = i3;
        this.l = i4;
        this.m = z6;
        this.n = z7;
        this.o = z8;
        this.f8084c = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.sdk.a.b.d a(com.bytedance.sdk.a.b.r r16) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.d.a(com.bytedance.sdk.a.b.r):com.bytedance.sdk.a.b.d");
    }

    private String k() {
        StringBuilder sb = new StringBuilder();
        if (this.f8085d) {
            sb.append("no-cache, ");
        }
        if (this.e) {
            sb.append("no-store, ");
        }
        if (this.f != -1) {
            sb.append("max-age=");
            sb.append(this.f);
            sb.append(", ");
        }
        if (this.g != -1) {
            sb.append("s-maxage=");
            sb.append(this.g);
            sb.append(", ");
        }
        if (this.h) {
            sb.append("private, ");
        }
        if (this.i) {
            sb.append("public, ");
        }
        if (this.j) {
            sb.append("must-revalidate, ");
        }
        if (this.k != -1) {
            sb.append("max-stale=");
            sb.append(this.k);
            sb.append(", ");
        }
        if (this.l != -1) {
            sb.append("min-fresh=");
            sb.append(this.l);
            sb.append(", ");
        }
        if (this.m) {
            sb.append("only-if-cached, ");
        }
        if (this.n) {
            sb.append("no-transform, ");
        }
        if (this.o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public final boolean a() {
        return this.f8085d;
    }

    public final boolean b() {
        return this.e;
    }

    public final int c() {
        return this.f;
    }

    public final boolean d() {
        return this.h;
    }

    public final boolean e() {
        return this.i;
    }

    public final boolean f() {
        return this.j;
    }

    public final int g() {
        return this.k;
    }

    public final int h() {
        return this.l;
    }

    public final boolean i() {
        return this.m;
    }

    public final boolean j() {
        return this.o;
    }

    public final String toString() {
        String str = this.f8084c;
        if (str != null) {
            return str;
        }
        String k = k();
        this.f8084c = k;
        return k;
    }
}
