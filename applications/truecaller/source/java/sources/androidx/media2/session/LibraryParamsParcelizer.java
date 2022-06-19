package androidx.media2.session;

import android.os.Bundle;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryParamsParcelizer.class */
public final class LibraryParamsParcelizer {
    public static MediaLibraryService$LibraryParams read(AbstractC26405c abstractC26405c) {
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = new MediaLibraryService$LibraryParams();
        mediaLibraryService$LibraryParams.f1225a = abstractC26405c.m1931i(mediaLibraryService$LibraryParams.f1225a, 1);
        mediaLibraryService$LibraryParams.f1226b = abstractC26405c.m1927r(mediaLibraryService$LibraryParams.f1226b, 2);
        mediaLibraryService$LibraryParams.f1227c = abstractC26405c.m1927r(mediaLibraryService$LibraryParams.f1227c, 3);
        mediaLibraryService$LibraryParams.f1228d = abstractC26405c.m1927r(mediaLibraryService$LibraryParams.f1228d, 4);
        return mediaLibraryService$LibraryParams;
    }

    public static void write(MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        Bundle bundle = mediaLibraryService$LibraryParams.f1225a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1920D(bundle);
        int i = mediaLibraryService$LibraryParams.f1226b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i);
        int i2 = mediaLibraryService$LibraryParams.f1227c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i2);
        int i3 = mediaLibraryService$LibraryParams.f1228d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1916I(i3);
    }
}
