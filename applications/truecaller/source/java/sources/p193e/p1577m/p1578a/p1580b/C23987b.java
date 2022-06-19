package p193e.p1577m.p1578a.p1580b;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/b.class */
public final class C23987b {

    /* renamed from: a */
    public final String f66464a;

    public C23987b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f66464a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C23987b) {
            return this.f66464a.equals(((C23987b) obj).f66464a);
        }
        return false;
    }

    public int hashCode() {
        return this.f66464a.hashCode() ^ 1000003;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("Encoding{name=\""), this.f66464a, "\"}");
    }
}
