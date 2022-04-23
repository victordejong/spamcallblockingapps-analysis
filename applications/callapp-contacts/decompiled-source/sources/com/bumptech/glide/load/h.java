package com.bumptech.glide.load;

import androidx.b.a;
import androidx.b.g;
import com.bumptech.glide.g.b;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/h.class */
public final class h implements f {

    /* renamed from: b  reason: collision with root package name */
    private final a<g<?>, Object> f7624b = new b();

    public final <T> h a(g<T> gVar, T t) {
        this.f7624b.put(gVar, t);
        return this;
    }

    public final <T> T a(g<T> gVar) {
        return this.f7624b.containsKey(gVar) ? (T) this.f7624b.get(gVar) : gVar.f7620a;
    }

    public final void a(h hVar) {
        this.f7624b.a((g<? extends g<?>, ? extends Object>) hVar.f7624b);
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f7624b.equals(((h) obj).f7624b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return this.f7624b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f7624b + '}';
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        for (int i = 0; i < this.f7624b.size(); i++) {
            g<?> b2 = this.f7624b.b(i);
            Object c2 = this.f7624b.c(i);
            g.a<?> aVar = b2.f7621b;
            if (b2.f7623d == null) {
                b2.f7623d = b2.f7622c.getBytes(f.f7619a);
            }
            aVar.a(b2.f7623d, c2, messageDigest);
        }
    }
}
