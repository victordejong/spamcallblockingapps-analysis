package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResultParcelizer.class */
public final class LibraryResultParcelizer {
    public static LibraryResult read(VersionedParcel versionedParcel) {
        LibraryResult libraryResult = new LibraryResult();
        libraryResult.f8696a = versionedParcel.m39644b(libraryResult.f8696a, 1);
        libraryResult.f8697b = versionedParcel.m39643b(libraryResult.f8697b, 2);
        libraryResult.f8699d = (MediaItem) versionedParcel.m39638b((VersionedParcel) libraryResult.f8699d, 3);
        libraryResult.f8700e = (MediaLibraryService.LibraryParams) versionedParcel.m39638b((VersionedParcel) libraryResult.f8700e, 4);
        libraryResult.f8702g = (ParcelImplListSlice) versionedParcel.m39640b((VersionedParcel) libraryResult.f8702g, 5);
        libraryResult.mo39666e();
        return libraryResult;
    }

    public static void write(LibraryResult libraryResult, VersionedParcel versionedParcel) {
        libraryResult.mo39667a(false);
        versionedParcel.m39664a(libraryResult.f8696a, 1);
        versionedParcel.m39663a(libraryResult.f8697b, 2);
        versionedParcel.m39658a(libraryResult.f8699d, 3);
        versionedParcel.m39658a(libraryResult.f8700e, 4);
        versionedParcel.m39660a(libraryResult.f8702g, 5);
    }
}
