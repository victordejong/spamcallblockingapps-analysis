package p193e.p1512i.p1516b.p1533u2.p1534c;

import java.net.URL;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.c */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/c.class */
public abstract class AbstractC23106c extends AbstractC23112o {

    /* renamed from: a */
    public final URL f63953a;

    public AbstractC23106c(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f63953a = url;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23112o
    /* renamed from: a */
    public URL mo7539a() {
        return this.f63953a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23112o)) {
            return false;
        }
        return this.f63953a.equals(((AbstractC23112o) obj).mo7539a());
    }

    public int hashCode() {
        return this.f63953a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativeImage{url=");
        m8728C.append(this.f63953a);
        m8728C.append("}");
        return m8728C.toString();
    }
}
