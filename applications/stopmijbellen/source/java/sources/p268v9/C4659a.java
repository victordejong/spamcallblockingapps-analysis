package p268v9;

import p011aa.C0056i;
import p214q9.C4171c;
/* renamed from: v9.a */
/* loaded from: classes2-dex2jar.jar:v9/a.class */
public final class C4659a {

    /* renamed from: d */
    public static final C0056i f14357d = C0056i.m8835f(":");

    /* renamed from: e */
    public static final C0056i f14358e = C0056i.m8835f(":status");

    /* renamed from: f */
    public static final C0056i f14359f = C0056i.m8835f(":method");

    /* renamed from: g */
    public static final C0056i f14360g = C0056i.m8835f(":path");

    /* renamed from: h */
    public static final C0056i f14361h = C0056i.m8835f(":scheme");

    /* renamed from: i */
    public static final C0056i f14362i = C0056i.m8835f(":authority");

    /* renamed from: a */
    public final C0056i f14363a;

    /* renamed from: b */
    public final C0056i f14364b;

    /* renamed from: c */
    public final int f14365c;

    public C4659a(C0056i c0056i, C0056i c0056i2) {
        this.f14363a = c0056i;
        this.f14364b = c0056i2;
        this.f14365c = c0056i2.mo8785l() + c0056i.mo8785l() + 32;
    }

    public C4659a(C0056i c0056i, String str) {
        this(c0056i, C0056i.m8835f(str));
    }

    public C4659a(String str, String str2) {
        this(C0056i.m8835f(str), C0056i.m8835f(str2));
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4659a) {
            C4659a c4659a = (C4659a) obj;
            z = false;
            if (this.f14363a.equals(c4659a.f14363a)) {
                z = false;
                if (this.f14364b.equals(c4659a.f14364b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f14364b.hashCode() + ((this.f14363a.hashCode() + 527) * 31);
    }

    public String toString() {
        return C4171c.m1324l("%s: %s", this.f14363a.mo8782o(), this.f14364b.mo8782o());
    }
}
