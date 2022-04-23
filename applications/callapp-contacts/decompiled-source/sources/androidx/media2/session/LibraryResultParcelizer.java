package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResultParcelizer.class */
public final class LibraryResultParcelizer {
    public static LibraryResult read(VersionedParcel versionedParcel) {
        LibraryResult libraryResult = new LibraryResult();
        libraryResult.f4498a = versionedParcel.b(libraryResult.f4498a, 1);
        libraryResult.f4499b = versionedParcel.b(libraryResult.f4499b, 2);
        libraryResult.f4501d = (MediaItem) versionedParcel.b((VersionedParcel) libraryResult.f4501d, 3);
        libraryResult.e = (MediaLibraryService.LibraryParams) versionedParcel.b((VersionedParcel) libraryResult.e, 4);
        libraryResult.g = (ParcelImplListSlice) versionedParcel.b((VersionedParcel) libraryResult.g, 5);
        libraryResult.e();
        return libraryResult;
    }

    public static void write(LibraryResult libraryResult, VersionedParcel versionedParcel) {
        libraryResult.a(false);
        versionedParcel.a(libraryResult.f4498a, 1);
        versionedParcel.a(libraryResult.f4499b, 2);
        versionedParcel.a(libraryResult.f4501d, 3);
        versionedParcel.a(libraryResult.e, 4);
        versionedParcel.a(libraryResult.g, 5);
    }
}
