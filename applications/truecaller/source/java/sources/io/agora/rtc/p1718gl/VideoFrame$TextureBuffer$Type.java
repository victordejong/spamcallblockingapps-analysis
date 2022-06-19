package io.agora.rtc.p1718gl;
/* renamed from: io.agora.rtc.gl.VideoFrame$TextureBuffer$Type */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrame$TextureBuffer$Type.class */
public enum VideoFrame$TextureBuffer$Type {
    OES(36197),
    RGB(3553);
    
    private final int glTarget;

    VideoFrame$TextureBuffer$Type(int i) {
        this.glTarget = i;
    }

    public int getGlTarget() {
        return this.glTarget;
    }
}
