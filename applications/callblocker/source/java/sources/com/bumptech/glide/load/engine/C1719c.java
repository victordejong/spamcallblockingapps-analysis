package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c.class */
final class C1719c implements AbstractC1777f {

    /* renamed from: b */
    private final AbstractC1777f f5203b;

    /* renamed from: c */
    private final AbstractC1777f f5204c;

    public C1719c(AbstractC1777f abstractC1777f, AbstractC1777f abstractC1777f2) {
        this.f5203b = abstractC1777f;
        this.f5204c = abstractC1777f2;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        this.f5203b.mo16320a(messageDigest);
        this.f5204c.mo16320a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C1719c) {
            C1719c c1719c = (C1719c) obj;
            z = false;
            if (this.f5203b.equals(c1719c.f5203b)) {
                z = false;
                if (this.f5204c.equals(c1719c.f5204c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return (this.f5203b.hashCode() * 31) + this.f5204c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f5203b + ", signature=" + this.f5204c + '}';
    }
}
