package io.agora.rtc.p1718gl;
/* renamed from: io.agora.rtc.gl.TextureBufferImpl$3 */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferImpl$3.class */
public class TextureBufferImpl$3 implements Runnable {
    public final /* synthetic */ TextureBufferImpl this$0;

    public TextureBufferImpl$3(TextureBufferImpl textureBufferImpl) {
        this.this$0 = textureBufferImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.release();
    }
}
