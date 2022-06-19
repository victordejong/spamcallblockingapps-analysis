package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadataParcelizer.class */
public final class MediaMetadataParcelizer {
    public static MediaMetadata read(d40 d40Var) {
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.a = d40Var.m2843k(mediaMetadata.a, 1);
        mediaMetadata.b = (ParcelImplListSlice) d40Var.m2889A(mediaMetadata.b, 2);
        mediaMetadata.d();
        return mediaMetadata;
    }

    public static void write(MediaMetadata mediaMetadata, d40 d40Var) {
        d40Var.m2879K(false, false);
        mediaMetadata.e(d40Var.m2851g());
        d40Var.m2875O(mediaMetadata.a, 1);
        d40Var.m2856d0(mediaMetadata.b, 2);
    }
}
