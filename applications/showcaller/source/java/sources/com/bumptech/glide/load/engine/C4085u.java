package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.p223p.C4378g;
import com.bumptech.glide.p223p.C4383k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/u.class */
final class C4085u implements AbstractC3999c {

    /* renamed from: b */
    private static final C4378g<Class<?>, byte[]> f12891b = new C4378g<>(50);

    /* renamed from: c */
    private final AbstractC4091b f12892c;

    /* renamed from: d */
    private final AbstractC3999c f12893d;

    /* renamed from: e */
    private final AbstractC3999c f12894e;

    /* renamed from: f */
    private final int f12895f;

    /* renamed from: g */
    private final int f12896g;

    /* renamed from: h */
    private final Class<?> f12897h;

    /* renamed from: i */
    private final C4032e f12898i;

    /* renamed from: j */
    private final AbstractC4148h<?> f12899j;

    public C4085u(AbstractC4091b abstractC4091b, AbstractC3999c abstractC3999c, AbstractC3999c abstractC3999c2, int i, int i2, AbstractC4148h<?> abstractC4148h, Class<?> cls, C4032e c4032e) {
        this.f12892c = abstractC4091b;
        this.f12893d = abstractC3999c;
        this.f12894e = abstractC3999c2;
        this.f12895f = i;
        this.f12896g = i2;
        this.f12899j = abstractC4148h;
        this.f12897h = cls;
        this.f12898i = c4032e;
    }

    /* renamed from: c */
    private byte[] m23314c() {
        C4378g<Class<?>, byte[]> c4378g = f12891b;
        byte[] m22732g = c4378g.m22732g(this.f12897h);
        byte[] bArr = m22732g;
        if (m22732g == null) {
            bArr = this.f12897h.getName().getBytes(AbstractC3999c.f12633a);
            c4378g.m22728k(this.f12897h, bArr);
        }
        return bArr;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f12892c.mo23277c(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f12895f).putInt(this.f12896g).array();
        this.f12894e.mo22754a(messageDigest);
        this.f12893d.mo22754a(messageDigest);
        messageDigest.update(bArr);
        AbstractC4148h<?> abstractC4148h = this.f12899j;
        if (abstractC4148h != null) {
            abstractC4148h.mo22754a(messageDigest);
        }
        this.f12898i.mo22754a(messageDigest);
        messageDigest.update(m23314c());
        this.f12892c.mo23276d(bArr);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4085u) {
            C4085u c4085u = (C4085u) obj;
            z = false;
            if (this.f12896g == c4085u.f12896g) {
                z = false;
                if (this.f12895f == c4085u.f12895f) {
                    z = false;
                    if (C4383k.m22715c(this.f12899j, c4085u.f12899j)) {
                        z = false;
                        if (this.f12897h.equals(c4085u.f12897h)) {
                            z = false;
                            if (this.f12893d.equals(c4085u.f12893d)) {
                                z = false;
                                if (this.f12894e.equals(c4085u.f12894e)) {
                                    z = false;
                                    if (this.f12898i.equals(c4085u.f12898i)) {
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

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        int hashCode = (((((this.f12893d.hashCode() * 31) + this.f12894e.hashCode()) * 31) + this.f12895f) * 31) + this.f12896g;
        AbstractC4148h<?> abstractC4148h = this.f12899j;
        int i = hashCode;
        if (abstractC4148h != null) {
            i = (hashCode * 31) + abstractC4148h.hashCode();
        }
        return (((i * 31) + this.f12897h.hashCode()) * 31) + this.f12898i.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f12893d + ", signature=" + this.f12894e + ", width=" + this.f12895f + ", height=" + this.f12896g + ", decodedResourceClass=" + this.f12897h + ", transformation='" + this.f12899j + "', options=" + this.f12898i + '}';
    }
}
