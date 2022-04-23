package com.bumptech.glide.load.engine;

import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.l;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w.class */
final class w implements f {

    /* renamed from: b  reason: collision with root package name */
    private static final g<Class<?>, byte[]> f7608b = new g<>(50);

    /* renamed from: c  reason: collision with root package name */
    private final b f7609c;

    /* renamed from: d  reason: collision with root package name */
    private final f f7610d;
    private final f e;
    private final int f;
    private final int g;
    private final Class<?> h;
    private final h i;
    private final l<?> j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(b bVar, f fVar, f fVar2, int i, int i2, l<?> lVar, Class<?> cls, h hVar) {
        this.f7609c = bVar;
        this.f7610d = fVar;
        this.e = fVar2;
        this.f = i;
        this.g = i2;
        this.j = lVar;
        this.h = cls;
        this.i = hVar;
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.g == wVar.g && this.f == wVar.f && k.a(this.j, wVar.j) && this.h.equals(wVar.h) && this.f7610d.equals(wVar.f7610d) && this.e.equals(wVar.e) && this.i.equals(wVar.i);
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        int hashCode = (((((this.f7610d.hashCode() * 31) + this.e.hashCode()) * 31) + this.f) * 31) + this.g;
        l<?> lVar = this.j;
        int i = hashCode;
        if (lVar != null) {
            i = (hashCode * 31) + lVar.hashCode();
        }
        return (((i * 31) + this.h.hashCode()) * 31) + this.i.hashCode();
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f7610d + ", signature=" + this.e + ", width=" + this.f + ", height=" + this.g + ", decodedResourceClass=" + this.h + ", transformation='" + this.j + "', options=" + this.i + '}';
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f7609c.a((Class<Object>) byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f).putInt(this.g).array();
        this.e.updateDiskCacheKey(messageDigest);
        this.f7610d.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        l<?> lVar = this.j;
        if (lVar != null) {
            lVar.updateDiskCacheKey(messageDigest);
        }
        this.i.updateDiskCacheKey(messageDigest);
        g<Class<?>, byte[]> gVar = f7608b;
        byte[] bArr2 = gVar.get(this.h);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = this.h.getName().getBytes(f7619a);
            gVar.put(this.h, bArr3);
        }
        messageDigest.update(bArr3);
        this.f7609c.a((b) bArr);
    }
}
