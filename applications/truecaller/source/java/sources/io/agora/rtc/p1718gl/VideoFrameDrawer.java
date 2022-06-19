package io.agora.rtc.p1718gl;

import android.graphics.Matrix;
import android.graphics.Point;
import android.opengl.GLES20;
import io.agora.rtc.p1718gl.RendererCommon;
import io.agora.rtc.p1718gl.VideoFrame;
import java.nio.ByteBuffer;
/* renamed from: io.agora.rtc.gl.VideoFrameDrawer */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrameDrawer.class */
public class VideoFrameDrawer {
    public static final float[] srcPoints = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    private VideoFrame lastI420Frame;
    private VideoFrame lastRgbaFrame;
    private int renderHeight;
    private int renderWidth;
    private final float[] dstPoints = new float[6];
    private final Point renderSize = new Point();
    private final YuvUploader yuvUploader = new YuvUploader(null);
    private final Matrix renderMatrix = new Matrix();
    private final RGBAUploader rgbaUploader = new RGBAUploader(null);

    /* renamed from: io.agora.rtc.gl.VideoFrameDrawer$1 */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrameDrawer$1.class */
    public static /* synthetic */ class C253161 {
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

    /* renamed from: io.agora.rtc.gl.VideoFrameDrawer$RGBAUploader */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrameDrawer$RGBAUploader.class */
    public static class RGBAUploader {
        private ByteBuffer mData;
        private int mTextureId;

        private RGBAUploader() {
            this.mTextureId = 0;
        }

        public /* synthetic */ RGBAUploader(C253161 c253161) {
            this();
        }

        public int getTextureId() {
            return this.mTextureId;
        }

        public void release() {
            this.mData = null;
            int i = this.mTextureId;
            if (i != 0) {
                GLES20.glDeleteTextures(1, new int[]{i}, 0);
                this.mTextureId = 0;
            }
        }

        public int uploadData(ByteBuffer byteBuffer, int i, int i2) {
            this.mData = byteBuffer;
            if (this.mTextureId == 0) {
                this.mTextureId = GlUtil.generateTexture(3553);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.mTextureId);
            GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, this.mData);
            GlUtil.checkNoGLES2Error("glTexImage2D");
            return this.mTextureId;
        }
    }

    /* renamed from: io.agora.rtc.gl.VideoFrameDrawer$YuvUploader */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/VideoFrameDrawer$YuvUploader.class */
    public static class YuvUploader {
        private ByteBuffer copyBuffer;
        private int[] yuvTextures;

        private YuvUploader() {
        }

        public /* synthetic */ YuvUploader(C253161 c253161) {
            this();
        }

        public int[] getYuvTextures() {
            return this.yuvTextures;
        }

        public void release() {
            this.copyBuffer = null;
            int[] iArr = this.yuvTextures;
            if (iArr != null) {
                GLES20.glDeleteTextures(3, iArr, 0);
                this.yuvTextures = null;
            }
        }

        public int[] uploadFromBuffer(VideoFrame.I420Buffer i420Buffer) {
            return uploadYuvData(i420Buffer.getWidth(), i420Buffer.getHeight(), new int[]{i420Buffer.getStrideY(), i420Buffer.getStrideU(), i420Buffer.getStrideV()}, new ByteBuffer[]{i420Buffer.getDataY(), i420Buffer.getDataU(), i420Buffer.getDataV()});
        }

        public int[] uploadYuvData(int i, int i2, int[] iArr, ByteBuffer[] byteBufferArr) {
            int i3;
            ByteBuffer byteBuffer;
            int i4 = i / 2;
            int[] iArr2 = {i, i4, i4};
            int i5 = i2 / 2;
            int[] iArr3 = {i2, i5, i5};
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i6 >= 3) {
                    break;
                }
                int i8 = i3;
                if (iArr[i6] > iArr2[i6]) {
                    i8 = Math.max(i3, iArr2[i6] * iArr3[i6]);
                }
                i6++;
                i7 = i8;
            }
            if (i3 > 0 && ((byteBuffer = this.copyBuffer) == null || byteBuffer.capacity() < i3)) {
                this.copyBuffer = ByteBuffer.allocateDirect(i3);
            }
            int i9 = 0;
            if (this.yuvTextures == null) {
                this.yuvTextures = new int[3];
                int i10 = 0;
                while (true) {
                    i9 = 0;
                    if (i10 >= 3) {
                        break;
                    }
                    this.yuvTextures[i10] = GlUtil.generateTexture(3553);
                    i10++;
                }
            }
            while (i9 < 3) {
                GLES20.glActiveTexture(33984 + i9);
                GLES20.glBindTexture(3553, this.yuvTextures[i9]);
                GLES20.glTexImage2D(3553, 0, 6409, iArr2[i9], iArr3[i9], 0, 6409, 5121, iArr[i9] == iArr2[i9] ? byteBufferArr[i9] : this.copyBuffer);
                i9++;
            }
            return this.yuvTextures;
        }
    }

    private void calculateTransformedRenderSize(int i, int i2, Matrix matrix) {
        if (matrix == null) {
            this.renderWidth = i;
            this.renderHeight = i2;
            return;
        }
        matrix.mapPoints(this.dstPoints, srcPoints);
        for (int i3 = 0; i3 < 3; i3++) {
            float[] fArr = this.dstPoints;
            int i4 = i3 * 2;
            int i5 = i4 + 0;
            fArr[i5] = fArr[i5] * i;
            int i6 = i4 + 1;
            fArr[i6] = fArr[i6] * i2;
        }
        float[] fArr2 = this.dstPoints;
        this.renderWidth = distance(fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
        float[] fArr3 = this.dstPoints;
        this.renderHeight = distance(fArr3[0], fArr3[1], fArr3[4], fArr3[5]);
    }

    private static int distance(float f, float f2, float f3, float f4) {
        return (int) Math.round(Math.hypot(f3 - f, f4 - f2));
    }

    public static void drawTexture(RendererCommon.GlDrawer glDrawer, VideoFrame.TextureBuffer textureBuffer, Matrix matrix, int i, int i2, int i3, int i4, int i5, int i6) {
        Matrix matrix2 = new Matrix(textureBuffer.getTransformMatrix());
        matrix2.preConcat(matrix);
        float[] convertMatrixFromAndroidGraphicsMatrix = RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrix2);
        int ordinal = textureBuffer.getType().ordinal();
        if (ordinal == 0) {
            glDrawer.drawOes(textureBuffer.getTextureId(), convertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
        } else if (ordinal != 1) {
            throw new RuntimeException("Unknown texture type.");
        } else {
            glDrawer.drawRgb(textureBuffer.getTextureId(), convertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
        }
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer) {
        drawFrame(videoFrame, glDrawer, null);
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix) {
        drawFrame(videoFrame, glDrawer, matrix, 0, 0, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix, int i, int i2, int i3, int i4) {
        calculateTransformedRenderSize(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), matrix);
        boolean z = videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer;
        boolean z2 = videoFrame.getBuffer() instanceof RgbaBuffer;
        this.renderMatrix.reset();
        this.renderMatrix.preTranslate(0.5f, 0.5f);
        if (!z) {
            this.renderMatrix.preScale(1.0f, -1.0f);
        }
        this.renderMatrix.preRotate(videoFrame.getRotation());
        this.renderMatrix.preTranslate(-0.5f, -0.5f);
        if (matrix != null) {
            this.renderMatrix.preConcat(matrix);
        }
        if (z) {
            this.lastI420Frame = null;
            this.lastRgbaFrame = null;
            drawTexture(glDrawer, videoFrame.getBuffer(), this.renderMatrix, this.renderWidth, this.renderHeight, i, i2, i3, i4);
        } else if (z2) {
            if (videoFrame != this.lastRgbaFrame) {
                this.lastRgbaFrame = videoFrame;
                RgbaBuffer buffer = videoFrame.getBuffer();
                this.rgbaUploader.uploadData(buffer.getBuffer(), buffer.getWidth(), buffer.getHeight());
                buffer.release();
            }
            glDrawer.drawRgb(this.rgbaUploader.getTextureId(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, i, i2, i3, i4);
        } else {
            if (videoFrame != this.lastI420Frame) {
                this.lastI420Frame = videoFrame;
                VideoFrame.I420Buffer i420 = videoFrame.getBuffer().toI420();
                this.yuvUploader.uploadFromBuffer(i420);
                i420.release();
            }
            glDrawer.drawYuv(this.yuvUploader.getYuvTextures(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, i, i2, i3, i4);
        }
    }

    public void release() {
        this.yuvUploader.release();
        this.lastI420Frame = null;
        this.rgbaUploader.release();
        this.lastRgbaFrame = null;
    }
}
