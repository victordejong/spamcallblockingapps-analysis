package androidx.media2.common;

import android.graphics.Bitmap;
import androidx.media2.common.MediaMetadata;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/BitmapEntryParcelizer.class */
public final class BitmapEntryParcelizer {
    public static MediaMetadata.BitmapEntry read(VersionedParcel versionedParcel) {
        MediaMetadata.BitmapEntry bitmapEntry = new MediaMetadata.BitmapEntry();
        bitmapEntry.f2747a = versionedParcel.b(bitmapEntry.f2747a, 1);
        bitmapEntry.f2748b = (Bitmap) versionedParcel.b((VersionedParcel) bitmapEntry.f2748b, 2);
        return bitmapEntry;
    }

    public static void write(MediaMetadata.BitmapEntry bitmapEntry, VersionedParcel versionedParcel) {
        versionedParcel.a(bitmapEntry.f2747a, 1);
        versionedParcel.a(bitmapEntry.f2748b, 2);
    }
}
