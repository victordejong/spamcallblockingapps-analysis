package okhttp3.internal.http2;

import okhttp3.internal.C5449c;
import p000a.C0008f;
/* renamed from: okhttp3.internal.http2.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/b.class */
public final class C5487b {

    /* renamed from: a */
    public static final C0008f f22895a = C0008f.m22538a(":");

    /* renamed from: b */
    public static final C0008f f22896b = C0008f.m22538a(":status");

    /* renamed from: c */
    public static final C0008f f22897c = C0008f.m22538a(":method");

    /* renamed from: d */
    public static final C0008f f22898d = C0008f.m22538a(":path");

    /* renamed from: e */
    public static final C0008f f22899e = C0008f.m22538a(":scheme");

    /* renamed from: f */
    public static final C0008f f22900f = C0008f.m22538a(":authority");

    /* renamed from: g */
    public final C0008f f22901g;

    /* renamed from: h */
    public final C0008f f22902h;

    /* renamed from: i */
    final int f22903i;

    public C5487b(C0008f c0008f, C0008f c0008f2) {
        this.f22901g = c0008f;
        this.f22902h = c0008f2;
        this.f22903i = c0008f.mo22462g() + 32 + c0008f2.mo22462g();
    }

    public C5487b(C0008f c0008f, String str) {
        this(c0008f, C0008f.m22538a(str));
    }

    public C5487b(String str, String str2) {
        this(C0008f.m22538a(str), C0008f.m22538a(str2));
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5487b) {
            C5487b c5487b = (C5487b) obj;
            z = false;
            if (this.f22901g.equals(c5487b.f22901g)) {
                z = false;
                if (this.f22902h.equals(c5487b.f22902h)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((this.f22901g.hashCode() + 527) * 31) + this.f22902h.hashCode();
    }

    public String toString() {
        return C5449c.m662a("%s: %s", this.f22901g.mo22474a(), this.f22902h.mo22474a());
    }
}
