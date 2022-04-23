package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.a.e;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/p.class */
public final class p extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f7678b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(f7619a);

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return y.b(eVar, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        return obj instanceof p;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return 1572326941;
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f7678b);
    }
}
