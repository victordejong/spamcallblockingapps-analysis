package com.bumptech.glide.load.data.p208o;

import android.net.Uri;
/* renamed from: com.bumptech.glide.load.data.o.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/b.class */
public final class C4026b {
    /* renamed from: a */
    public static boolean m23471a(Uri uri) {
        return m23470b(uri) && !m23467e(uri);
    }

    /* renamed from: b */
    public static boolean m23470b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: c */
    public static boolean m23469c(Uri uri) {
        return m23470b(uri) && m23467e(uri);
    }

    /* renamed from: d */
    public static boolean m23468d(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: e */
    private static boolean m23467e(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
