package androidx.media2.common;

import android.graphics.Bitmap;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/BitmapEntryParcelizer.class */
public final class BitmapEntryParcelizer {
    public static MediaMetadata$BitmapEntry read(AbstractC26405c abstractC26405c) {
        MediaMetadata$BitmapEntry mediaMetadata$BitmapEntry = new MediaMetadata$BitmapEntry();
        mediaMetadata$BitmapEntry.f931a = abstractC26405c.m1924x(mediaMetadata$BitmapEntry.f931a, 1);
        mediaMetadata$BitmapEntry.f932b = (Bitmap) abstractC26405c.m1925v(mediaMetadata$BitmapEntry.f932b, 2);
        return mediaMetadata$BitmapEntry;
    }

    public static void write(MediaMetadata$BitmapEntry mediaMetadata$BitmapEntry, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        String str = mediaMetadata$BitmapEntry.f931a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1913L(str);
        Bitmap bitmap = mediaMetadata$BitmapEntry.f932b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1914K(bitmap);
    }
}
