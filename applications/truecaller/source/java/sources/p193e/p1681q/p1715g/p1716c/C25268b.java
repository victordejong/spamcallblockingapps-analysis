package p193e.p1681q.p1715g.p1716c;

import java.util.Objects;
/* renamed from: e.q.g.c.b */
/* loaded from: classes16-dex2jar.jar:e/q/g/c/b.class */
public class C25268b<A, B> {

    /* renamed from: a */
    public final A f70691a;

    /* renamed from: b */
    public final B f70692b;

    public C25268b(A a, B b) {
        this.f70691a = a;
        this.f70692b = b;
    }

    /* renamed from: a */
    public A m3746a() {
        return this.f70691a;
    }

    /* renamed from: b */
    public B m3745b() {
        return this.f70692b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C25268b)) {
            return false;
        }
        C25268b c25268b = (C25268b) obj;
        if (!this.f70691a.equals(c25268b.f70691a) || !this.f70692b.equals(c25268b.f70692b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hash(this.f70691a, this.f70692b);
    }
}
