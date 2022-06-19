package io.agora.rtc.p1718gl;

import android.opengl.GLES20;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: io.agora.rtc.gl.GlTextureFrameBuffer */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/GlTextureFrameBuffer.class */
public class GlTextureFrameBuffer {
    private final int frameBufferId;
    private int height;
    private final int pixelFormat;
    private final int textureId;
    private int width;

    public GlTextureFrameBuffer(int i) {
        switch (i) {
            case 6407:
            case 6408:
            case 6409:
                this.pixelFormat = i;
                this.textureId = GlUtil.generateTexture(3553);
                this.width = 0;
                this.height = 0;
                int[] iArr = new int[1];
                GLES20.glGenFramebuffers(1, iArr, 0);
                this.frameBufferId = iArr[0];
                return;
            default:
                throw new IllegalArgumentException(C22128a.m8611i2("Invalid pixel format: ", i));
        }
    }

    public int getFrameBufferId() {
        return this.frameBufferId;
    }

    public int getHeight() {
        return this.height;
    }

    public int getTextureId() {
        return this.textureId;
    }

    public int getWidth() {
        return this.width;
    }

    public void release() {
        GLES20.glDeleteTextures(1, new int[]{this.textureId}, 0);
        GLES20.glDeleteFramebuffers(1, new int[]{this.frameBufferId}, 0);
        this.width = 0;
        this.height = 0;
    }

    public void setSize(int i, int i2) {
        if (i == 0 || i2 == 0) {
            throw new IllegalArgumentException(C22128a.m8595m2("Invalid size: ", i, "x", i2));
        }
        if (i == this.width && i2 == this.height) {
            return;
        }
        this.width = i;
        this.height = i2;
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.textureId);
        int i3 = this.pixelFormat;
        GLES20.glTexImage2D(3553, 0, i3, i, i2, 0, i3, 5121, null);
        GLES20.glBindTexture(3553, 0);
        GlUtil.checkNoGLES2Error("GlTextureFrameBuffer setSize");
        GLES20.glBindFramebuffer(36160, this.frameBufferId);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.textureId, 0);
        int glCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (glCheckFramebufferStatus != 36053) {
            throw new IllegalStateException(C22128a.m8611i2("Framebuffer not complete, status: ", glCheckFramebufferStatus));
        }
        GLES20.glBindFramebuffer(36160, 0);
    }
}
