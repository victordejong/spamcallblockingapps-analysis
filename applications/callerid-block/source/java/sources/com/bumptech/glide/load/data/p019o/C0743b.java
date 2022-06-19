package com.bumptech.glide.load.data.p019o;

import android.net.Uri;
/* renamed from: com.bumptech.glide.load.data.o.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/b.class */
public final class C0743b {
    /* renamed from: a */
    public static boolean m11173a(Uri uri) {
        return m11172b(uri) && !m11169e(uri);
    }

    /* renamed from: b */
    public static boolean m11172b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: c */
    public static boolean m11171c(Uri uri) {
        return m11172b(uri) && m11169e(uri);
    }

    /* renamed from: d */
    public static boolean m11170d(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: e */
    private static boolean m11169e(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
