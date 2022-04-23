package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.a.e;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/j.class */
public final class j extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f7663b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(f7619a);

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return y.c(eVar, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        return obj instanceof j;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return -670243078;
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f7663b);
    }
}
