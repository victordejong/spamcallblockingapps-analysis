package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItemParcelizer.class */
public final class UriMediaItemParcelizer {
    public static UriMediaItem read(d40 d40Var) {
        UriMediaItem uriMediaItem = new UriMediaItem();
        ((MediaItem) uriMediaItem).b = d40Var.m2881I(((MediaItem) uriMediaItem).b, 1);
        ((MediaItem) uriMediaItem).c = d40Var.m2825y(((MediaItem) uriMediaItem).c, 2);
        ((MediaItem) uriMediaItem).d = d40Var.m2825y(((MediaItem) uriMediaItem).d, 3);
        uriMediaItem.d();
        return uriMediaItem;
    }

    public static void write(UriMediaItem uriMediaItem, d40 d40Var) {
        d40Var.m2879K(false, false);
        uriMediaItem.e(d40Var.m2851g());
        d40Var.m2838m0(((MediaItem) uriMediaItem).b, 1);
        d40Var.m2860b0(((MediaItem) uriMediaItem).c, 2);
        d40Var.m2860b0(((MediaItem) uriMediaItem).d, 3);
    }
}
