package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.p223p.C4382j;
import java.security.MessageDigest;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l.class */
class C4074l implements AbstractC3999c {

    /* renamed from: b */
    private final Object f12854b;

    /* renamed from: c */
    private final int f12855c;

    /* renamed from: d */
    private final int f12856d;

    /* renamed from: e */
    private final Class<?> f12857e;

    /* renamed from: f */
    private final Class<?> f12858f;

    /* renamed from: g */
    private final AbstractC3999c f12859g;

    /* renamed from: h */
    private final Map<Class<?>, AbstractC4148h<?>> f12860h;

    /* renamed from: i */
    private final C4032e f12861i;

    /* renamed from: j */
    private int f12862j;

    public C4074l(Object obj, AbstractC3999c abstractC3999c, int i, int i2, Map<Class<?>, AbstractC4148h<?>> map, Class<?> cls, Class<?> cls2, C4032e c4032e) {
        this.f12854b = C4382j.m22719d(obj);
        this.f12859g = (AbstractC3999c) C4382j.m22718e(abstractC3999c, "Signature must not be null");
        this.f12855c = i;
        this.f12856d = i2;
        this.f12860h = (Map) C4382j.m22719d(map);
        this.f12857e = (Class) C4382j.m22718e(cls, "Resource class must not be null");
        this.f12858f = (Class) C4382j.m22718e(cls2, "Transcode class must not be null");
        this.f12861i = (C4032e) C4382j.m22719d(c4032e);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4074l) {
            C4074l c4074l = (C4074l) obj;
            z = false;
            if (this.f12854b.equals(c4074l.f12854b)) {
                z = false;
                if (this.f12859g.equals(c4074l.f12859g)) {
                    z = false;
                    if (this.f12856d == c4074l.f12856d) {
                        z = false;
                        if (this.f12855c == c4074l.f12855c) {
                            z = false;
                            if (this.f12860h.equals(c4074l.f12860h)) {
                                z = false;
                                if (this.f12857e.equals(c4074l.f12857e)) {
                                    z = false;
                                    if (this.f12858f.equals(c4074l.f12858f)) {
                                        z = false;
                                        if (this.f12861i.equals(c4074l.f12861i)) {
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

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        if (this.f12862j == 0) {
            int hashCode = this.f12854b.hashCode();
            this.f12862j = hashCode;
            int hashCode2 = (hashCode * 31) + this.f12859g.hashCode();
            this.f12862j = hashCode2;
            int i = (hashCode2 * 31) + this.f12855c;
            this.f12862j = i;
            int i2 = (i * 31) + this.f12856d;
            this.f12862j = i2;
            int hashCode3 = (i2 * 31) + this.f12860h.hashCode();
            this.f12862j = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f12857e.hashCode();
            this.f12862j = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f12858f.hashCode();
            this.f12862j = hashCode5;
            this.f12862j = (hashCode5 * 31) + this.f12861i.hashCode();
        }
        return this.f12862j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f12854b + ", width=" + this.f12855c + ", height=" + this.f12856d + ", resourceClass=" + this.f12857e + ", transcodeClass=" + this.f12858f + ", signature=" + this.f12859g + ", hashCode=" + this.f12862j + ", transformations=" + this.f12860h + ", options=" + this.f12861i + '}';
    }
}
