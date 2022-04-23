package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.f;
import okhttp3.internal.http2.Header;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final f f7924a = f.a(":");

    /* renamed from: b  reason: collision with root package name */
    public static final f f7925b = f.a(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: c  reason: collision with root package name */
    public static final f f7926c = f.a(Header.TARGET_METHOD_UTF8);

    /* renamed from: d  reason: collision with root package name */
    public static final f f7927d = f.a(Header.TARGET_PATH_UTF8);
    public static final f e = f.a(Header.TARGET_SCHEME_UTF8);
    public static final f f = f.a(Header.TARGET_AUTHORITY_UTF8);
    public final f g;
    public final f h;
    final int i;

    public c(f fVar, f fVar2) {
        this.g = fVar;
        this.h = fVar2;
        this.i = fVar.g() + 32 + fVar2.g();
    }

    public c(f fVar, String str) {
        this(fVar, f.a(str));
    }

    public c(String str, String str2) {
        this(f.a(str), f.a(str2));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.g.equals(cVar.g) && this.h.equals(cVar.h);
    }

    public final int hashCode() {
        return ((this.g.hashCode() + 527) * 31) + this.h.hashCode();
    }

    public final String toString() {
        return com.bytedance.sdk.a.b.a.c.a("%s: %s", this.g.a(), this.h.a());
    }
}
