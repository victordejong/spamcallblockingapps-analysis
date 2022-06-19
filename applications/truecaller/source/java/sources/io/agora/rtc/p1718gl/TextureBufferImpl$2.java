package io.agora.rtc.p1718gl;

import io.agora.rtc.p1718gl.VideoFrame;
import java.util.concurrent.Callable;
/* renamed from: io.agora.rtc.gl.TextureBufferImpl$2 */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferImpl$2.class */
public class TextureBufferImpl$2 implements Callable<VideoFrame.I420Buffer> {
    public final /* synthetic */ TextureBufferImpl this$0;

    public TextureBufferImpl$2(TextureBufferImpl textureBufferImpl) {
        this.this$0 = textureBufferImpl;
    }

    @Override // java.util.concurrent.Callable
    public VideoFrame.I420Buffer call() throws Exception {
        return TextureBufferImpl.access$100(this.this$0).convert(this.this$0);
    }
}
