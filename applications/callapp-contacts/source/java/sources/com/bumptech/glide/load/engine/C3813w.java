package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.p116g.C3639g;
import com.bumptech.glide.p116g.C3644k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w.class */
final class C3813w implements AbstractC3818f {

    /* renamed from: b */
    private static final C3639g<Class<?>, byte[]> f14156b = new C3639g<>(50);

    /* renamed from: c */
    private final AbstractC3707b f14157c;

    /* renamed from: d */
    private final AbstractC3818f f14158d;

    /* renamed from: e */
    private final AbstractC3818f f14159e;

    /* renamed from: f */
    private final int f14160f;

    /* renamed from: g */
    private final int f14161g;

    /* renamed from: h */
    private final Class<?> f14162h;

    /* renamed from: i */
    private final C3822h f14163i;

    /* renamed from: j */
    private final AbstractC3826l<?> f14164j;

    public C3813w(AbstractC3707b abstractC3707b, AbstractC3818f abstractC3818f, AbstractC3818f abstractC3818f2, int i, int i2, AbstractC3826l<?> abstractC3826l, Class<?> cls, C3822h c3822h) {
        this.f14157c = abstractC3707b;
        this.f14158d = abstractC3818f;
        this.f14159e = abstractC3818f2;
        this.f14160f = i;
        this.f14161g = i2;
        this.f14164j = abstractC3826l;
        this.f14162h = cls;
        this.f14163i = c3822h;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3813w) {
            C3813w c3813w = (C3813w) obj;
            return this.f14161g == c3813w.f14161g && this.f14160f == c3813w.f14160f && C3644k.m37577a(this.f14164j, c3813w.f14164j) && this.f14162h.equals(c3813w.f14162h) && this.f14158d.equals(c3813w.f14158d) && this.f14159e.equals(c3813w.f14159e) && this.f14163i.equals(c3813w.f14163i);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        int hashCode = (((((this.f14158d.hashCode() * 31) + this.f14159e.hashCode()) * 31) + this.f14160f) * 31) + this.f14161g;
        AbstractC3826l<?> abstractC3826l = this.f14164j;
        int i = hashCode;
        if (abstractC3826l != null) {
            i = (hashCode * 31) + abstractC3826l.hashCode();
        }
        return (((i * 31) + this.f14162h.hashCode()) * 31) + this.f14163i.hashCode();
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f14158d + ", signature=" + this.f14159e + ", width=" + this.f14160f + ", height=" + this.f14161g + ", decodedResourceClass=" + this.f14162h + ", transformation='" + this.f14164j + "', options=" + this.f14163i + '}';
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f14157c.mo37471a((Class<Object>) byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f14160f).putInt(this.f14161g).array();
        this.f14159e.updateDiskCacheKey(messageDigest);
        this.f14158d.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        AbstractC3826l<?> abstractC3826l = this.f14164j;
        if (abstractC3826l != null) {
            abstractC3826l.updateDiskCacheKey(messageDigest);
        }
        this.f14163i.updateDiskCacheKey(messageDigest);
        C3639g<Class<?>, byte[]> c3639g = f14156b;
        byte[] bArr2 = c3639g.get(this.f14162h);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = this.f14162h.getName().getBytes(f14176a);
            c3639g.put(this.f14162h, bArr3);
        }
        messageDigest.update(bArr3);
        this.f14157c.mo37470a((AbstractC3707b) bArr);
    }
}
