package androidx.media2.common;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSizeParcelizer.class */
public final class VideoSizeParcelizer {
    public static VideoSize read(AbstractC26405c abstractC26405c) {
        VideoSize videoSize = new VideoSize();
        videoSize.f946a = abstractC26405c.m1927r(videoSize.f946a, 1);
        videoSize.f947b = abstractC26405c.m1927r(videoSize.f947b, 2);
        return videoSize;
    }

    public static void write(VideoSize videoSize, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = videoSize.f946a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        int i2 = videoSize.f947b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i2);
    }
}
