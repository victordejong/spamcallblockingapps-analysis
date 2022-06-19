package io.agora.rtc.p1718gl;

import android.graphics.Matrix;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import io.agora.rtc.internal.ATrace;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.p1718gl.EglBase;
import io.agora.rtc.p1718gl.VideoFrame;
import io.agora.rtc.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: io.agora.rtc.gl.TextureBufferPool */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferPool.class */
public class TextureBufferPool {
    private static final String TAG = "TextureBufferPool";
    private static final boolean VERBOSE = false;
    private static final AtomicInteger nextSeq = new AtomicInteger(0);
    private final GlRectDrawer drawer;
    private int dropCount;
    private final EglBase eglBase;
    private final EglBase.Context eglContext;
    private final int glPixelFormat;
    private final Handler handler;
    private boolean isQuitting;
    private final int keepBufferCnt;
    private final int maxBufferCnt;
    private final String name;
    private final boolean ownGlThread;
    private final boolean shrinkPool;
    private final ArrayList<TextureInfo> textureInfoList;
    private final YuvConverter yuvConverter;

    /* renamed from: io.agora.rtc.gl.TextureBufferPool$5 */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferPool$5.class */
    public static /* synthetic */ class C253145 {
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

    /* renamed from: io.agora.rtc.gl.TextureBufferPool$TextureInfo */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/TextureBufferPool$TextureInfo.class */
    public static class TextureInfo {
        public int frameBufferId;
        public int textureId;
        public boolean inUse = false;
        public boolean specified = false;
        public int width = 0;
        public int height = 0;

        public TextureInfo(int i, int i2) {
            this.textureId = i;
            this.frameBufferId = i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TextureInfo{textureId=");
            m8728C.append(this.textureId);
            m8728C.append(", frameBufferId=");
            m8728C.append(this.frameBufferId);
            m8728C.append(", inUse=");
            m8728C.append(this.inUse);
            m8728C.append(", specified=");
            m8728C.append(this.specified);
            m8728C.append(", width=");
            m8728C.append(this.width);
            m8728C.append(", height=");
            return C22128a.m8701I2(m8728C, this.height, '}');
        }
    }

    private TextureBufferPool(String str, int i, int i2, Handler handler, boolean z, EglBase eglBase, YuvConverter yuvConverter) {
        this.shrinkPool = true;
        this.textureInfoList = new ArrayList<>();
        this.isQuitting = false;
        this.dropCount = 0;
        String str2 = TAG;
        Logging.m3706i(str2, str + " init buffer pool, ownGlThread: " + z + " cnt: " + i);
        this.name = str;
        int max = Math.max(i, 1);
        this.maxBufferCnt = max;
        this.keepBufferCnt = Math.min(max, 3);
        this.glPixelFormat = i2;
        this.handler = handler;
        this.ownGlThread = z;
        this.eglBase = eglBase;
        this.yuvConverter = yuvConverter == null ? new YuvConverter() : yuvConverter;
        this.eglContext = eglBase.getEglBaseContext();
        this.drawer = new GlRectDrawer();
    }

    private TextureInfo acquireTextureFramebuffer() {
        TextureInfo textureInfo;
        Iterator<TextureInfo> it = this.textureInfoList.iterator();
        while (true) {
            if (!it.hasNext()) {
                textureInfo = null;
                break;
            }
            textureInfo = it.next();
            if (!textureInfo.inUse) {
                break;
            }
        }
        TextureInfo textureInfo2 = textureInfo;
        if (textureInfo == null) {
            if (this.textureInfoList.size() >= this.maxBufferCnt) {
                int i = this.dropCount + 1;
                this.dropCount = i;
                ATrace.traceCounter("Drop@TexPool", i);
                return null;
            }
            int generateTexture = GlUtil.generateTexture(3553);
            int[] iArr = new int[1];
            GLES20.glGenFramebuffers(1, iArr, 0);
            textureInfo2 = new TextureInfo(generateTexture, iArr[0]);
            this.textureInfoList.add(textureInfo2);
        }
        textureInfo2.inUse = true;
        return textureInfo2;
    }

    public static VideoFrame$TextureBuffer$Type agoraFrameTypeToTextureBufferType(int i) {
        return i == 11 ? VideoFrame$TextureBuffer$Type.OES : VideoFrame$TextureBuffer$Type.RGB;
    }

    public static TextureBufferPool create(final String str, final EglBase.Context context, final int i) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        return (TextureBufferPool) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<TextureBufferPool>() { // from class: io.agora.rtc.gl.TextureBufferPool.1
            @Override // java.util.concurrent.Callable
            public TextureBufferPool call() {
                try {
                    EglBase create = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
                    try {
                        create.createDummyPbufferSurface();
                        create.makeCurrent();
                        return new TextureBufferPool(str, i, 6408, handler, true, create, null);
                    } catch (RuntimeException e) {
                        String str2 = TextureBufferPool.TAG;
                        Logging.m3709e(str2, str + " failed to create pbufferSurface!!");
                        create.release();
                        handler.getLooper().quit();
                        throw e;
                    }
                } catch (RuntimeException e2) {
                    String str3 = TextureBufferPool.TAG;
                    Logging.m3708e(str3, str + " create failure", e2);
                    return null;
                }
            }
        });
    }

    public static TextureBufferPool createWithinGlThread(String str, int i, int i2, Handler handler, EglBase eglBase, YuvConverter yuvConverter) {
        return new TextureBufferPool(str, i, i2, handler, false, eglBase, yuvConverter);
    }

    public VideoFrame.TextureBuffer doTextureCopy(int i, VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type, int i2, int i3, Matrix matrix, final Runnable runnable) {
        final TextureInfo acquireTextureFramebuffer = acquireTextureFramebuffer();
        if (acquireTextureFramebuffer == null) {
            return null;
        }
        ATrace.beginSection("setupTextureFrameBuffer");
        boolean z = setupTextureFrameBuffer(acquireTextureFramebuffer, i2, i3);
        ATrace.endSection();
        if (!z) {
            releaseTextureFramebuffer(acquireTextureFramebuffer);
            return null;
        }
        GLES20.glBindFramebuffer(36160, acquireTextureFramebuffer.frameBufferId);
        ATrace.beginSection("drawTexture");
        drawTexture(i, videoFrame$TextureBuffer$Type, i2, i3);
        ATrace.endSection();
        ATrace.beginSection("flush");
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glUseProgram(0);
        GLES20.glFlush();
        ATrace.endSection();
        final VideoFrame.TextureBuffer[] textureBufferArr = {new TextureBufferImpl(this.eglContext, i2, i3, VideoFrame$TextureBuffer$Type.RGB, acquireTextureFramebuffer.textureId, matrix, this.handler, this.yuvConverter, new Runnable() { // from class: io.agora.rtc.gl.TextureBufferPool.4
            @Override // java.lang.Runnable
            public void run() {
                TextureBufferPool.this.handler.post(new Runnable() { // from class: io.agora.rtc.gl.TextureBufferPool.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RunnableC253124 runnableC253124 = RunnableC253124.this;
                        TextureBufferPool.this.releaseTextureFramebuffer(acquireTextureFramebuffer);
                        if (TextureBufferPool.this.isQuitting && !TextureBufferPool.this.anyTextureInUse()) {
                            String str = TextureBufferPool.TAG;
                            Logging.m3706i(str, TextureBufferPool.this.name + " ready to release since no buffer in flight");
                            TextureBufferPool.this.release();
                        }
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
            }
        }, nextSeq.getAndIncrement())};
        return textureBufferArr[0];
    }

    private void drawTexture(int i, VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type, int i2, int i3) {
        GLES20.glClear(16384);
        int ordinal = videoFrame$TextureBuffer$Type.ordinal();
        if (ordinal == 0) {
            this.drawer.drawOes(i, GlUtil.IDENTITY_MATRIX, i2, i3, 0, 0, i2, i3);
        } else if (ordinal != 1) {
            throw new RuntimeException("Unknown texture type.");
        } else {
            this.drawer.drawRgb(i, GlUtil.IDENTITY_MATRIX, i2, i3, 0, 0, i2, i3);
        }
        GlUtil.checkNoGLES2Error("TextureBufferPool.drawFrameBuffer");
    }

    public static VideoFrame.TextureBuffer makeTextureBuffer(EglBase.Context context, int i, int i2, int i3, int i4, float[] fArr, Handler handler, YuvConverter yuvConverter, Runnable runnable) {
        Matrix matrix = fArr == null ? new Matrix() : RendererCommon.convertMatrixToAndroidGraphicsMatrix(fArr);
        if (context == null) {
            context = EglBase.getCurrentContext();
        }
        return new TextureBufferImpl(context, i3, i4, agoraFrameTypeToTextureBufferType(i), i2, matrix, handler, yuvConverter, runnable, nextSeq.getAndIncrement());
    }

    public void release() {
        Logging.m3706i(TAG, this.name + " release()");
        if (!this.textureInfoList.isEmpty()) {
            int size = this.textureInfoList.size();
            int[] iArr = new int[size];
            int[] iArr2 = new int[size];
            for (int i = 0; i < size; i++) {
                TextureInfo textureInfo = this.textureInfoList.get(i);
                iArr[i] = textureInfo.textureId;
                iArr2[i] = textureInfo.frameBufferId;
            }
            Logging.m3711d(TAG, this.name + ": delete textures " + Arrays.toString(iArr));
            GLES20.glDeleteTextures(size, iArr, 0);
            GLES20.glDeleteFramebuffers(1, iArr2, 0);
            this.textureInfoList.clear();
        }
        this.drawer.release();
        if (this.ownGlThread) {
            EglBase eglBase = this.eglBase;
            if (eglBase != null) {
                eglBase.release();
            }
            this.handler.getLooper().quit();
        }
    }

    public void releaseTextureFramebuffer(TextureInfo textureInfo) {
        textureInfo.inUse = false;
        int indexOf = this.textureInfoList.indexOf(textureInfo);
        if (indexOf < 0) {
            Logging.m3709e(TAG, "texture info not found!");
        } else if (indexOf < this.keepBufferCnt) {
        } else {
            GLES20.glDeleteTextures(1, new int[]{textureInfo.textureId}, 0);
            GLES20.glDeleteFramebuffers(1, new int[]{textureInfo.frameBufferId}, 0);
            this.textureInfoList.remove(indexOf);
        }
    }

    private boolean setupTextureFrameBuffer(TextureInfo textureInfo, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            String str = TAG;
            Logging.m3704w(str, "Invalid size: " + i + "x" + i2);
            return false;
        } else if (textureInfo.specified && textureInfo.width == i && textureInfo.height == i2) {
            return true;
        } else {
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, textureInfo.textureId);
            ATrace.beginSection("glTexImage2D");
            int i3 = this.glPixelFormat;
            GLES20.glTexImage2D(3553, 0, i3, i, i2, 0, i3, 5121, null);
            ATrace.endSection();
            GlUtil.checkNoGLES2Error("TextureBufferPool.glTexImage2D");
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, textureInfo.frameBufferId);
            ATrace.beginSection("glFramebufferTexture2D");
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, textureInfo.textureId, 0);
            ATrace.endSection();
            int glCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
            GLES20.glBindFramebuffer(36160, 0);
            if (glCheckFramebufferStatus == 36053) {
                textureInfo.specified = true;
                textureInfo.width = i;
                textureInfo.height = i2;
                return true;
            }
            String str2 = TAG;
            Logging.m3704w(str2, "Framebuffer not complete, status: " + glCheckFramebufferStatus);
            return false;
        }
    }

    public boolean anyTextureInUse() {
        Iterator<TextureInfo> it = this.textureInfoList.iterator();
        while (it.hasNext()) {
            if (it.next().inUse) {
                return true;
            }
        }
        return false;
    }

    public void dispose() {
        String str = TAG;
        Logging.m3706i(str, this.name + " dispose()");
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.gl.TextureBufferPool.3
            @Override // java.lang.Runnable
            public void run() {
                TextureBufferPool.this.isQuitting = true;
                if (!TextureBufferPool.this.anyTextureInUse()) {
                    String str2 = TextureBufferPool.TAG;
                    Logging.m3706i(str2, TextureBufferPool.this.name + " ready to release since no more buffer in flight");
                    TextureBufferPool.this.release();
                }
            }
        });
    }

    public VideoFrame.TextureBuffer textureCopy(final int i, final VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type, final int i2, final int i3, final Matrix matrix, final Runnable runnable) {
        return (VideoFrame.TextureBuffer) ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Callable<VideoFrame.TextureBuffer>() { // from class: io.agora.rtc.gl.TextureBufferPool.2
            @Override // java.util.concurrent.Callable
            public VideoFrame.TextureBuffer call() throws Exception {
                return TextureBufferPool.this.doTextureCopy(i, videoFrame$TextureBuffer$Type, i2, i3, matrix, runnable);
            }
        });
    }

    public VideoFrame.TextureBuffer textureCopy(VideoFrame.TextureBuffer textureBuffer, Runnable runnable) {
        if (textureBuffer == null) {
            return null;
        }
        return textureCopy(textureBuffer.getTextureId(), textureBuffer.getType(), textureBuffer.getWidth(), textureBuffer.getHeight(), textureBuffer.getTransformMatrix(), runnable);
    }
}
