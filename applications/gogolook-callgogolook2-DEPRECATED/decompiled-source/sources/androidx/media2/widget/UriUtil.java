package androidx.media2.widget;

import android.net.Uri;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/UriUtil.class */
public class UriUtil {
    public static boolean isFromNetwork(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        boolean z = false;
        if (scheme == null) {
            return false;
        }
        if (scheme.equals("http") || scheme.equals("https") || scheme.equals("rtsp")) {
            z = true;
        }
        return z;
    }
}
