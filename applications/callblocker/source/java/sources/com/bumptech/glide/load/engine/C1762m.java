package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.p077h.C1456i;
import java.security.MessageDigest;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/m.class */
class C1762m implements AbstractC1777f {

    /* renamed from: b */
    private final Object f5355b;

    /* renamed from: c */
    private final int f5356c;

    /* renamed from: d */
    private final int f5357d;

    /* renamed from: e */
    private final Class<?> f5358e;

    /* renamed from: f */
    private final Class<?> f5359f;

    /* renamed from: g */
    private final AbstractC1777f f5360g;

    /* renamed from: h */
    private final Map<Class<?>, AbstractC1784k<?>> f5361h;

    /* renamed from: i */
    private final C1781h f5362i;

    /* renamed from: j */
    private int f5363j;

    public C1762m(Object obj, AbstractC1777f abstractC1777f, int i, int i2, Map<Class<?>, AbstractC1784k<?>> map, Class<?> cls, Class<?> cls2, C1781h c1781h) {
        this.f5355b = C1456i.m16989a(obj);
        this.f5360g = (AbstractC1777f) C1456i.m16988a(abstractC1777f, "Signature must not be null");
        this.f5356c = i;
        this.f5357d = i2;
        this.f5361h = (Map) C1456i.m16989a(map);
        this.f5358e = (Class) C1456i.m16988a(cls, "Resource class must not be null");
        this.f5359f = (Class) C1456i.m16988a(cls2, "Transcode class must not be null");
        this.f5362i = (C1781h) C1456i.m16989a(c1781h);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C1762m) {
            C1762m c1762m = (C1762m) obj;
            z = false;
            if (this.f5355b.equals(c1762m.f5355b)) {
                z = false;
                if (this.f5360g.equals(c1762m.f5360g)) {
                    z = false;
                    if (this.f5357d == c1762m.f5357d) {
                        z = false;
                        if (this.f5356c == c1762m.f5356c) {
                            z = false;
                            if (this.f5361h.equals(c1762m.f5361h)) {
                                z = false;
                                if (this.f5358e.equals(c1762m.f5358e)) {
                                    z = false;
                                    if (this.f5359f.equals(c1762m.f5359f)) {
                                        z = false;
                                        if (this.f5362i.equals(c1762m.f5362i)) {
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

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        if (this.f5363j == 0) {
            this.f5363j = this.f5355b.hashCode();
            this.f5363j = (this.f5363j * 31) + this.f5360g.hashCode();
            this.f5363j = (this.f5363j * 31) + this.f5356c;
            this.f5363j = (this.f5363j * 31) + this.f5357d;
            this.f5363j = (this.f5363j * 31) + this.f5361h.hashCode();
            this.f5363j = (this.f5363j * 31) + this.f5358e.hashCode();
            this.f5363j = (this.f5363j * 31) + this.f5359f.hashCode();
            this.f5363j = (this.f5363j * 31) + this.f5362i.hashCode();
        }
        return this.f5363j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f5355b + ", width=" + this.f5356c + ", height=" + this.f5357d + ", resourceClass=" + this.f5358e + ", transcodeClass=" + this.f5359f + ", signature=" + this.f5360g + ", hashCode=" + this.f5363j + ", transformations=" + this.f5361h + ", options=" + this.f5362i + '}';
    }
}
