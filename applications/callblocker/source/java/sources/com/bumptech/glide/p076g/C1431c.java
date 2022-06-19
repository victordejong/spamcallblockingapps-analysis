package com.bumptech.glide.p076g;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.p077h.C1456i;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.g.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/c.class */
public final class C1431c implements AbstractC1777f {

    /* renamed from: b */
    private final Object f4723b;

    public C1431c(Object obj) {
        this.f4723b = C1456i.m16989a(obj);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        messageDigest.update(this.f4723b.toString().getBytes(f5410a));
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        return obj instanceof C1431c ? this.f4723b.equals(((C1431c) obj).f4723b) : false;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return this.f4723b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f4723b + '}';
    }
}
