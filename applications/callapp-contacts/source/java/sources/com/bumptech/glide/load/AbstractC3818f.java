package com.bumptech.glide.load;

import java.nio.charset.Charset;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/f.class */
public interface AbstractC3818f {

    /* renamed from: a */
    public static final Charset f14176a = Charset.forName("UTF-8");

    boolean equals(Object obj);

    int hashCode();

    void updateDiskCacheKey(MessageDigest messageDigest);
}
