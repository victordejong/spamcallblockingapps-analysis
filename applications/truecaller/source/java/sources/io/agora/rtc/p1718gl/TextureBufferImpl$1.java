package io.agora.rtc.p1718gl;

import io.agora.rtc.p1718gl.VideoFrame;
import java.util.concurrent.Callable;
/* renamed from: io.agora.rtc.gl.TextureBufferImpl$1 */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferImpl$1.class */
public class TextureBufferImpl$1 implements Callable<VideoFrame.TextureBuffer> {
    public final /* synthetic */ TextureBufferImpl this$0;

    public TextureBufferImpl$1(TextureBufferImpl textureBufferImpl) {
        this.this$0 = textureBufferImpl;
    }

    @Override // java.util.concurrent.Callable
    public VideoFrame.TextureBuffer call() throws Exception {
        return TextureBufferImpl.access$000(this.this$0);
    }
}
