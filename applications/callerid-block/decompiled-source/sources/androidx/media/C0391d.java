package androidx.media;

import android.os.Bundle;
/* renamed from: androidx.media.d */
/* loaded from: classes-dex2jar.jar:androidx/media/d.class */
public class C0391d {
    /* renamed from: a */
    public static boolean m12914a(Bundle bundle, Bundle bundle2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            if (!(bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1)) {
                z3 = false;
            }
            return z3;
        } else if (bundle2 == null) {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) != -1 || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != -1) {
                z = false;
            }
            return z;
        } else {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) != bundle2.getInt("android.media.browse.extra.PAGE", -1) || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                z2 = false;
            }
            return z2;
        }
    }
}
