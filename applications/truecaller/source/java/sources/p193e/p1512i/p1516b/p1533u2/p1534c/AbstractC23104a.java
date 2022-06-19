package p193e.p1512i.p1516b.p1533u2.p1534c;

import java.net.URI;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.a */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/a.class */
public abstract class AbstractC23104a extends AbstractC23110m {

    /* renamed from: a */
    public final String f63945a;

    /* renamed from: b */
    public final String f63946b;

    /* renamed from: c */
    public final URI f63947c;

    /* renamed from: d */
    public final AbstractC23112o f63948d;

    public AbstractC23104a(String str, String str2, URI uri, AbstractC23112o abstractC23112o) {
        Objects.requireNonNull(str, "Null domain");
        this.f63945a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f63946b = str2;
        Objects.requireNonNull(uri, "Null logoClickUrl");
        this.f63947c = uri;
        Objects.requireNonNull(abstractC23112o, "Null logo");
        this.f63948d = abstractC23112o;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23110m
    /* renamed from: a */
    public String mo7551a() {
        return this.f63946b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23110m
    /* renamed from: b */
    public String mo7550b() {
        return this.f63945a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23110m
    /* renamed from: c */
    public AbstractC23112o mo7549c() {
        return this.f63948d;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23110m
    /* renamed from: d */
    public URI mo7548d() {
        return this.f63947c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23110m)) {
            return false;
        }
        AbstractC23110m abstractC23110m = (AbstractC23110m) obj;
        if (!this.f63945a.equals(abstractC23110m.mo7550b()) || !this.f63946b.equals(abstractC23110m.mo7551a()) || !this.f63947c.equals(abstractC23110m.mo7548d()) || !this.f63948d.equals(abstractC23110m.mo7549c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f63945a.hashCode() ^ 1000003) * 1000003) ^ this.f63946b.hashCode()) * 1000003) ^ this.f63947c.hashCode()) * 1000003) ^ this.f63948d.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativeAdvertiser{domain=");
        m8728C.append(this.f63945a);
        m8728C.append(", description=");
        m8728C.append(this.f63946b);
        m8728C.append(", logoClickUrl=");
        m8728C.append(this.f63947c);
        m8728C.append(", logo=");
        m8728C.append(this.f63948d);
        m8728C.append("}");
        return m8728C.toString();
    }
}
