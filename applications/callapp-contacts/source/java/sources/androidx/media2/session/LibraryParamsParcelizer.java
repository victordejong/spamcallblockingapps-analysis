package androidx.media2.session;

import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryParamsParcelizer.class */
public final class LibraryParamsParcelizer {
    public static MediaLibraryService.LibraryParams read(VersionedParcel versionedParcel) {
        MediaLibraryService.LibraryParams libraryParams = new MediaLibraryService.LibraryParams();
        libraryParams.f8720a = versionedParcel.m39642b(libraryParams.f8720a, 1);
        libraryParams.f8721b = versionedParcel.m39644b(libraryParams.f8721b, 2);
        libraryParams.f8722c = versionedParcel.m39644b(libraryParams.f8722c, 3);
        libraryParams.f8723d = versionedParcel.m39644b(libraryParams.f8723d, 4);
        return libraryParams;
    }

    public static void write(MediaLibraryService.LibraryParams libraryParams, VersionedParcel versionedParcel) {
        versionedParcel.m39662a(libraryParams.f8720a, 1);
        versionedParcel.m39664a(libraryParams.f8721b, 2);
        versionedParcel.m39664a(libraryParams.f8722c, 3);
        versionedParcel.m39664a(libraryParams.f8723d, 4);
    }
}
