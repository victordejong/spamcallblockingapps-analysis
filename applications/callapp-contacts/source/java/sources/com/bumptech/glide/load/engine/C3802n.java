package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.p116g.C3643j;
import java.security.MessageDigest;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/n.class */
final class C3802n implements AbstractC3818f {

    /* renamed from: b */
    private final Object f14119b;

    /* renamed from: c */
    private final int f14120c;

    /* renamed from: d */
    private final int f14121d;

    /* renamed from: e */
    private final Class<?> f14122e;

    /* renamed from: f */
    private final Class<?> f14123f;

    /* renamed from: g */
    private final AbstractC3818f f14124g;

    /* renamed from: h */
    private final Map<Class<?>, AbstractC3826l<?>> f14125h;

    /* renamed from: i */
    private final C3822h f14126i;

    /* renamed from: j */
    private int f14127j;

    public C3802n(Object obj, AbstractC3818f abstractC3818f, int i, int i2, Map<Class<?>, AbstractC3826l<?>> map, Class<?> cls, Class<?> cls2, C3822h c3822h) {
        this.f14119b = C3643j.m37588a(obj, "Argument must not be null");
        this.f14124g = (AbstractC3818f) C3643j.m37588a(abstractC3818f, "Signature must not be null");
        this.f14120c = i;
        this.f14121d = i2;
        this.f14125h = (Map) C3643j.m37588a(map, "Argument must not be null");
        this.f14122e = (Class) C3643j.m37588a(cls, "Resource class must not be null");
        this.f14123f = (Class) C3643j.m37588a(cls2, "Transcode class must not be null");
        this.f14126i = (C3822h) C3643j.m37588a(c3822h, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3802n) {
            C3802n c3802n = (C3802n) obj;
            return this.f14119b.equals(c3802n.f14119b) && this.f14124g.equals(c3802n.f14124g) && this.f14121d == c3802n.f14121d && this.f14120c == c3802n.f14120c && this.f14125h.equals(c3802n.f14125h) && this.f14122e.equals(c3802n.f14122e) && this.f14123f.equals(c3802n.f14123f) && this.f14126i.equals(c3802n.f14126i);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        if (this.f14127j == 0) {
            int hashCode = this.f14119b.hashCode();
            this.f14127j = hashCode;
            int hashCode2 = (hashCode * 31) + this.f14124g.hashCode();
            this.f14127j = hashCode2;
            int i = (hashCode2 * 31) + this.f14120c;
            this.f14127j = i;
            int i2 = (i * 31) + this.f14121d;
            this.f14127j = i2;
            int hashCode3 = (i2 * 31) + this.f14125h.hashCode();
            this.f14127j = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f14122e.hashCode();
            this.f14127j = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f14123f.hashCode();
            this.f14127j = hashCode5;
            this.f14127j = (hashCode5 * 31) + this.f14126i.hashCode();
        }
        return this.f14127j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f14119b + ", width=" + this.f14120c + ", height=" + this.f14121d + ", resourceClass=" + this.f14122e + ", transcodeClass=" + this.f14123f + ", signature=" + this.f14124g + ", hashCode=" + this.f14127j + ", transformations=" + this.f14125h + ", options=" + this.f14126i + '}';
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
