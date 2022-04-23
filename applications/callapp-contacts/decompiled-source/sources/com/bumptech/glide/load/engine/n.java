package com.bumptech.glide.load.engine;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.l;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/n.class */
final class n implements f {

    /* renamed from: b  reason: collision with root package name */
    private final Object f7587b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7588c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7589d;
    private final Class<?> e;
    private final Class<?> f;
    private final f g;
    private final Map<Class<?>, l<?>> h;
    private final h i;
    private int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Object obj, f fVar, int i, int i2, Map<Class<?>, l<?>> map, Class<?> cls, Class<?> cls2, h hVar) {
        this.f7587b = j.a(obj, "Argument must not be null");
        this.g = (f) j.a(fVar, "Signature must not be null");
        this.f7588c = i;
        this.f7589d = i2;
        this.h = (Map) j.a(map, "Argument must not be null");
        this.e = (Class) j.a(cls, "Resource class must not be null");
        this.f = (Class) j.a(cls2, "Transcode class must not be null");
        this.i = (h) j.a(hVar, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f7587b.equals(nVar.f7587b) && this.g.equals(nVar.g) && this.f7589d == nVar.f7589d && this.f7588c == nVar.f7588c && this.h.equals(nVar.h) && this.e.equals(nVar.e) && this.f.equals(nVar.f) && this.i.equals(nVar.i);
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        if (this.j == 0) {
            int hashCode = this.f7587b.hashCode();
            this.j = hashCode;
            int hashCode2 = (hashCode * 31) + this.g.hashCode();
            this.j = hashCode2;
            int i = (hashCode2 * 31) + this.f7588c;
            this.j = i;
            int i2 = (i * 31) + this.f7589d;
            this.j = i2;
            int hashCode3 = (i2 * 31) + this.h.hashCode();
            this.j = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.e.hashCode();
            this.j = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f.hashCode();
            this.j = hashCode5;
            this.j = (hashCode5 * 31) + this.i.hashCode();
        }
        return this.j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f7587b + ", width=" + this.f7588c + ", height=" + this.f7589d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.j + ", transformations=" + this.h + ", options=" + this.i + '}';
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
