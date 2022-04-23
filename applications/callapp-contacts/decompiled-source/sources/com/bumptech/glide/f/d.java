package com.bumptech.glide.f;

import com.bumptech.glide.load.f;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/d.class */
public final class d implements f {

    /* renamed from: b  reason: collision with root package name */
    private final String f7329b;

    /* renamed from: c  reason: collision with root package name */
    private final long f7330c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7331d;

    public d(String str, long j, int i) {
        this.f7329b = str == null ? "" : str;
        this.f7330c = j;
        this.f7331d = i;
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f7330c == dVar.f7330c && this.f7331d == dVar.f7331d && this.f7329b.equals(dVar.f7329b);
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        int hashCode = this.f7329b.hashCode();
        long j = this.f7330c;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f7331d;
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f7330c).putInt(this.f7331d).array());
        messageDigest.update(this.f7329b.getBytes(f7619a));
    }
}
