package io.agora.rtc;

import com.razorpay.AnalyticsConstants;
import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/IVideoFrameObserver.class */
public abstract class IVideoFrameObserver {
    public static final int FRAME_TYPE_RGBA = 2;
    public static final int FRAME_TYPE_YUV420 = 0;
    public static final int FRAME_TYPE_YUV422 = 1;
    public static final int POSITION_POST_CAPTURER = 1;
    public static final int POSITION_PRE_ENCODER = 4;
    public static final int POSITION_PRE_RENDERER = 2;

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/IVideoFrameObserver$VideoFrame.class */
    public static class VideoFrame {
        public int avsync_type;
        public int height;
        public long renderTimeMs;
        public int rotation;
        public int type;
        public ByteBuffer uBuffer;
        public int uStride;
        public ByteBuffer vBuffer;
        public int vStride;
        public int width;
        public ByteBuffer yBuffer;
        public int yStride;

        public VideoFrame(int i, int i2, int i3, int i4, int i5, int i6, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i7, long j, int i8) {
            this.type = i;
            this.width = i2;
            this.height = i3;
            this.yStride = i4;
            this.uStride = i5;
            this.vStride = i6;
            this.yBuffer = byteBuffer;
            this.uBuffer = byteBuffer2;
            this.vBuffer = byteBuffer3;
            this.rotation = i7;
            this.renderTimeMs = j;
            this.avsync_type = i8;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("VideoFrame{type=");
            m8728C.append(this.type);
            m8728C.append(", width=");
            m8728C.append(this.width);
            m8728C.append(", height=");
            m8728C.append(this.height);
            m8728C.append(", yStride=");
            m8728C.append(this.yStride);
            m8728C.append(", uStride=");
            m8728C.append(this.uStride);
            m8728C.append(", vStride=");
            m8728C.append(this.vStride);
            m8728C.append(", yBuffer=");
            ByteBuffer byteBuffer = this.yBuffer;
            m8728C.append(byteBuffer == null ? AnalyticsConstants.NULL : byteBuffer.toString());
            m8728C.append(", uBuffer=");
            ByteBuffer byteBuffer2 = this.uBuffer;
            m8728C.append(byteBuffer2 == null ? AnalyticsConstants.NULL : byteBuffer2.toString());
            m8728C.append(", vBuffer=");
            ByteBuffer byteBuffer3 = this.vBuffer;
            m8728C.append(byteBuffer3 == null ? AnalyticsConstants.NULL : byteBuffer3.toString());
            m8728C.append(", rotation=");
            m8728C.append(this.rotation);
            m8728C.append(", renderTimeMs=");
            m8728C.append(this.renderTimeMs);
            m8728C.append(", avsync_type=");
            return C22128a.m8701I2(m8728C, this.avsync_type, '}');
        }
    }

    public boolean getMirrorApplied() {
        return false;
    }

    public int getObservedFramePosition() {
        return 3;
    }

    public boolean getRotationApplied() {
        return false;
    }

    public int getVideoFormatPreference() {
        return 0;
    }

    public boolean isMultipleChannelFrameWanted() {
        return false;
    }

    public abstract boolean onCaptureVideoFrame(VideoFrame videoFrame);

    public boolean onPreEncodeVideoFrame(VideoFrame videoFrame) {
        return true;
    }

    public abstract boolean onRenderVideoFrame(int i, VideoFrame videoFrame);

    public boolean onRenderVideoFrameEx(String str, int i, VideoFrame videoFrame) {
        return true;
    }
}
