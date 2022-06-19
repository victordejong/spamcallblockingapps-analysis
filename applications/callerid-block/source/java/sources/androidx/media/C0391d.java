package androidx.media;

import android.os.Bundle;
/* renamed from: androidx.media.d */
/* loaded from: classes-dex2jar.jar:androidx/media/d.class */
public class C0391d {
    /* renamed from: a */
    public static boolean m12914a(Bundle bundle, Bundle bundle2) {
        boolean z = true;
        if (bundle == bundle2) {
            return true;
        }
        if (bundle != null) {
            if (bundle2 == null) {
                return bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1;
            }
            return bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        }
        if (bundle2.getInt("android.media.browse.extra.PAGE", -1) != -1 || bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) != -1) {
            z = false;
        }
        return z;
    }
}
