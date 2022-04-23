package com.bumptech.glide.f;

import com.bumptech.glide.load.f;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/c.class */
public final class c implements f {

    /* renamed from: b  reason: collision with root package name */
    private static final c f7328b = new c();

    private c() {
    }

    public static c a() {
        return f7328b;
    }

    public final String toString() {
        return "EmptySignature";
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
    }
}
