package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/p.class */
public final class C3885p extends AbstractC3865f {

    /* renamed from: b */
    private static final byte[] f14256b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(f14176a);

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3865f
    /* renamed from: a */
    protected final Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        return C3898y.m37237b(abstractC3712e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        return obj instanceof C3885p;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return 1572326941;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f14256b);
    }
}
