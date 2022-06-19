package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.i.e.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/m.class */
public final class C24017m extends AbstractC24026s {

    /* renamed from: a */
    public final long f66564a;

    public C24017m(long j) {
        this.f66564a = j;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24026s
    /* renamed from: b */
    public long mo5597b() {
        return this.f66564a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24026s)) {
            return false;
        }
        if (this.f66564a != ((AbstractC24026s) obj).mo5597b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f66564a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public String toString() {
        return C22128a.m8693K2(C22128a.m8728C("LogResponse{nextRequestWaitMillis="), this.f66564a, "}");
    }
}
