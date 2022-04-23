package com.bumptech.glide.f;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.f;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/e.class */
public final class e implements f {

    /* renamed from: b  reason: collision with root package name */
    private final Object f7332b;

    public e(Object obj) {
        this.f7332b = j.a(obj, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f7332b.equals(((e) obj).f7332b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return this.f7332b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f7332b + '}';
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.f7332b.toString().getBytes(f7619a));
    }
}
