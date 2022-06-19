package androidx.media2.common;

import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadataParcelizer.class */
public final class MediaMetadataParcelizer {
    public static MediaMetadata read(AbstractC26405c abstractC26405c) {
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.b = abstractC26405c.m1931i(mediaMetadata.b, 1);
        mediaMetadata.c = (ParcelImplListSlice) abstractC26405c.m1925v(mediaMetadata.c, 2);
        mediaMetadata.g();
        return mediaMetadata;
    }

    public static void write(MediaMetadata mediaMetadata, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        synchronized (mediaMetadata.a) {
            if (mediaMetadata.b == null) {
                mediaMetadata.b = new Bundle(mediaMetadata.a);
                ArrayList arrayList = new ArrayList();
                for (String str : mediaMetadata.a.keySet()) {
                    Object obj = mediaMetadata.a.get(str);
                    if (obj instanceof Bitmap) {
                        MediaItem mediaMetadata$BitmapEntry = new MediaMetadata$BitmapEntry(str, (Bitmap) obj);
                        arrayList.add(mediaMetadata$BitmapEntry instanceof MediaItem ? new MediaParcelUtils$MediaItemParcelImpl(mediaMetadata$BitmapEntry) : new ParcelImpl((AbstractC26407e) mediaMetadata$BitmapEntry));
                        mediaMetadata.b.remove(str);
                    }
                }
                mediaMetadata.c = new ParcelImplListSlice(arrayList);
            }
        }
        Bundle bundle = mediaMetadata.b;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1920D(bundle);
        ParcelImplListSlice parcelImplListSlice = mediaMetadata.c;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1914K(parcelImplListSlice);
    }
}
