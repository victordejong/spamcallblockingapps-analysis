package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import okhttp3.internal.http2.Header;
/* renamed from: com.bytedance.sdk.a.b.a.e.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/c.class */
public final class C4043c {

    /* renamed from: a */
    public static final C3973f f14657a = C3973f.m37101a(":");

    /* renamed from: b */
    public static final C3973f f14658b = C3973f.m37101a(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: c */
    public static final C3973f f14659c = C3973f.m37101a(Header.TARGET_METHOD_UTF8);

    /* renamed from: d */
    public static final C3973f f14660d = C3973f.m37101a(Header.TARGET_PATH_UTF8);

    /* renamed from: e */
    public static final C3973f f14661e = C3973f.m37101a(Header.TARGET_SCHEME_UTF8);

    /* renamed from: f */
    public static final C3973f f14662f = C3973f.m37101a(Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: g */
    public final C3973f f14663g;

    /* renamed from: h */
    public final C3973f f14664h;

    /* renamed from: i */
    final int f14665i;

    public C4043c(C3973f c3973f, C3973f c3973f2) {
        this.f14663g = c3973f;
        this.f14664h = c3973f2;
        this.f14665i = c3973f.mo37026g() + 32 + c3973f2.mo37026g();
    }

    public C4043c(C3973f c3973f, String str) {
        this(c3973f, C3973f.m37101a(str));
    }

    public C4043c(String str, String str2) {
        this(C3973f.m37101a(str), C3973f.m37101a(str2));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C4043c) {
            C4043c c4043c = (C4043c) obj;
            return this.f14663g.equals(c4043c.f14663g) && this.f14664h.equals(c4043c.f14664h);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f14663g.hashCode() + 527) * 31) + this.f14664h.hashCode();
    }

    public final String toString() {
        return C4015c.m36903a("%s: %s", this.f14663g.mo37038a(), this.f14664h.mo37038a());
    }
}
