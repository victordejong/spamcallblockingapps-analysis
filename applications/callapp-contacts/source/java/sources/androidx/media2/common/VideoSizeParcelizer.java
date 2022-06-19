package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSizeParcelizer.class */
public final class VideoSizeParcelizer {
    public static VideoSize read(VersionedParcel versionedParcel) {
        VideoSize videoSize = new VideoSize();
        videoSize.f5066a = versionedParcel.m39644b(videoSize.f5066a, 1);
        videoSize.f5067b = versionedParcel.m39644b(videoSize.f5067b, 2);
        return videoSize;
    }

    public static void write(VideoSize videoSize, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(videoSize.f5066a, 1);
        versionedParcel.m39664a(videoSize.f5067b, 2);
    }
}
