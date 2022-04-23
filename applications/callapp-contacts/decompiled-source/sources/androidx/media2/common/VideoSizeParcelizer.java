package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSizeParcelizer.class */
public final class VideoSizeParcelizer {
    public static VideoSize read(VersionedParcel versionedParcel) {
        VideoSize videoSize = new VideoSize();
        videoSize.f2770a = versionedParcel.b(videoSize.f2770a, 1);
        videoSize.f2771b = versionedParcel.b(videoSize.f2771b, 2);
        return videoSize;
    }

    public static void write(VideoSize videoSize, VersionedParcel versionedParcel) {
        versionedParcel.a(videoSize.f2770a, 1);
        versionedParcel.a(videoSize.f2771b, 2);
    }
}
