package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaParcelUtils$MediaItemParcelImpl;
import androidx.media2.common.ParcelImplListSlice;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
import p1727n3.p1874y.p1907d.C27496b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResultParcelizer.class */
public final class LibraryResultParcelizer {
    public static LibraryResult read(AbstractC26405c abstractC26405c) {
        LibraryResult libraryResult = new LibraryResult();
        libraryResult.a = abstractC26405c.m1927r(libraryResult.a, 1);
        libraryResult.b = abstractC26405c.m1926t(libraryResult.b, 2);
        libraryResult.d = abstractC26405c.m1938A(libraryResult.d, 3);
        libraryResult.e = (MediaLibraryService$LibraryParams) abstractC26405c.m1938A(libraryResult.e, 4);
        libraryResult.g = (ParcelImplListSlice) abstractC26405c.m1925v(libraryResult.g, 5);
        libraryResult.e();
        return libraryResult;
    }

    public static void write(LibraryResult libraryResult, AbstractC26405c abstractC26405c) {
        ParcelImplListSlice parcelImplListSlice;
        Objects.requireNonNull(abstractC26405c);
        MediaItem mediaItem = libraryResult.c;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (libraryResult.d == null) {
                    libraryResult.d = C27496b.m198a(libraryResult.c);
                }
            }
        }
        List list = libraryResult.f;
        if (list != null) {
            synchronized (list) {
                if (libraryResult.g == null) {
                    List list2 = libraryResult.f;
                    Map<String, String> map = C27496b.f77405a;
                    if (list2 == null) {
                        parcelImplListSlice = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < list2.size(); i++) {
                            MediaItem mediaItem2 = (MediaItem) list2.get(i);
                            if (mediaItem2 != null) {
                                arrayList.add(new MediaParcelUtils$MediaItemParcelImpl(mediaItem2));
                            }
                        }
                        parcelImplListSlice = new ParcelImplListSlice(arrayList);
                    }
                    libraryResult.g = parcelImplListSlice;
                }
            }
        }
        int i2 = libraryResult.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i2);
        long j = libraryResult.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1915J(j);
        MediaItem mediaItem3 = libraryResult.d;
        abstractC26405c.mo1922B(3);
        abstractC26405c.m1936N(mediaItem3);
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = libraryResult.e;
        abstractC26405c.mo1922B(4);
        abstractC26405c.m1936N(mediaLibraryService$LibraryParams);
        ParcelImplListSlice parcelImplListSlice2 = libraryResult.g;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1914K(parcelImplListSlice2);
    }
}
