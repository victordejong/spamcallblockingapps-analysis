package com.bumptech.glide.load.resource;

import android.content.Context;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.l;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c.class */
public final class c<T> implements l<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final l<?> f7708b = new c();

    private c() {
    }

    public static <T> c<T> a() {
        return (c) f7708b;
    }

    @Override // com.bumptech.glide.load.l
    public final u<T> a(Context context, u<T> uVar, int i, int i2) {
        return uVar;
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
    }
}
