package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItemParcelizer.class */
public final class MediaItemParcelizer {
    public static MediaItem read(d40 d40Var) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.b = d40Var.m2881I(mediaItem.b, 1);
        mediaItem.c = d40Var.m2825y(mediaItem.c, 2);
        mediaItem.d = d40Var.m2825y(mediaItem.d, 3);
        mediaItem.d();
        return mediaItem;
    }

    public static void write(MediaItem mediaItem, d40 d40Var) {
        d40Var.m2879K(false, false);
        mediaItem.e(d40Var.m2851g());
        d40Var.m2838m0(mediaItem.b, 1);
        d40Var.m2860b0(mediaItem.c, 2);
        d40Var.m2860b0(mediaItem.d, 3);
    }
}
