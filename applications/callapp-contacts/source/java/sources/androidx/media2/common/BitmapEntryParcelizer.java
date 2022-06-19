package androidx.media2.common;

import android.graphics.Bitmap;
import androidx.media2.common.MediaMetadata;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/BitmapEntryParcelizer.class */
public final class BitmapEntryParcelizer {
    public static MediaMetadata.BitmapEntry read(VersionedParcel versionedParcel) {
        MediaMetadata.BitmapEntry bitmapEntry = new MediaMetadata.BitmapEntry();
        bitmapEntry.f5041a = versionedParcel.m39635b(bitmapEntry.f5041a, 1);
        bitmapEntry.f5042b = (Bitmap) versionedParcel.m39640b((VersionedParcel) bitmapEntry.f5042b, 2);
        return bitmapEntry;
    }

    public static void write(MediaMetadata.BitmapEntry bitmapEntry, VersionedParcel versionedParcel) {
        versionedParcel.m39653a(bitmapEntry.f5041a, 1);
        versionedParcel.m39660a(bitmapEntry.f5042b, 2);
    }
}
