package com.bumptech.glide.load.data.a;

import android.net.Uri;
import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/b.class */
public final class b {
    private b() {
    }

    public static boolean a(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    public static boolean a(Uri uri) {
        return uri != null && Constants.VAST_TRACKER_CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean b(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
