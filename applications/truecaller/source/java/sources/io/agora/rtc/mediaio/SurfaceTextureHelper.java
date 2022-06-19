package io.agora.rtc.mediaio;

import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import io.agora.rtc.gl.TextureBufferImpl;
import io.agora.rtc.mediaio.MediaIO;
import io.agora.rtc.p1718gl.EglBase;
import io.agora.rtc.p1718gl.GlUtil;
import io.agora.rtc.p1718gl.TextureTransformer;
import io.agora.rtc.p1718gl.VideoFrame;
import io.agora.rtc.p1718gl.VideoFrame$TextureBuffer$Type;
import io.agora.rtc.p1718gl.YuvConverter;
import io.agora.rtc.utils.ThreadUtils;
import java.util.concurrent.Callable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/SurfaceTextureHelper.class */
public class SurfaceTextureHelper {
    private static final int MAX_TEXTURE_COPY = 2;
    private static final String TAG = "SurfaceTextureHelper";
    private final EglBase eglBase;
    private final Handler handler;
    private boolean hasPendingTexture;
    private boolean isQuitting;
    private volatile boolean isTextureInUse;
    private OnTextureFrameAvailableListener listener;
    private boolean mCopyTo2DTexture;
    private int mHeight;
    private int mWidth;
    private final int oesTextureId;
    private OnTextureFrameAvailableListener pendingListener;
    public final Runnable setListenerRunnable;
    private final SurfaceTexture surfaceTexture;
    private TextureTransformer textureTransformer;
    private YuvConverter yuvConverter;

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener.class */
    public interface OnTextureFrameAvailableListener {
        void onTextureFrameAvailable(int i, MediaIO.PixelFormat pixelFormat, float[] fArr, long j);

        void onTextureFrameAvailable(int i, float[] fArr, long j);
    }

    private SurfaceTextureHelper(EglBase.Context context, Handler handler) {
        this.mCopyTo2DTexture = false;
        this.textureTransformer = null;
        this.hasPendingTexture = false;
        this.isTextureInUse = false;
        this.isQuitting = false;
        this.setListenerRunnable = new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.3
            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m8728C = C22128a.m8728C("Setting listener to ");
                m8728C.append(SurfaceTextureHelper.this.pendingListener);
                m8728C.toString();
                SurfaceTextureHelper surfaceTextureHelper = SurfaceTextureHelper.this;
                surfaceTextureHelper.listener = surfaceTextureHelper.pendingListener;
                SurfaceTextureHelper.this.pendingListener = null;
                if (SurfaceTextureHelper.this.hasPendingTexture) {
                    SurfaceTextureHelper.this.updateTexImage();
                    SurfaceTextureHelper.this.hasPendingTexture = false;
                }
            }
        };
        if (handler.getLooper().getThread() == Thread.currentThread()) {
            this.handler = handler;
            EglBase create = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
            this.eglBase = create;
            try {
                create.createDummyPbufferSurface();
                create.makeCurrent();
                int generateTexture = GlUtil.generateTexture(36197);
                this.oesTextureId = generateTexture;
                SurfaceTexture surfaceTexture = new SurfaceTexture(generateTexture);
                this.surfaceTexture = surfaceTexture;
                setOnFrameAvailableListener(surfaceTexture, new SurfaceTexture.OnFrameAvailableListener() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.4
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                        SurfaceTextureHelper.this.hasPendingTexture = true;
                        SurfaceTextureHelper.this.tryDeliverTextureFrame();
                    }
                }, handler);
                return;
            } catch (RuntimeException e) {
                this.eglBase.release();
                handler.getLooper().quit();
                throw e;
            }
        }
        throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
    }

    private SurfaceTextureHelper(EglBase.Context context, Handler handler, boolean z, int i, int i2) {
        this.mCopyTo2DTexture = false;
        this.textureTransformer = null;
        this.hasPendingTexture = false;
        this.isTextureInUse = false;
        this.isQuitting = false;
        this.setListenerRunnable = new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.3
            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m8728C = C22128a.m8728C("Setting listener to ");
                m8728C.append(SurfaceTextureHelper.this.pendingListener);
                m8728C.toString();
                SurfaceTextureHelper surfaceTextureHelper = SurfaceTextureHelper.this;
                surfaceTextureHelper.listener = surfaceTextureHelper.pendingListener;
                SurfaceTextureHelper.this.pendingListener = null;
                if (SurfaceTextureHelper.this.hasPendingTexture) {
                    SurfaceTextureHelper.this.updateTexImage();
                    SurfaceTextureHelper.this.hasPendingTexture = false;
                }
            }
        };
        if (handler.getLooper().getThread() == Thread.currentThread()) {
            this.handler = handler;
            EglBase create = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
            this.eglBase = create;
            try {
                create.createDummyPbufferSurface();
                create.makeCurrent();
                this.mCopyTo2DTexture = z;
                if (z) {
                    this.mWidth = i;
                    this.mHeight = i2;
                    this.textureTransformer = new TextureTransformer(2);
                }
                int generateTexture = GlUtil.generateTexture(36197);
                this.oesTextureId = generateTexture;
                SurfaceTexture surfaceTexture = new SurfaceTexture(generateTexture);
                this.surfaceTexture = surfaceTexture;
                setOnFrameAvailableListener(surfaceTexture, new SurfaceTexture.OnFrameAvailableListener() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.5
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                        SurfaceTextureHelper.this.hasPendingTexture = true;
                        SurfaceTextureHelper.this.tryDeliverTextureFrame();
                    }
                }, handler);
                return;
            } catch (RuntimeException e) {
                this.eglBase.release();
                handler.getLooper().quit();
                throw e;
            }
        }
        throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
    }

    public static SurfaceTextureHelper create(final String str, final EglBase.Context context) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        return (SurfaceTextureHelper) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<SurfaceTextureHelper>() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.1
            @Override // java.util.concurrent.Callable
            public SurfaceTextureHelper call() {
                try {
                    return new SurfaceTextureHelper(context, handler);
                } catch (RuntimeException e) {
                    return null;
                }
            }
        });
    }

    public static SurfaceTextureHelper create(final String str, final EglBase.Context context, final boolean z, final int i, final int i2) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        return (SurfaceTextureHelper) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<SurfaceTextureHelper>() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.2
            @Override // java.util.concurrent.Callable
            public SurfaceTextureHelper call() {
                try {
                    return new SurfaceTextureHelper(context, handler, z, i, i2);
                } catch (RuntimeException e) {
                    return null;
                }
            }
        });
    }

    public void release() {
        if (this.handler.getLooper().getThread() == Thread.currentThread()) {
            if (this.isTextureInUse || !this.isQuitting) {
                throw new IllegalStateException("Unexpected release.");
            }
            YuvConverter yuvConverter = this.yuvConverter;
            if (yuvConverter != null) {
                yuvConverter.release();
            }
            TextureTransformer textureTransformer = this.textureTransformer;
            if (textureTransformer != null) {
                textureTransformer.release();
            }
            GLES20.glDeleteTextures(1, new int[]{this.oesTextureId}, 0);
            this.surfaceTexture.release();
            this.eglBase.release();
            this.handler.getLooper().quit();
            return;
        }
        throw new IllegalStateException("Wrong thread.");
    }

    private static void setOnFrameAvailableListener(SurfaceTexture surfaceTexture, SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener, Handler handler) {
        surfaceTexture.setOnFrameAvailableListener(onFrameAvailableListener, handler);
    }

    public void tryDeliverTextureFrame() {
        TextureTransformer textureTransformer;
        if (this.handler.getLooper().getThread() == Thread.currentThread()) {
            if (this.isQuitting || !this.hasPendingTexture || this.isTextureInUse || this.listener == null) {
                return;
            }
            this.isTextureInUse = true;
            this.hasPendingTexture = false;
            updateTexImage();
            float[] fArr = new float[16];
            this.surfaceTexture.getTransformMatrix(fArr);
            long timestamp = this.surfaceTexture.getTimestamp();
            if (!this.mCopyTo2DTexture || (textureTransformer = this.textureTransformer) == null) {
                this.listener.onTextureFrameAvailable(this.oesTextureId, fArr, timestamp);
                return;
            } else {
                this.listener.onTextureFrameAvailable(textureTransformer.copy(this.oesTextureId, MediaIO.PixelFormat.TEXTURE_OES.intValue(), this.mWidth, this.mHeight), MediaIO.PixelFormat.TEXTURE_2D, fArr, timestamp);
                return;
            }
        }
        throw new IllegalStateException("Wrong thread.");
    }

    public void updateTexImage() {
        try {
            synchronized (EglBase.lock) {
                this.surfaceTexture.updateTexImage();
            }
        } catch (IllegalStateException e) {
        }
    }

    public VideoFrame.TextureBuffer createTextureBuffer(int i, int i2, Matrix matrix) {
        return new TextureBufferImpl(getEglContext(), i, i2, VideoFrame$TextureBuffer$Type.OES, this.oesTextureId, matrix, this.handler, this.yuvConverter, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.10
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.returnTextureFrame();
            }
        });
    }

    public void dispose() {
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.8
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isQuitting = true;
                if (!SurfaceTextureHelper.this.isTextureInUse) {
                    SurfaceTextureHelper.this.release();
                }
            }
        });
    }

    public EglBase.Context getEglContext() {
        return this.eglBase.getEglBaseContext();
    }

    public Handler getHandler() {
        return this.handler;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public boolean isTextureInUse() {
        return this.isTextureInUse;
    }

    public void returnTextureFrame() {
        this.handler.post(new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.7
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isTextureInUse = false;
                if (SurfaceTextureHelper.this.isQuitting) {
                    SurfaceTextureHelper.this.release();
                } else {
                    SurfaceTextureHelper.this.tryDeliverTextureFrame();
                }
            }
        });
    }

    public void startListening(OnTextureFrameAvailableListener onTextureFrameAvailableListener) {
        if (this.listener == null && this.pendingListener == null) {
            this.pendingListener = onTextureFrameAvailableListener;
            this.handler.post(this.setListenerRunnable);
            return;
        }
        throw new IllegalStateException("SurfaceTextureHelper listener has already been set.");
    }

    public void stopListening() {
        this.handler.removeCallbacks(this.setListenerRunnable);
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.6
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.listener = null;
                SurfaceTextureHelper.this.pendingListener = null;
            }
        });
    }

    public VideoFrame.I420Buffer textureToYuv(final VideoFrame.TextureBuffer textureBuffer) {
        if (textureBuffer.getTextureId() == this.oesTextureId) {
            final VideoFrame.I420Buffer[] i420BufferArr = new VideoFrame.I420Buffer[1];
            ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.9
                @Override // java.lang.Runnable
                public void run() {
                    if (SurfaceTextureHelper.this.yuvConverter == null) {
                        SurfaceTextureHelper.this.yuvConverter = new YuvConverter();
                    }
                    i420BufferArr[0] = SurfaceTextureHelper.this.yuvConverter.convert(textureBuffer);
                }
            });
            return i420BufferArr[0];
        }
        throw new IllegalStateException("textureToByteBuffer called with unexpected textureId");
    }
}
