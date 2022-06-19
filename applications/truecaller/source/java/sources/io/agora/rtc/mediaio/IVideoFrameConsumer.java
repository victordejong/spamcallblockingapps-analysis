package io.agora.rtc.mediaio;

import java.nio.ByteBuffer;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/IVideoFrameConsumer.class */
public interface IVideoFrameConsumer {
    void consumeByteArrayFrame(byte[] bArr, int i, int i2, int i3, int i4, long j);

    void consumeByteBufferFrame(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j);

    void consumeTextureFrame(int i, int i2, int i3, int i4, int i5, long j, float[] fArr);
}
