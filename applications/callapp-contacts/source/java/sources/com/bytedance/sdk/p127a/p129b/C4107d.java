package com.bytedance.sdk.p127a.p129b;

import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/d.class */
public final class C4107d {

    /* renamed from: a */
    public static final C4107d f14917a = new C4108a().m36556a().m36553c();

    /* renamed from: b */
    public static final C4107d f14918b = new C4108a().m36554b().m36555a(Integer.MAX_VALUE, TimeUnit.SECONDS).m36553c();

    /* renamed from: c */
    String f14919c;

    /* renamed from: d */
    private final boolean f14920d;

    /* renamed from: e */
    private final boolean f14921e;

    /* renamed from: f */
    private final int f14922f;

    /* renamed from: g */
    private final int f14923g;

    /* renamed from: h */
    private final boolean f14924h;

    /* renamed from: i */
    private final boolean f14925i;

    /* renamed from: j */
    private final boolean f14926j;

    /* renamed from: k */
    private final int f14927k;

    /* renamed from: l */
    private final int f14928l;

    /* renamed from: m */
    private final boolean f14929m;

    /* renamed from: n */
    private final boolean f14930n;

    /* renamed from: o */
    private final boolean f14931o;

    /* renamed from: com.bytedance.sdk.a.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/d$a.class */
    public static final class C4108a {

        /* renamed from: a */
        boolean f14932a;

        /* renamed from: b */
        boolean f14933b;

        /* renamed from: c */
        int f14934c = -1;

        /* renamed from: d */
        int f14935d = -1;

        /* renamed from: e */
        int f14936e = -1;

        /* renamed from: f */
        boolean f14937f;

        /* renamed from: g */
        boolean f14938g;

        /* renamed from: h */
        boolean f14939h;

        /* renamed from: a */
        public final C4108a m36556a() {
            this.f14932a = true;
            return this;
        }

        /* renamed from: a */
        public final C4108a m36555a(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f14935d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: ".concat(String.valueOf(i)));
        }

        /* renamed from: b */
        public final C4108a m36554b() {
            this.f14937f = true;
            return this;
        }

        /* renamed from: c */
        public final C4107d m36553c() {
            return new C4107d(this);
        }
    }

    C4107d(C4108a c4108a) {
        this.f14920d = c4108a.f14932a;
        this.f14921e = c4108a.f14933b;
        this.f14922f = c4108a.f14934c;
        this.f14923g = -1;
        this.f14924h = false;
        this.f14925i = false;
        this.f14926j = false;
        this.f14927k = c4108a.f14935d;
        this.f14928l = c4108a.f14936e;
        this.f14929m = c4108a.f14937f;
        this.f14930n = c4108a.f14938g;
        this.f14931o = c4108a.f14939h;
    }

    private C4107d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f14920d = z;
        this.f14921e = z2;
        this.f14922f = i;
        this.f14923g = i2;
        this.f14924h = z3;
        this.f14925i = z4;
        this.f14926j = z5;
        this.f14927k = i3;
        this.f14928l = i4;
        this.f14929m = z6;
        this.f14930n = z7;
        this.f14931o = z8;
        this.f14919c = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.sdk.p127a.p129b.C4107d m36567a(com.bytedance.sdk.p127a.p129b.C4132r r16) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.C4107d.m36567a(com.bytedance.sdk.a.b.r):com.bytedance.sdk.a.b.d");
    }

    /* renamed from: k */
    private String m36557k() {
        StringBuilder sb = new StringBuilder();
        if (this.f14920d) {
            sb.append("no-cache, ");
        }
        if (this.f14921e) {
            sb.append("no-store, ");
        }
        if (this.f14922f != -1) {
            sb.append("max-age=");
            sb.append(this.f14922f);
            sb.append(", ");
        }
        if (this.f14923g != -1) {
            sb.append("s-maxage=");
            sb.append(this.f14923g);
            sb.append(", ");
        }
        if (this.f14924h) {
            sb.append("private, ");
        }
        if (this.f14925i) {
            sb.append("public, ");
        }
        if (this.f14926j) {
            sb.append("must-revalidate, ");
        }
        if (this.f14927k != -1) {
            sb.append("max-stale=");
            sb.append(this.f14927k);
            sb.append(", ");
        }
        if (this.f14928l != -1) {
            sb.append("min-fresh=");
            sb.append(this.f14928l);
            sb.append(", ");
        }
        if (this.f14929m) {
            sb.append("only-if-cached, ");
        }
        if (this.f14930n) {
            sb.append("no-transform, ");
        }
        if (this.f14931o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    /* renamed from: a */
    public final boolean m36568a() {
        return this.f14920d;
    }

    /* renamed from: b */
    public final boolean m36566b() {
        return this.f14921e;
    }

    /* renamed from: c */
    public final int m36565c() {
        return this.f14922f;
    }

    /* renamed from: d */
    public final boolean m36564d() {
        return this.f14924h;
    }

    /* renamed from: e */
    public final boolean m36563e() {
        return this.f14925i;
    }

    /* renamed from: f */
    public final boolean m36562f() {
        return this.f14926j;
    }

    /* renamed from: g */
    public final int m36561g() {
        return this.f14927k;
    }

    /* renamed from: h */
    public final int m36560h() {
        return this.f14928l;
    }

    /* renamed from: i */
    public final boolean m36559i() {
        return this.f14929m;
    }

    /* renamed from: j */
    public final boolean m36558j() {
        return this.f14931o;
    }

    public final String toString() {
        String str = this.f14919c;
        if (str != null) {
            return str;
        }
        String m36557k = m36557k();
        this.f14919c = m36557k;
        return m36557k;
    }
}
