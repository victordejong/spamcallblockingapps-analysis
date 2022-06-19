package androidx.media2.session;

import androidx.media2.common.ParcelImplListSlice;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResultParcelizer.class */
public final class LibraryResultParcelizer {
    public static LibraryResult read(d40 d40Var) {
        LibraryResult libraryResult = new LibraryResult();
        libraryResult.a = d40Var.m2828v(libraryResult.a, 1);
        libraryResult.b = d40Var.m2825y(libraryResult.b, 2);
        libraryResult.d = d40Var.m2881I(libraryResult.d, 3);
        libraryResult.e = d40Var.m2881I(libraryResult.e, 4);
        libraryResult.g = (ParcelImplListSlice) d40Var.m2889A(libraryResult.g, 5);
        libraryResult.d();
        return libraryResult;
    }

    public static void write(LibraryResult libraryResult, d40 d40Var) {
        d40Var.m2879K(false, false);
        libraryResult.e(d40Var.m2851g());
        d40Var.m2865Y(libraryResult.a, 1);
        d40Var.m2860b0(libraryResult.b, 2);
        d40Var.m2838m0(libraryResult.d, 3);
        d40Var.m2838m0(libraryResult.e, 4);
        d40Var.m2856d0(libraryResult.g, 5);
    }
}
