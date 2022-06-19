package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.p077h.C1453f;
import com.bumptech.glide.p077h.C1457j;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v.class */
final class C1773v implements AbstractC1777f {

    /* renamed from: b */
    private static final C1453f<Class<?>, byte[]> f5392b = new C1453f<>(50);

    /* renamed from: c */
    private final AbstractC1673b f5393c;

    /* renamed from: d */
    private final AbstractC1777f f5394d;

    /* renamed from: e */
    private final AbstractC1777f f5395e;

    /* renamed from: f */
    private final int f5396f;

    /* renamed from: g */
    private final int f5397g;

    /* renamed from: h */
    private final Class<?> f5398h;

    /* renamed from: i */
    private final C1781h f5399i;

    /* renamed from: j */
    private final AbstractC1784k<?> f5400j;

    public C1773v(AbstractC1673b abstractC1673b, AbstractC1777f abstractC1777f, AbstractC1777f abstractC1777f2, int i, int i2, AbstractC1784k<?> abstractC1784k, Class<?> cls, C1781h c1781h) {
        this.f5393c = abstractC1673b;
        this.f5394d = abstractC1777f;
        this.f5395e = abstractC1777f2;
        this.f5396f = i;
        this.f5397g = i2;
        this.f5400j = abstractC1784k;
        this.f5398h = cls;
        this.f5399i = c1781h;
    }

    /* renamed from: a */
    private byte[] m16343a() {
        byte[] m16997b = f5392b.m16997b(this.f5398h);
        byte[] bArr = m16997b;
        if (m16997b == null) {
            bArr = this.f5398h.getName().getBytes(f5410a);
            f5392b.m16996b(this.f5398h, bArr);
        }
        return bArr;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f5393c.mo16554b(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f5396f).putInt(this.f5397g).array();
        this.f5395e.mo16320a(messageDigest);
        this.f5394d.mo16320a(messageDigest);
        messageDigest.update(bArr);
        if (this.f5400j != null) {
            this.f5400j.mo16320a(messageDigest);
        }
        this.f5399i.mo16320a(messageDigest);
        messageDigest.update(m16343a());
        this.f5393c.mo16557a((AbstractC1673b) bArr);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C1773v) {
            C1773v c1773v = (C1773v) obj;
            z = false;
            if (this.f5397g == c1773v.f5397g) {
                z = false;
                if (this.f5396f == c1773v.f5396f) {
                    z = false;
                    if (C1457j.m16975a(this.f5400j, c1773v.f5400j)) {
                        z = false;
                        if (this.f5398h.equals(c1773v.f5398h)) {
                            z = false;
                            if (this.f5394d.equals(c1773v.f5394d)) {
                                z = false;
                                if (this.f5395e.equals(c1773v.f5395e)) {
                                    z = false;
                                    if (this.f5399i.equals(c1773v.f5399i)) {
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

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        int hashCode = (((((this.f5394d.hashCode() * 31) + this.f5395e.hashCode()) * 31) + this.f5396f) * 31) + this.f5397g;
        int i = hashCode;
        if (this.f5400j != null) {
            i = (hashCode * 31) + this.f5400j.hashCode();
        }
        return (((i * 31) + this.f5398h.hashCode()) * 31) + this.f5399i.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f5394d + ", signature=" + this.f5395e + ", width=" + this.f5396f + ", height=" + this.f5397g + ", decodedResourceClass=" + this.f5398h + ", transformation='" + this.f5400j + "', options=" + this.f5399i + '}';
    }
}
