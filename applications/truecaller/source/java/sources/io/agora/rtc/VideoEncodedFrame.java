package io.agora.rtc;

import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/VideoEncodedFrame.class */
public class VideoEncodedFrame {
    public static final int CODEC_TYPE_E264 = 4;
    public static final int CODEC_TYPE_EVP = 3;
    public static final int CODEC_TYPE_H264 = 2;
    public static final int CODEC_TYPE_VP8 = 1;
    public static final int FRAME_TYPE_B = 5;
    public static final int FRAME_TYPE_BLANK = 0;
    public static final int FRAME_TYPE_DELTA = 4;
    public static final int FRAME_TYPE_KEY = 3;
    public int codecType;
    public int frameType;
    public int height;
    public ByteBuffer imageBuffer;
    public int length;
    public long renderTimeMs;
    public int rotation;
    public int width;

    public VideoEncodedFrame(int i, ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6, long j) {
        this.codecType = i;
        this.width = i3;
        this.height = i4;
        this.imageBuffer = byteBuffer;
        this.length = i2;
        this.frameType = i5;
        this.rotation = i6;
        this.renderTimeMs = j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoEncodedFrame{codecType=");
        m8728C.append(this.codecType);
        m8728C.append(", width=");
        m8728C.append(this.width);
        m8728C.append(", height=");
        m8728C.append(this.height);
        m8728C.append(", frameType=");
        m8728C.append(this.frameType);
        m8728C.append(", rotation=");
        m8728C.append(this.rotation);
        m8728C.append(", renderTimeMs=");
        m8728C.append(this.renderTimeMs);
        m8728C.append(", imageBuffer=");
        m8728C.append(this.imageBuffer);
        m8728C.append(", length=");
        return C22128a.m8701I2(m8728C, this.length, '}');
    }
}
