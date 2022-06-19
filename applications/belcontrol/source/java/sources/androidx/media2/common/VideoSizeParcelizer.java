package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSizeParcelizer.class */
public final class VideoSizeParcelizer {
    public static VideoSize read(d40 d40Var) {
        VideoSize videoSize = new VideoSize();
        videoSize.a = d40Var.m2828v(videoSize.a, 1);
        videoSize.b = d40Var.m2828v(videoSize.b, 2);
        return videoSize;
    }

    public static void write(VideoSize videoSize, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(videoSize.a, 1);
        d40Var.m2865Y(videoSize.b, 2);
    }
}
