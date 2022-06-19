package p193e.p1512i.p1516b.p1533u2.p1534c;

import java.net.URL;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.d */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/d.class */
public abstract class AbstractC23107d extends AbstractC23113p {

    /* renamed from: a */
    public final URL f63954a;

    public AbstractC23107d(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f63954a = url;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23113p
    /* renamed from: a */
    public URL mo7538a() {
        return this.f63954a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23113p)) {
            return false;
        }
        return this.f63954a.equals(((AbstractC23113p) obj).mo7538a());
    }

    public int hashCode() {
        return this.f63954a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativeImpressionPixel{url=");
        m8728C.append(this.f63954a);
        m8728C.append("}");
        return m8728C.toString();
    }
}
