package com.bumptech.glide.load.p079a.p080a;

import android.net.Uri;
/* renamed from: com.bumptech.glide.load.a.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a/b.class */
public final class C1467b {
    /* renamed from: a */
    public static boolean m16940a(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: a */
    public static boolean m16939a(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: b */
    public static boolean m16938b(Uri uri) {
        return m16939a(uri) && m16936d(uri);
    }

    /* renamed from: c */
    public static boolean m16937c(Uri uri) {
        return m16939a(uri) && !m16936d(uri);
    }

    /* renamed from: d */
    private static boolean m16936d(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
