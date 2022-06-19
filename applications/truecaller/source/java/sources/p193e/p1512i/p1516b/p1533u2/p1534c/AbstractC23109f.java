package p193e.p1512i.p1516b.p1533u2.p1534c;

import java.net.URI;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.f */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/f.class */
public abstract class AbstractC23109f extends AbstractC23115r {

    /* renamed from: a */
    public final String f63958a;

    /* renamed from: b */
    public final String f63959b;

    /* renamed from: c */
    public final String f63960c;

    /* renamed from: d */
    public final URI f63961d;

    /* renamed from: e */
    public final String f63962e;

    /* renamed from: f */
    public final AbstractC23112o f63963f;

    public AbstractC23109f(String str, String str2, String str3, URI uri, String str4, AbstractC23112o abstractC23112o) {
        Objects.requireNonNull(str, "Null title");
        this.f63958a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f63959b = str2;
        Objects.requireNonNull(str3, "Null price");
        this.f63960c = str3;
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f63961d = uri;
        Objects.requireNonNull(str4, "Null callToAction");
        this.f63962e = str4;
        Objects.requireNonNull(abstractC23112o, "Null image");
        this.f63963f = abstractC23112o;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: a */
    public String mo7534a() {
        return this.f63962e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: b */
    public URI mo7533b() {
        return this.f63961d;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: c */
    public String mo7532c() {
        return this.f63959b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: d */
    public AbstractC23112o mo7531d() {
        return this.f63963f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23115r)) {
            return false;
        }
        AbstractC23115r abstractC23115r = (AbstractC23115r) obj;
        if (!this.f63958a.equals(abstractC23115r.mo7528g()) || !this.f63959b.equals(abstractC23115r.mo7532c()) || !this.f63960c.equals(abstractC23115r.mo7529f()) || !this.f63961d.equals(abstractC23115r.mo7533b()) || !this.f63962e.equals(abstractC23115r.mo7534a()) || !this.f63963f.equals(abstractC23115r.mo7531d())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: f */
    public String mo7529f() {
        return this.f63960c;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23115r
    /* renamed from: g */
    public String mo7528g() {
        return this.f63958a;
    }

    public int hashCode() {
        return ((((((((((this.f63958a.hashCode() ^ 1000003) * 1000003) ^ this.f63959b.hashCode()) * 1000003) ^ this.f63960c.hashCode()) * 1000003) ^ this.f63961d.hashCode()) * 1000003) ^ this.f63962e.hashCode()) * 1000003) ^ this.f63963f.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativeProduct{title=");
        m8728C.append(this.f63958a);
        m8728C.append(", description=");
        m8728C.append(this.f63959b);
        m8728C.append(", price=");
        m8728C.append(this.f63960c);
        m8728C.append(", clickUrl=");
        m8728C.append(this.f63961d);
        m8728C.append(", callToAction=");
        m8728C.append(this.f63962e);
        m8728C.append(", image=");
        m8728C.append(this.f63963f);
        m8728C.append("}");
        return m8728C.toString();
    }
}
