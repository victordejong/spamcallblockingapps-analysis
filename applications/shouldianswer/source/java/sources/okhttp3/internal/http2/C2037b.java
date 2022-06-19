package okhttp3.internal.http2;

import okhttp3.internal.C1999c;
import p000a.C0009f;
/* renamed from: okhttp3.internal.http2.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/b.class */
public final class C2037b {

    /* renamed from: a */
    public static final C0009f f5121a = C0009f.m8114a(":");

    /* renamed from: b */
    public static final C0009f f5122b = C0009f.m8114a(":status");

    /* renamed from: c */
    public static final C0009f f5123c = C0009f.m8114a(":method");

    /* renamed from: d */
    public static final C0009f f5124d = C0009f.m8114a(":path");

    /* renamed from: e */
    public static final C0009f f5125e = C0009f.m8114a(":scheme");

    /* renamed from: f */
    public static final C0009f f5126f = C0009f.m8114a(":authority");

    /* renamed from: g */
    public final C0009f f5127g;

    /* renamed from: h */
    public final C0009f f5128h;

    /* renamed from: i */
    final int f5129i;

    public C2037b(C0009f c0009f, C0009f c0009f2) {
        this.f5127g = c0009f;
        this.f5128h = c0009f2;
        this.f5129i = c0009f.mo8038g() + 32 + c0009f2.mo8038g();
    }

    public C2037b(C0009f c0009f, String str) {
        this(c0009f, C0009f.m8114a(str));
    }

    public C2037b(String str, String str2) {
        this(C0009f.m8114a(str), C0009f.m8114a(str2));
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C2037b) {
            C2037b c2037b = (C2037b) obj;
            z = false;
            if (this.f5127g.equals(c2037b.f5127g)) {
                z = false;
                if (this.f5128h.equals(c2037b.f5128h)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f5127g.hashCode()) * 31) + this.f5128h.hashCode();
    }

    public String toString() {
        return C1999c.m2342a("%s: %s", this.f5127g.mo8050a(), this.f5128h.mo8050a());
    }
}
