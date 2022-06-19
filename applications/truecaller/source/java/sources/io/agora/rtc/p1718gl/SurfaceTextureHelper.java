package io.agora.rtc.p1718gl;

import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.p1718gl.EglBase;
import io.agora.rtc.p1718gl.VideoFrame;
import io.agora.rtc.utils.ThreadUtils;
import java.util.concurrent.Callable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: io.agora.rtc.gl.SurfaceTextureHelper */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/SurfaceTextureHelper.class */
public class SurfaceTextureHelper {
    private static final String TAG = "SurfaceTextureHelper";
    private static final boolean VERBOSE = false;
    private final EglBase eglBase;
    private final Handler handler;
    private boolean hasPendingTexture;
    private boolean isOesTextureInUse;
    private boolean isQuitting;
    private OnTextureFrameAvailableListener listener;
    private final String name;
    private final int oesTextureId;
    private OnTextureFrameAvailableListener pendingListener;
    public final Runnable setListenerRunnable;
    private final SurfaceTexture surfaceTexture;
    private final TextureBufferPool textureBufferPool;
    private final YuvConverter yuvConverter;

    /* renamed from: io.agora.rtc.gl.SurfaceTextureHelper$8 */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/SurfaceTextureHelper$8.class */
    public class CallableC253058 implements Callable<VideoFrame.TextureBuffer> {
        public final /* synthetic */ VideoFrame.TextureBuffer val$textureBuffer;

        public CallableC253058(VideoFrame.TextureBuffer textureBuffer) {
            SurfaceTextureHelper.this = r4;
            this.val$textureBuffer = textureBuffer;
        }

        @Override // java.util.concurrent.Callable
        public VideoFrame.TextureBuffer call() {
            return SurfaceTextureHelper.this.textureBufferPool.textureCopy(this.val$textureBuffer, new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.8.1
                @Override // java.lang.Runnable
                public void run() {
                    SurfaceTextureHelper.this.handler.post(new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.8.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!SurfaceTextureHelper.this.isQuitting || SurfaceTextureHelper.this.isOesTextureInUse || SurfaceTextureHelper.this.textureBufferPool.anyTextureInUse()) {
                                return;
                            }
                            SurfaceTextureHelper.this.release();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: io.agora.rtc.gl.SurfaceTextureHelper$OnTextureFrameAvailableListener */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener.class */
    public interface OnTextureFrameAvailableListener {
        void onTextureFrameAvailable(int i, float[] fArr, long j);
    }

    private SurfaceTextureHelper(final String str, EglBase.Context context, Handler handler, int i) {
        this.hasPendingTexture = false;
        this.isOesTextureInUse = false;
        this.isQuitting = false;
        this.setListenerRunnable = new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.2
            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m8728C = C22128a.m8728C("Setting listener to ");
                m8728C.append(SurfaceTextureHelper.this.pendingListener);
                Logging.m3706i(SurfaceTextureHelper.TAG, m8728C.toString());
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
            Logging.m3706i(TAG, str + " create, this: " + this + ", shared: " + context);
            this.name = str;
            this.handler = handler;
            EglBase create = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
            this.eglBase = create;
            try {
                create.createDummyPbufferSurface();
                create.makeCurrent();
                YuvConverter yuvConverter = new YuvConverter();
                this.yuvConverter = yuvConverter;
                this.textureBufferPool = TextureBufferPool.createWithinGlThread(str, i, 6407, handler, create, yuvConverter);
                int generateTexture = GlUtil.generateTexture(36197);
                this.oesTextureId = generateTexture;
                SurfaceTexture surfaceTexture = new SurfaceTexture(generateTexture);
                this.surfaceTexture = surfaceTexture;
                setOnFrameAvailableListener(surfaceTexture, new SurfaceTexture.OnFrameAvailableListener() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.3
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                        SurfaceTextureHelper.this.hasPendingTexture = true;
                        SurfaceTextureHelper.this.tryDeliverTextureFrame();
                    }
                }, handler);
                return;
            } catch (RuntimeException e) {
                Logging.m3709e(TAG, "SurfaceTextureHelper: failed to create pbufferSurface!!");
                this.eglBase.release();
                handler.getLooper().quit();
                throw e;
            }
        }
        throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
    }

    public static SurfaceTextureHelper create(final String str, final EglBase.Context context, final int i) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        StringBuilder m8692L = C22128a.m8692L("create thread: ", str, " id: ");
        m8692L.append(handlerThread.getThreadId());
        Logging.m3711d(TAG, m8692L.toString());
        return (SurfaceTextureHelper) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<SurfaceTextureHelper>() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.1
            @Override // java.util.concurrent.Callable
            public SurfaceTextureHelper call() {
                try {
                    return new SurfaceTextureHelper(str, context, handler, i);
                } catch (RuntimeException e) {
                    Logging.m3708e(SurfaceTextureHelper.TAG, str + " create failure", e);
                    return null;
                }
            }
        });
    }

    public void release() {
        Logging.m3706i(TAG, this.name + " release, this: " + this);
        if (this.handler.getLooper().getThread() == Thread.currentThread()) {
            if (this.isOesTextureInUse || this.textureBufferPool.anyTextureInUse() || !this.isQuitting) {
                throw new IllegalStateException("Unexpected release.");
            }
            this.yuvConverter.release();
            this.textureBufferPool.dispose();
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
        if (this.handler.getLooper().getThread() == Thread.currentThread()) {
            if (this.isQuitting || !this.hasPendingTexture || this.isOesTextureInUse || this.listener == null) {
                return;
            }
            this.isOesTextureInUse = true;
            this.hasPendingTexture = false;
            updateTexImage();
            float[] fArr = new float[16];
            this.surfaceTexture.getTransformMatrix(fArr);
            this.listener.onTextureFrameAvailable(this.oesTextureId, fArr, this.surfaceTexture.getTimestamp());
            return;
        }
        throw new IllegalStateException("Wrong thread.");
    }

    public void updateTexImage() {
        try {
            synchronized (EglBase.lock) {
                this.surfaceTexture.updateTexImage();
            }
        } catch (IllegalStateException e) {
            Logging.m3709e(TAG, "SurfaceTextureHelper: failed to updateTexImage!!");
        }
    }

    public VideoFrame.TextureBuffer createTextureBuffer(int i, int i2, Matrix matrix) {
        return new TextureBufferImpl(getEglContext(), i, i2, VideoFrame$TextureBuffer$Type.OES, this.oesTextureId, matrix, this.handler, this.yuvConverter, new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.9
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.returnTextureFrame();
            }
        });
    }

    public void dispose() {
        Logging.m3706i(TAG, this.name + " dispose(), this: " + this);
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.6
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isQuitting = true;
                if (!SurfaceTextureHelper.this.isOesTextureInUse && !SurfaceTextureHelper.this.textureBufferPool.anyTextureInUse()) {
                    SurfaceTextureHelper.this.release();
                    return;
                }
                Logging.m3706i(SurfaceTextureHelper.TAG, SurfaceTextureHelper.this.name + " not release yet, this: " + SurfaceTextureHelper.this + " isOesTextureInUse: " + SurfaceTextureHelper.this.isOesTextureInUse);
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

    public void returnTextureFrame() {
        this.handler.post(new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.5
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isOesTextureInUse = false;
                if (!SurfaceTextureHelper.this.isQuitting) {
                    SurfaceTextureHelper.this.tryDeliverTextureFrame();
                } else if (SurfaceTextureHelper.this.textureBufferPool.anyTextureInUse()) {
                } else {
                    SurfaceTextureHelper.this.release();
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
        Logging.m3706i(TAG, this.name + " stopListening()");
        this.handler.removeCallbacks(this.setListenerRunnable);
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.4
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.listener = null;
                SurfaceTextureHelper.this.pendingListener = null;
            }
        });
    }

    public VideoFrame.TextureBuffer textureCopy(VideoFrame.TextureBuffer textureBuffer) {
        if (textureBuffer.getTextureId() == this.oesTextureId) {
            return (VideoFrame.TextureBuffer) ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new CallableC253058(textureBuffer));
        }
        throw new IllegalStateException("textureCopy called with unexpected textureId");
    }

    public VideoFrame.I420Buffer textureToYuv(final VideoFrame.TextureBuffer textureBuffer) {
        if (textureBuffer.getTextureId() == this.oesTextureId) {
            final VideoFrame.I420Buffer[] i420BufferArr = new VideoFrame.I420Buffer[1];
            ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.gl.SurfaceTextureHelper.7
                @Override // java.lang.Runnable
                public void run() {
                    i420BufferArr[0] = SurfaceTextureHelper.this.yuvConverter.convert(textureBuffer);
                }
            });
            return i420BufferArr[0];
        }
        throw new IllegalStateException("textureToYuv called with unexpected textureId");
    }
}
