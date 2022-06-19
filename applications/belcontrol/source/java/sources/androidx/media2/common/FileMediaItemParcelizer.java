package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItemParcelizer.class */
public final class FileMediaItemParcelizer {
    public static FileMediaItem read(d40 d40Var) {
        FileMediaItem fileMediaItem = new FileMediaItem();
        ((MediaItem) fileMediaItem).b = d40Var.m2881I(((MediaItem) fileMediaItem).b, 1);
        ((MediaItem) fileMediaItem).c = d40Var.m2825y(((MediaItem) fileMediaItem).c, 2);
        ((MediaItem) fileMediaItem).d = d40Var.m2825y(((MediaItem) fileMediaItem).d, 3);
        fileMediaItem.d();
        return fileMediaItem;
    }

    public static void write(FileMediaItem fileMediaItem, d40 d40Var) {
        d40Var.m2879K(false, false);
        fileMediaItem.e(d40Var.m2851g());
        d40Var.m2838m0(((MediaItem) fileMediaItem).b, 1);
        d40Var.m2860b0(((MediaItem) fileMediaItem).c, 2);
        d40Var.m2860b0(((MediaItem) fileMediaItem).d, 3);
    }
}
