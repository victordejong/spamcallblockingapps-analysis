package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c.class */
final class C4047c implements AbstractC3999c {

    /* renamed from: b */
    private final AbstractC3999c f12762b;

    /* renamed from: c */
    private final AbstractC3999c f12763c;

    public C4047c(AbstractC3999c abstractC3999c, AbstractC3999c abstractC3999c2) {
        this.f12762b = abstractC3999c;
        this.f12763c = abstractC3999c2;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        this.f12762b.mo22754a(messageDigest);
        this.f12763c.mo22754a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4047c) {
            C4047c c4047c = (C4047c) obj;
            z = false;
            if (this.f12762b.equals(c4047c.f12762b)) {
                z = false;
                if (this.f12763c.equals(c4047c.f12763c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return (this.f12762b.hashCode() * 31) + this.f12763c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f12762b + ", signature=" + this.f12763c + '}';
    }
}
