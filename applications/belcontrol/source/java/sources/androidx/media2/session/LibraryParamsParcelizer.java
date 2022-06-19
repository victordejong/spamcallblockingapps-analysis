package androidx.media2.session;

import androidx.media2.session.MediaLibraryService;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryParamsParcelizer.class */
public final class LibraryParamsParcelizer {
    public static MediaLibraryService.LibraryParams read(d40 d40Var) {
        MediaLibraryService.LibraryParams libraryParams = new MediaLibraryService.LibraryParams();
        libraryParams.a = d40Var.m2843k(libraryParams.a, 1);
        libraryParams.b = d40Var.m2828v(libraryParams.b, 2);
        libraryParams.c = d40Var.m2828v(libraryParams.c, 3);
        libraryParams.d = d40Var.m2828v(libraryParams.d, 4);
        return libraryParams;
    }

    public static void write(MediaLibraryService.LibraryParams libraryParams, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2875O(libraryParams.a, 1);
        d40Var.m2865Y(libraryParams.b, 2);
        d40Var.m2865Y(libraryParams.c, 3);
        d40Var.m2865Y(libraryParams.d, 4);
    }
}
