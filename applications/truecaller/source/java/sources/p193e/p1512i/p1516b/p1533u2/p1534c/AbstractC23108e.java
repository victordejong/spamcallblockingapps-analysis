package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.d0.b;
import java.net.URI;
import java.net.URL;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.e */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/e.class */
public abstract class AbstractC23108e extends AbstractC23114q {

    /* renamed from: a */
    public final URI f63955a;

    /* renamed from: b */
    public final URL f63956b;

    /* renamed from: c */
    public final String f63957c;

    public AbstractC23108e(URI uri, URL url, String str) {
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f63955a = uri;
        Objects.requireNonNull(url, "Null imageUrl");
        this.f63956b = url;
        Objects.requireNonNull(str, "Null legalText");
        this.f63957c = str;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23114q
    @b("optoutClickUrl")
    /* renamed from: a */
    public URI mo7537a() {
        return this.f63955a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23114q
    @b("optoutImageUrl")
    /* renamed from: b */
    public URL mo7536b() {
        return this.f63956b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23114q
    @b("longLegalText")
    /* renamed from: c */
    public String mo7535c() {
        return this.f63957c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23114q)) {
            return false;
        }
        AbstractC23114q abstractC23114q = (AbstractC23114q) obj;
        if (!this.f63955a.equals(abstractC23114q.mo7537a()) || !this.f63956b.equals(abstractC23114q.mo7536b()) || !this.f63957c.equals(abstractC23114q.mo7535c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f63955a.hashCode() ^ 1000003) * 1000003) ^ this.f63956b.hashCode()) * 1000003) ^ this.f63957c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativePrivacy{clickUrl=");
        m8728C.append(this.f63955a);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f63956b);
        m8728C.append(", legalText=");
        return C22128a.m8618h(m8728C, this.f63957c, "}");
    }
}
