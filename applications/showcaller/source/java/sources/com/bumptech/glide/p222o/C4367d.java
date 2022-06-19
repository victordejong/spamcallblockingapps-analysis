package com.bumptech.glide.p222o;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.p223p.C4382j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.o.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/d.class */
public final class C4367d implements AbstractC3999c {

    /* renamed from: b */
    private final Object f13365b;

    public C4367d(Object obj) {
        this.f13365b = C4382j.m22719d(obj);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        messageDigest.update(this.f13365b.toString().getBytes(AbstractC3999c.f12633a));
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        if (obj instanceof C4367d) {
            return this.f13365b.equals(((C4367d) obj).f13365b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return this.f13365b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f13365b + '}';
    }
}
