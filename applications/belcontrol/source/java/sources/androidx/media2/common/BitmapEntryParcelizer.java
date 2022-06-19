package androidx.media2.common;

import android.graphics.Bitmap;
import androidx.media2.common.MediaMetadata;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/BitmapEntryParcelizer.class */
public final class BitmapEntryParcelizer {
    public static MediaMetadata.a read(d40 d40Var) {
        MediaMetadata.a aVar = new MediaMetadata.a();
        aVar.a = d40Var.m2885E(aVar.a, 1);
        aVar.b = (Bitmap) d40Var.m2889A(aVar.b, 2);
        return aVar;
    }

    public static void write(MediaMetadata.a aVar, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2848h0(aVar.a, 1);
        d40Var.m2856d0(aVar.b, 2);
    }
}
