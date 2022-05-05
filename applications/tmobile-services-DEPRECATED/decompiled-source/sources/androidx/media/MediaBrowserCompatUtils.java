package androidx.media;

import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
import androidx.annotation.RestrictTo;
import com.google.android.gms.common.api.Api;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserCompatUtils.class */
public class MediaBrowserCompatUtils {
    private MediaBrowserCompatUtils() {
    }

    /* renamed from: a */
    public static boolean m18049a(Bundle bundle, Bundle bundle2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            if (!(bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1)) {
                z3 = false;
            }
            return z3;
        } else if (bundle2 == null) {
            if (bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) != -1 || bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) != -1) {
                z = false;
            }
            return z;
        } else {
            if (bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) != bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) || bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) != bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1)) {
                z2 = false;
            }
            return z2;
        }
    }

    /* renamed from: b */
    public static boolean m18048b(Bundle bundle, Bundle bundle2) {
        int i;
        int i2;
        int i3;
        int i4 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i5 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i6 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        int i7 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        int i8 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        boolean z = true;
        if (i4 == -1 || i6 == -1) {
            i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            i2 = 0;
        } else {
            i2 = i4 * i6;
            i = (i6 + i2) - 1;
        }
        if (i5 == -1 || i7 == -1) {
            i3 = 0;
        } else {
            i3 = i5 * i7;
            i8 = (i7 + i3) - 1;
        }
        if (i < i3 || i8 < i2) {
            z = false;
        }
        return z;
    }
}
