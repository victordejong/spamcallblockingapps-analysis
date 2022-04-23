package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.a.e;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/i.class */
public final class i extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f7662b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(f7619a);

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return y.a(eVar, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return -599754482;
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f7662b);
    }
}
