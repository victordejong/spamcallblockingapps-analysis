package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/j.class */
public final class C3869j extends AbstractC3865f {

    /* renamed from: b */
    private static final byte[] f14226b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(f14176a);

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3865f
    /* renamed from: a */
    protected final Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        return C3898y.m37236c(abstractC3712e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        return obj instanceof C3869j;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return -670243078;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f14226b);
    }
}
