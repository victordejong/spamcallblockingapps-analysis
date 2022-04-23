package androidx.media2.session;

import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryParamsParcelizer.class */
public final class LibraryParamsParcelizer {
    public static MediaLibraryService.LibraryParams read(VersionedParcel versionedParcel) {
        MediaLibraryService.LibraryParams libraryParams = new MediaLibraryService.LibraryParams();
        libraryParams.f2196a = versionedParcel.m36998a(libraryParams.f2196a, 1);
        libraryParams.f2197b = versionedParcel.m37000a(libraryParams.f2197b, 2);
        libraryParams.f2198c = versionedParcel.m37000a(libraryParams.f2198c, 3);
        libraryParams.f2199d = versionedParcel.m37000a(libraryParams.f2199d, 4);
        return libraryParams;
    }

    public static void write(MediaLibraryService.LibraryParams libraryParams, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36975b(libraryParams.f2196a, 1);
        versionedParcel.m36977b(libraryParams.f2197b, 2);
        versionedParcel.m36977b(libraryParams.f2198c, 3);
        versionedParcel.m36977b(libraryParams.f2199d, 4);
    }
}
