package androidx.media2.session;

import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryParamsParcelizer.class */
public final class LibraryParamsParcelizer {
    public static MediaLibraryService.LibraryParams read(VersionedParcel versionedParcel) {
        MediaLibraryService.LibraryParams libraryParams = new MediaLibraryService.LibraryParams();
        libraryParams.f4515a = versionedParcel.b(libraryParams.f4515a, 1);
        libraryParams.f4516b = versionedParcel.b(libraryParams.f4516b, 2);
        libraryParams.f4517c = versionedParcel.b(libraryParams.f4517c, 3);
        libraryParams.f4518d = versionedParcel.b(libraryParams.f4518d, 4);
        return libraryParams;
    }

    public static void write(MediaLibraryService.LibraryParams libraryParams, VersionedParcel versionedParcel) {
        versionedParcel.a(libraryParams.f4515a, 1);
        versionedParcel.a(libraryParams.f4516b, 2);
        versionedParcel.a(libraryParams.f4517c, 3);
        versionedParcel.a(libraryParams.f4518d, 4);
    }
}
