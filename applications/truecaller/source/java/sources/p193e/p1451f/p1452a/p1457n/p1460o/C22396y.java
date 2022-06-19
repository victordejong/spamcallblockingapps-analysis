package p193e.p1451f.p1452a.p1457n.p1460o;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1480t.C22620g;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.o.y */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/y.class */
public final class C22396y implements AbstractC22263f {

    /* renamed from: j */
    public static final C22620g<Class<?>, byte[]> f62230j = new C22620g<>(50);

    /* renamed from: b */
    public final AbstractC22301b f62231b;

    /* renamed from: c */
    public final AbstractC22263f f62232c;

    /* renamed from: d */
    public final AbstractC22263f f62233d;

    /* renamed from: e */
    public final int f62234e;

    /* renamed from: f */
    public final int f62235f;

    /* renamed from: g */
    public final Class<?> f62236g;

    /* renamed from: h */
    public final C22267i f62237h;

    /* renamed from: i */
    public final AbstractC22271m<?> f62238i;

    public C22396y(AbstractC22301b abstractC22301b, AbstractC22263f abstractC22263f, AbstractC22263f abstractC22263f2, int i, int i2, AbstractC22271m<?> abstractC22271m, Class<?> cls, C22267i c22267i) {
        this.f62231b = abstractC22301b;
        this.f62232c = abstractC22263f;
        this.f62233d = abstractC22263f2;
        this.f62234e = i;
        this.f62235f = i2;
        this.f62238i = abstractC22271m;
        this.f62236g = cls;
        this.f62237h = c22267i;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f62231b.mo8336d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f62234e).putInt(this.f62235f).array();
        this.f62233d.mo8036b(messageDigest);
        this.f62232c.mo8036b(messageDigest);
        messageDigest.update(bArr);
        AbstractC22271m<?> abstractC22271m = this.f62238i;
        if (abstractC22271m != null) {
            abstractC22271m.mo8036b(messageDigest);
        }
        this.f62237h.mo8036b(messageDigest);
        C22620g<Class<?>, byte[]> c22620g = f62230j;
        byte[] m8030a = c22620g.m8030a(this.f62236g);
        byte[] bArr2 = m8030a;
        if (m8030a == null) {
            bArr2 = this.f62236g.getName().getBytes(AbstractC22263f.f61895a);
            c22620g.m8027d(this.f62236g, bArr2);
        }
        messageDigest.update(bArr2);
        this.f62231b.put(bArr);
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C22396y) {
            C22396y c22396y = (C22396y) obj;
            z = false;
            if (this.f62235f == c22396y.f62235f) {
                z = false;
                if (this.f62234e == c22396y.f62234e) {
                    z = false;
                    if (C22623j.m8022b(this.f62238i, c22396y.f62238i)) {
                        z = false;
                        if (this.f62236g.equals(c22396y.f62236g)) {
                            z = false;
                            if (this.f62232c.equals(c22396y.f62232c)) {
                                z = false;
                                if (this.f62233d.equals(c22396y.f62233d)) {
                                    z = false;
                                    if (this.f62237h.equals(c22396y.f62237h)) {
                                        z = true;
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
        int hashCode = ((((this.f62233d.hashCode() + (this.f62232c.hashCode() * 31)) * 31) + this.f62234e) * 31) + this.f62235f;
        AbstractC22271m<?> abstractC22271m = this.f62238i;
        int i = hashCode;
        if (abstractC22271m != null) {
            i = (hashCode * 31) + abstractC22271m.hashCode();
        }
        return this.f62237h.hashCode() + ((this.f62236g.hashCode() + (i * 31)) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ResourceCacheKey{sourceKey=");
        m8728C.append(this.f62232c);
        m8728C.append(", signature=");
        m8728C.append(this.f62233d);
        m8728C.append(", width=");
        m8728C.append(this.f62234e);
        m8728C.append(", height=");
        m8728C.append(this.f62235f);
        m8728C.append(", decodedResourceClass=");
        m8728C.append(this.f62236g);
        m8728C.append(", transformation='");
        m8728C.append(this.f62238i);
        m8728C.append('\'');
        m8728C.append(", options=");
        m8728C.append(this.f62237h);
        m8728C.append('}');
        return m8728C.toString();
    }
}
