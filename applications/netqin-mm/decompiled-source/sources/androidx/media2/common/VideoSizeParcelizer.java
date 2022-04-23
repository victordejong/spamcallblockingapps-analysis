package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSizeParcelizer.class */
public final class VideoSizeParcelizer {
    public static VideoSize read(VersionedParcel versionedParcel) {
        VideoSize videoSize = new VideoSize();
        videoSize.f1549a = versionedParcel.m37000a(videoSize.f1549a, 1);
        videoSize.f1550b = versionedParcel.m37000a(videoSize.f1550b, 2);
        return videoSize;
    }

    public static void write(VideoSize videoSize, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(videoSize.f1549a, 1);
        versionedParcel.m36977b(videoSize.f1550b, 2);
    }
}
