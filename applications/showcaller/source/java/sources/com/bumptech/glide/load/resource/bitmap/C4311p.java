package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/p.class */
public class C4311p extends AbstractC4298f {

    /* renamed from: b */
    private static final byte[] f13272b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(AbstractC3999c.f12633a);

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        messageDigest.update(f13272b);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4298f
    /* renamed from: c */
    protected Bitmap mo22904c(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        return C4322x.m22872f(abstractC4096e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        return obj instanceof C4311p;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return 1572326941;
    }
}
