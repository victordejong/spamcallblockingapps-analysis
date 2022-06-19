package p193e.p1451f.p1452a.p1457n.p1460o;

import java.security.MessageDigest;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22267i;
/* renamed from: e.f.a.n.o.o */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/o.class */
public class C22383o implements AbstractC22263f {

    /* renamed from: b */
    public final Object f62186b;

    /* renamed from: c */
    public final int f62187c;

    /* renamed from: d */
    public final int f62188d;

    /* renamed from: e */
    public final Class<?> f62189e;

    /* renamed from: f */
    public final Class<?> f62190f;

    /* renamed from: g */
    public final AbstractC22263f f62191g;

    /* renamed from: h */
    public final Map<Class<?>, AbstractC22271m<?>> f62192h;

    /* renamed from: i */
    public final C22267i f62193i;

    /* renamed from: j */
    public int f62194j;

    public C22383o(Object obj, AbstractC22263f abstractC22263f, int i, int i2, Map<Class<?>, AbstractC22271m<?>> map, Class<?> cls, Class<?> cls2, C22267i c22267i) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.f62186b = obj;
        Objects.requireNonNull(abstractC22263f, "Signature must not be null");
        this.f62191g = abstractC22263f;
        this.f62187c = i;
        this.f62188d = i2;
        Objects.requireNonNull(map, "Argument must not be null");
        this.f62192h = map;
        Objects.requireNonNull(cls, "Resource class must not be null");
        this.f62189e = cls;
        Objects.requireNonNull(cls2, "Transcode class must not be null");
        this.f62190f = cls2;
        Objects.requireNonNull(c22267i, "Argument must not be null");
        this.f62193i = c22267i;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C22383o) {
            C22383o c22383o = (C22383o) obj;
            z = false;
            if (this.f62186b.equals(c22383o.f62186b)) {
                z = false;
                if (this.f62191g.equals(c22383o.f62191g)) {
                    z = false;
                    if (this.f62188d == c22383o.f62188d) {
                        z = false;
                        if (this.f62187c == c22383o.f62187c) {
                            z = false;
                            if (this.f62192h.equals(c22383o.f62192h)) {
                                z = false;
                                if (this.f62189e.equals(c22383o.f62189e)) {
                                    z = false;
                                    if (this.f62190f.equals(c22383o.f62190f)) {
                                        z = false;
                                        if (this.f62193i.equals(c22383o.f62193i)) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        if (this.f62194j == 0) {
            int hashCode = this.f62186b.hashCode();
            this.f62194j = hashCode;
            int hashCode2 = this.f62191g.hashCode() + (hashCode * 31);
            this.f62194j = hashCode2;
            int i = (hashCode2 * 31) + this.f62187c;
            this.f62194j = i;
            int i2 = (i * 31) + this.f62188d;
            this.f62194j = i2;
            int hashCode3 = this.f62192h.hashCode() + (i2 * 31);
            this.f62194j = hashCode3;
            int hashCode4 = this.f62189e.hashCode() + (hashCode3 * 31);
            this.f62194j = hashCode4;
            int hashCode5 = this.f62190f.hashCode() + (hashCode4 * 31);
            this.f62194j = hashCode5;
            this.f62194j = this.f62193i.hashCode() + (hashCode5 * 31);
        }
        return this.f62194j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EngineKey{model=");
        m8728C.append(this.f62186b);
        m8728C.append(", width=");
        m8728C.append(this.f62187c);
        m8728C.append(", height=");
        m8728C.append(this.f62188d);
        m8728C.append(", resourceClass=");
        m8728C.append(this.f62189e);
        m8728C.append(", transcodeClass=");
        m8728C.append(this.f62190f);
        m8728C.append(", signature=");
        m8728C.append(this.f62191g);
        m8728C.append(", hashCode=");
        m8728C.append(this.f62194j);
        m8728C.append(", transformations=");
        m8728C.append(this.f62192h);
        m8728C.append(", options=");
        m8728C.append(this.f62193i);
        m8728C.append('}');
        return m8728C.toString();
    }
}
