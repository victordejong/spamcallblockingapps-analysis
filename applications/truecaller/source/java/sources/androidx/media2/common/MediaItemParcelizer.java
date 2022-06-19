package androidx.media2.common;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItemParcelizer.class */
public final class MediaItemParcelizer {
    public static MediaItem read(AbstractC26405c abstractC26405c) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.b = abstractC26405c.m1938A(mediaItem.b, 1);
        mediaItem.c = abstractC26405c.m1926t(mediaItem.c, 2);
        mediaItem.d = abstractC26405c.m1926t(mediaItem.d, 3);
        return mediaItem;
    }

    public static void write(MediaItem mediaItem, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        if (mediaItem.getClass() == MediaItem.class) {
            MediaMetadata mediaMetadata = mediaItem.b;
            abstractC26405c.mo1922B(1);
            abstractC26405c.m1936N(mediaMetadata);
            long j = mediaItem.c;
            abstractC26405c.mo1922B(2);
            abstractC26405c.mo1915J(j);
            long j2 = mediaItem.d;
            abstractC26405c.mo1922B(3);
            abstractC26405c.mo1915J(j2);
            return;
        }
        throw new RuntimeException("MediaItem's subclasses shouldn't be parcelized.");
    }
}
