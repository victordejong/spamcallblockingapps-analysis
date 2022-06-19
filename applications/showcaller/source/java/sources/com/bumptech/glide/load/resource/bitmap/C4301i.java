package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/i.class */
public class C4301i extends AbstractC4298f {

    /* renamed from: b */
    private static final byte[] f13252b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(AbstractC3999c.f12633a);

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        messageDigest.update(f13252b);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4298f
    /* renamed from: c */
    protected Bitmap mo22904c(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        return C4322x.m22876b(abstractC4096e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        return obj instanceof C4301i;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return -599754482;
    }
}
