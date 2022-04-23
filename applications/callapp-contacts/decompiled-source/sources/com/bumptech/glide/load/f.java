package com.bumptech.glide.load;

import java.nio.charset.Charset;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/f.class */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f7619a = Charset.forName("UTF-8");

    boolean equals(Object obj);

    int hashCode();

    void updateDiskCacheKey(MessageDigest messageDigest);
}
