package p081h.p203i.p325c.p336m;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: h.i.c.m.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/n.class */
public final class C9498n {

    /* renamed from: a */
    public final Class<?> f21644a;

    /* renamed from: b */
    public final int f21645b;

    /* renamed from: c */
    public final int f21646c;

    public C9498n(Class<?> cls, int i, int i2) {
        C9505u.m15036a(cls, "Null dependency anInterface.");
        this.f21644a = cls;
        this.f21645b = i;
        this.f21646c = i2;
    }

    /* renamed from: a */
    public static C9498n m15050a(Class<?> cls) {
        return new C9498n(cls, 0, 0);
    }

    /* renamed from: b */
    public static C9498n m15048b(Class<?> cls) {
        return new C9498n(cls, 0, 1);
    }

    /* renamed from: c */
    public static C9498n m15046c(Class<?> cls) {
        return new C9498n(cls, 1, 0);
    }

    /* renamed from: d */
    public static C9498n m15044d(Class<?> cls) {
        return new C9498n(cls, 1, 1);
    }

    /* renamed from: e */
    public static C9498n m15043e(Class<?> cls) {
        return new C9498n(cls, 2, 0);
    }

    /* renamed from: a */
    public Class<?> m15051a() {
        return this.f21644a;
    }

    /* renamed from: b */
    public boolean m15049b() {
        return this.f21646c == 0;
    }

    /* renamed from: c */
    public boolean m15047c() {
        boolean z = true;
        if (this.f21645b != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m15045d() {
        return this.f21645b == 2;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C9498n) {
            C9498n nVar = (C9498n) obj;
            z = false;
            if (this.f21644a == nVar.f21644a) {
                z = false;
                if (this.f21645b == nVar.f21645b) {
                    z = false;
                    if (this.f21646c == nVar.f21646c) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f21644a.hashCode() ^ 1000003) * 1000003) ^ this.f21645b) * 1000003) ^ this.f21646c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f21644a);
        sb.append(", type=");
        int i = this.f21645b;
        boolean z = true;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", direct=");
        if (this.f21646c != 0) {
            z = false;
        }
        sb.append(z);
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }
}
