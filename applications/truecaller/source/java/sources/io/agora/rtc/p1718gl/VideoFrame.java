package io.agora.rtc.p1718gl;

import java.nio.ByteBuffer;
/* renamed from: io.agora.rtc.gl.VideoFrame */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrame.class */
public class VideoFrame {
    private final Buffer buffer;
    private final int rotation;
    private final long timestampNs;

    /* renamed from: io.agora.rtc.gl.VideoFrame$Buffer */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrame$Buffer.class */
    public interface Buffer {
        Buffer cropAndScale(int i, int i2, int i3, int i4, int i5, int i6);

        int getHeight();

        int getWidth();

        void release();

        void retain();

        I420Buffer toI420();
    }

    public VideoFrame(Buffer buffer, int i, long j) {
        if (buffer != null) {
            if (i % 90 != 0) {
                throw new IllegalArgumentException("rotation must be a multiple of 90");
            }
            this.buffer = buffer;
            this.rotation = i;
            this.timestampNs = j;
            return;
        }
        throw new IllegalArgumentException("buffer not allowed to be null");
    }

    public static Buffer cropAndScaleI420(final I420Buffer i420Buffer, int i, int i2, int i3, int i4, int i5, int i6) {
        if (i3 != i5 || i4 != i6) {
            JavaI420Buffer allocate = JavaI420Buffer.allocate(i5, i6);
            nativeCropAndScaleI420(i420Buffer.getDataY(), i420Buffer.getStrideY(), i420Buffer.getDataU(), i420Buffer.getStrideU(), i420Buffer.getDataV(), i420Buffer.getStrideV(), i, i2, i3, i4, allocate.getDataY(), allocate.getStrideY(), allocate.getDataU(), allocate.getStrideU(), allocate.getDataV(), allocate.getStrideV(), i5, i6);
            return allocate;
        }
        ByteBuffer dataY = i420Buffer.getDataY();
        ByteBuffer dataU = i420Buffer.getDataU();
        ByteBuffer dataV = i420Buffer.getDataV();
        dataY.position((i420Buffer.getStrideY() * i2) + i);
        int i7 = i / 2;
        int i8 = i2 / 2;
        dataU.position((i420Buffer.getStrideU() * i8) + i7);
        dataV.position((i420Buffer.getStrideV() * i8) + i7);
        i420Buffer.retain();
        return JavaI420Buffer.wrap(i420Buffer.getWidth(), i420Buffer.getHeight(), dataY.slice(), i420Buffer.getStrideY(), dataU.slice(), i420Buffer.getStrideU(), dataV.slice(), i420Buffer.getStrideV(), new Runnable() { // from class: io.agora.rtc.gl.VideoFrame.1
            @Override // java.lang.Runnable
            public void run() {
                i420Buffer.release();
            }
        });
    }

    public static final int getAgoraFormat(TextureBuffer textureBuffer) {
        return textureBuffer.getType() == VideoFrame$TextureBuffer$Type.OES ? 11 : 10;
    }

    private static native void nativeCropAndScaleI420(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, int i4, int i5, int i6, int i7, ByteBuffer byteBuffer4, int i8, ByteBuffer byteBuffer5, int i9, ByteBuffer byteBuffer6, int i10, int i11, int i12);

    public Buffer getBuffer() {
        return this.buffer;
    }

    public int getRotatedHeight() {
        return this.rotation % 180 == 0 ? this.buffer.getHeight() : this.buffer.getWidth();
    }

    public int getRotatedWidth() {
        return this.rotation % 180 == 0 ? this.buffer.getWidth() : this.buffer.getHeight();
    }

    public int getRotation() {
        return this.rotation;
    }

    public long getTimestampNs() {
        return this.timestampNs;
    }

    public void release() {
        this.buffer.release();
    }

    public void retain() {
        this.buffer.retain();
    }
}
