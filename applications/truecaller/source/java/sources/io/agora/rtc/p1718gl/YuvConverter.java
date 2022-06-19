package io.agora.rtc.p1718gl;

import android.opengl.GLES20;
import io.agora.rtc.p1718gl.VideoFrame;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
/* renamed from: io.agora.rtc.gl.YuvConverter */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/YuvConverter.class */
public class YuvConverter {
    private static final String OES_FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n";
    private static final String RGB_FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n";
    private static final String VERTEX_SHADER = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n";
    private int coeffsLoc;
    private GlShader shader;
    private VideoFrame$TextureBuffer$Type shaderTextureType;
    private int texMatrixLoc;
    private final ThreadUtils.ThreadChecker threadChecker;
    private int xUnitLoc;
    private static final FloatBuffer DEVICE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer TEXTURE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
    private boolean released = false;
    private long nativeHanlder = 0;
    private final GlTextureFrameBuffer textureFrameBuffer = new GlTextureFrameBuffer(6408);

    /* renamed from: io.agora.rtc.gl.YuvConverter$1 */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/YuvConverter$1.class */
    public static /* synthetic */ class C253171 {
        public static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type;

        static {
            VideoFrame$TextureBuffer$Type.values();
            int[] iArr = new int[2];
            $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type = iArr;
            try {
                VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type = VideoFrame$TextureBuffer$Type.OES;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type;
                VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type2 = VideoFrame$TextureBuffer$Type.RGB;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public YuvConverter() {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        threadChecker.checkIsOnValidThread();
    }

    private native long GPUFBOInit(int i, int i2);

    private native int GPUFBOReadFrame(long j, byte[] bArr, int i, int i2);

    private native void GPUFBORelease(long j);

    private native void GPUFBOResetFirstInit(long j);

    private native boolean GPUFBOValid();

    private void convert(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr, VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type) {
        this.threadChecker.checkIsOnValidThread();
        if (!this.released) {
            if (videoFrame$TextureBuffer$Type != this.shaderTextureType) {
                initShader(videoFrame$TextureBuffer$Type);
            }
            this.shader.useProgram();
            if (i3 % 8 != 0) {
                throw new IllegalArgumentException("Invalid stride, must be a multiple of 8");
            }
            if (i3 < i) {
                throw new IllegalArgumentException("Invalid stride, must >= width");
            }
            int i5 = (i + 3) / 4;
            int i6 = (i + 7) / 8;
            int i7 = (i2 + 1) / 2;
            int i8 = i2 + i7;
            if (byteBuffer.capacity() < i3 * i8) {
                throw new IllegalArgumentException("YuvConverter.convert called with too small buffer");
            }
            float[] multiplyMatrices = RendererCommon.multiplyMatrices(fArr, RendererCommon.verticalFlipMatrix());
            int i9 = i3 / 4;
            this.textureFrameBuffer.setSize(i9, i8);
            GLES20.glBindFramebuffer(36160, this.textureFrameBuffer.getFrameBufferId());
            GlUtil.checkNoGLES2Error("glBindFramebuffer");
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(videoFrame$TextureBuffer$Type.getGlTarget(), i4);
            GLES20.glUniformMatrix4fv(this.texMatrixLoc, 1, false, multiplyMatrices, 0);
            GLES20.glViewport(0, 0, i5, i2);
            int i10 = this.xUnitLoc;
            float f = multiplyMatrices[0];
            float f2 = i;
            GLES20.glUniform2f(i10, f / f2, multiplyMatrices[1] / f2);
            GLES20.glUniform4f(this.coeffsLoc, 0.299f, 0.587f, 0.114f, 0.0f);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glViewport(0, i2, i6, i7);
            GLES20.glUniform2f(this.xUnitLoc, (multiplyMatrices[0] * 2.0f) / f2, (multiplyMatrices[1] * 2.0f) / f2);
            GLES20.glUniform4f(this.coeffsLoc, -0.169f, -0.331f, 0.499f, 0.5f);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glViewport(i3 / 8, i2, i6, i7);
            GLES20.glUniform4f(this.coeffsLoc, 0.499f, -0.418f, -0.0813f, 0.5f);
            GLES20.glDrawArrays(5, 0, 4);
            int i11 = -1;
            if (GPUFBOValid()) {
                if (this.nativeHanlder == 0) {
                    this.nativeHanlder = GPUFBOInit(i9, i8);
                }
                i11 = GPUFBOReadFrame(this.nativeHanlder, byteBuffer.array(), i9, i8);
            }
            if (i11 != 0) {
                GLES20.glReadPixels(0, 0, i9, i8, 6408, 5121, byteBuffer);
            }
            GlUtil.checkNoGLES2Error("YuvConverter.convert");
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindTexture(videoFrame$TextureBuffer$Type.getGlTarget(), 0);
            return;
        }
        throw new IllegalStateException("YuvConverter.convert called on released object");
    }

    private void initShader(VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type) {
        String str;
        GlShader glShader = this.shader;
        if (glShader != null) {
            glShader.release();
        }
        int ordinal = videoFrame$TextureBuffer$Type.ordinal();
        if (ordinal == 0) {
            str = OES_FRAGMENT_SHADER;
        } else if (ordinal != 1) {
            throw new IllegalArgumentException("Unsupported texture type.");
        } else {
            str = RGB_FRAGMENT_SHADER;
        }
        this.shaderTextureType = videoFrame$TextureBuffer$Type;
        GlShader glShader2 = new GlShader(VERTEX_SHADER, str);
        this.shader = glShader2;
        glShader2.useProgram();
        this.texMatrixLoc = this.shader.getUniformLocation("texMatrix");
        this.xUnitLoc = this.shader.getUniformLocation("xUnit");
        this.coeffsLoc = this.shader.getUniformLocation("coeffs");
        GLES20.glUniform1i(this.shader.getUniformLocation("tex"), 0);
        GlUtil.checkNoGLES2Error("Initialize fragment shader uniform values.");
        this.shader.setVertexAttribArray("in_pos", 2, DEVICE_RECTANGLE);
        this.shader.setVertexAttribArray("in_tc", 2, TEXTURE_RECTANGLE);
    }

    public VideoFrame.I420Buffer convert(VideoFrame.TextureBuffer textureBuffer) {
        int width = textureBuffer.getWidth();
        int height = textureBuffer.getHeight();
        int i = ((width + 7) / 8) * 8;
        int i2 = (height + 1) / 2;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect((height + i2 + 1) * i);
        convert(allocateDirect, width, height, i, textureBuffer.getTextureId(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(textureBuffer.getTransformMatrix()), textureBuffer.getType());
        int i3 = (i * height) + 0;
        int i4 = (i / 2) + i3;
        allocateDirect.position(0);
        allocateDirect.limit(i3);
        ByteBuffer slice = allocateDirect.slice();
        allocateDirect.position(i3);
        int i5 = i2 * i;
        allocateDirect.limit(i3 + i5);
        ByteBuffer slice2 = allocateDirect.slice();
        allocateDirect.position(i4);
        allocateDirect.limit(i4 + i5);
        return JavaI420Buffer.wrap(width, height, slice, i, slice2, i, allocateDirect.slice(), i, (Runnable) null);
    }

    @Deprecated
    public void convert(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr) {
        convert(byteBuffer, i, i2, i3, i4, fArr, VideoFrame$TextureBuffer$Type.OES);
    }

    public void release() {
        this.threadChecker.checkIsOnValidThread();
        this.released = true;
        GlShader glShader = this.shader;
        if (glShader != null) {
            glShader.release();
        }
        this.textureFrameBuffer.release();
        if (GPUFBOValid()) {
            GPUFBORelease(this.nativeHanlder);
        }
    }
}
