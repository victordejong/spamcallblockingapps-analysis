package com.bumptech.glide.load.data.p118a;

import android.net.Uri;
import com.mopub.common.Constants;
/* renamed from: com.bumptech.glide.load.data.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/b.class */
public final class C3665b {
    private C3665b() {
    }

    /* renamed from: a */
    public static boolean m37536a(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: a */
    public static boolean m37535a(Uri uri) {
        return uri != null && Constants.VAST_TRACKER_CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: b */
    public static boolean m37534b(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
