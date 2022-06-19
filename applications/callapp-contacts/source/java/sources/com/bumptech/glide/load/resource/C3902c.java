package com.bumptech.glide.load.resource;

import android.content.Context;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.AbstractC3811u;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c.class */
public final class C3902c<T> implements AbstractC3826l<T> {

    /* renamed from: b */
    private static final AbstractC3826l<?> f14296b = new C3902c();

    private C3902c() {
    }

    /* renamed from: a */
    public static <T> C3902c<T> m37234a() {
        return (C3902c) f14296b;
    }

    @Override // com.bumptech.glide.load.AbstractC3826l
    /* renamed from: a */
    public final AbstractC3811u<T> mo37209a(Context context, AbstractC3811u<T> abstractC3811u, int i, int i2) {
        return abstractC3811u;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
    }
}
