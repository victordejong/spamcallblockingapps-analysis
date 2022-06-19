package com.bumptech.glide.p115f;

import com.bumptech.glide.load.AbstractC3818f;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.f.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/d.class */
public final class C3615d implements AbstractC3818f {

    /* renamed from: b */
    private final String f13725b;

    /* renamed from: c */
    private final long f13726c;

    /* renamed from: d */
    private final int f13727d;

    public C3615d(String str, long j, int i) {
        this.f13725b = str == null ? "" : str;
        this.f13726c = j;
        this.f13727d = i;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C3615d c3615d = (C3615d) obj;
        return this.f13726c == c3615d.f13726c && this.f13727d == c3615d.f13727d && this.f13725b.equals(c3615d.f13725b);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        int hashCode = this.f13725b.hashCode();
        long j = this.f13726c;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f13727d;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f13726c).putInt(this.f13727d).array());
        messageDigest.update(this.f13725b.getBytes(f14176a));
    }
}
