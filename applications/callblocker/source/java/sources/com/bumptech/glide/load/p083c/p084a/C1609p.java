package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.c.a.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/p.class */
public class C1609p extends AbstractC1584e {

    /* renamed from: b */
    private static final byte[] f4995b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(f5410a);

    @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1584e
    /* renamed from: a */
    protected Bitmap mo16744a(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2) {
        return C1617v.m16716b(abstractC1678e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        messageDigest.update(f4995b);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        return obj instanceof C1609p;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.FitCenter".hashCode();
    }
}
