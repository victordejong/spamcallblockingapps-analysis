package io.agora.rtc.mediaio;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import io.agora.rtc.gl.GlRectDrawer;
import io.agora.rtc.gl.JavaI420Buffer;
import io.agora.rtc.gl.RgbaBuffer;
import io.agora.rtc.gl.TextureBufferImpl;
import io.agora.rtc.mediaio.MediaIO;
import io.agora.rtc.p1718gl.EglBase;
import io.agora.rtc.p1718gl.EglRenderer;
import io.agora.rtc.p1718gl.RendererCommon;
import io.agora.rtc.p1718gl.VideoFrame;
import io.agora.rtc.p1718gl.VideoFrame$TextureBuffer$Type;
import io.agora.rtc.p1718gl.YuvConverter;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/BaseVideoRenderer.class */
public class BaseVideoRenderer implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    private static final String ERROR_EGL = "Only one egl surface allowed";
    private static final String TAG = BaseVideoRenderer.class.getSimpleName();
    private final EglRenderer eglRenderer;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private TextureView.SurfaceTextureListener mSurfaceTextureListener;
    private SurfaceView mSurfaceView;
    private SurfaceHolder.Callback mSurfaceViewListener;
    private TextureView mTextureView;
    private int mBufferType = -1;
    private int mPixelFormat = -1;
    private boolean mHasEglSurface = false;
    private boolean mStarted = false;

    public BaseVideoRenderer(String str) {
        this.eglRenderer = new EglRenderer(str);
    }

    public void releaseBuffer(ByteBuffer byteBuffer) {
    }

    private void rendI420Frame(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (byteBuffer == null) {
            return;
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr, 0, remaining);
        JavaI420Buffer createYUV = JavaI420Buffer.createYUV(bArr, i2, i3);
        if (createYUV == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(createYUV, i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendI420Frame(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        JavaI420Buffer createYUV;
        if (bArr == null || bArr.length == 0 || (createYUV = JavaI420Buffer.createYUV(bArr, i2, i3)) == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(createYUV, i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendRGBAFrame(final ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (byteBuffer == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(new RgbaBuffer(byteBuffer, i2, i3, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoRenderer.this.releaseBuffer(byteBuffer);
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendRGBAFrame(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        final ByteBuffer wrap = ByteBuffer.wrap(bArr);
        VideoFrame videoFrame = new VideoFrame(new RgbaBuffer(wrap, i2, i3, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.3
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoRenderer.this.releaseBuffer(wrap);
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendTextureFrame(int i, VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type, int i2, int i3, int i4, long j, float[] fArr) {
        VideoFrame videoFrame = new VideoFrame(new TextureBufferImpl(this.eglRenderer.getEglContext(), i2, i3, videoFrame$TextureBuffer$Type, i, RendererCommon.convertMatrixToAndroidGraphicsMatrix(fArr), (Handler) null, (YuvConverter) null, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.1
            @Override // java.lang.Runnable
            public void run() {
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    public void consume(int i, int i2, int i3, int i4, int i5, long j, float[] fArr) {
        VideoFrame$TextureBuffer$Type videoFrame$TextureBuffer$Type;
        if (!this.mStarted) {
            return;
        }
        if (i2 == 11) {
            videoFrame$TextureBuffer$Type = VideoFrame$TextureBuffer$Type.OES;
        } else if (i2 != 10) {
            return;
        } else {
            videoFrame$TextureBuffer$Type = VideoFrame$TextureBuffer$Type.RGB;
        }
        rendTextureFrame(i, videoFrame$TextureBuffer$Type, i3, i4, i5, j, fArr);
    }

    public void consume(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (!this.mStarted) {
            return;
        }
        if (i == 1) {
            rendI420Frame(byteBuffer, i, i2, i3, i4, j);
        } else if (i != 4) {
        } else {
            rendRGBAFrame(byteBuffer, i, i2, i3, i4, j);
        }
    }

    public void consume(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        if (!this.mStarted) {
            return;
        }
        if (i == 1) {
            rendI420Frame(bArr, i, i2, i3, i4, j);
        } else if (i != 4) {
        } else {
            rendRGBAFrame(bArr, i, i2, i3, i4, j);
        }
    }

    public int getBufferType() {
        int i = this.mBufferType;
        if (i != -1) {
            return i;
        }
        throw new IllegalArgumentException("Buffer type is not set");
    }

    public long getEGLContextHandle() {
        return this.eglRenderer.getEglContext().getNativeEglContext();
    }

    public EglRenderer getEglRender() {
        return this.eglRenderer;
    }

    public int getPixelFormat() {
        int i = this.mPixelFormat;
        if (i != -1) {
            return i;
        }
        throw new IllegalArgumentException("Pixel format is not set");
    }

    public void init(EglBase.Context context) {
        init(context, EglBase.CONFIG_PLAIN, new GlRectDrawer());
    }

    public void init(EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        this.eglRenderer.init(context, iArr, glDrawer);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.createEglSurface(surfaceTexture);
        this.mHasEglSurface = true;
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        ThreadUtils.checkIsOnMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.eglRenderer.releaseEglSurface(new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.5
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
            return true;
        }
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
        }
    }

    public void release() {
        this.eglRenderer.release();
    }

    public void setBufferType(MediaIO.BufferType bufferType) {
        this.mBufferType = bufferType.intValue();
    }

    public void setPixelFormat(MediaIO.PixelFormat pixelFormat) {
        this.mPixelFormat = pixelFormat.intValue();
    }

    public void setRenderSurface(SurfaceTexture surfaceTexture) {
        ThreadUtils.checkIsOnMainThread();
        if (!this.mHasEglSurface) {
            this.mSurfaceTexture = surfaceTexture;
            this.eglRenderer.createEglSurface(surfaceTexture);
            this.mHasEglSurface = true;
            return;
        }
        throw new IllegalStateException(ERROR_EGL);
    }

    public void setRenderSurface(Surface surface) {
        ThreadUtils.checkIsOnMainThread();
        if (!this.mHasEglSurface) {
            this.mSurface = surface;
            this.eglRenderer.createEglSurface(surface);
            this.mHasEglSurface = true;
            return;
        }
        throw new IllegalStateException(ERROR_EGL);
    }

    public void setRenderView(SurfaceView surfaceView, SurfaceHolder.Callback callback) {
        ThreadUtils.checkIsOnMainThread();
        if (!this.mHasEglSurface) {
            this.mSurfaceView = surfaceView;
            this.mSurfaceViewListener = callback;
            surfaceView.getHolder().addCallback(this);
            return;
        }
        throw new IllegalStateException(ERROR_EGL);
    }

    public void setRenderView(TextureView textureView, TextureView.SurfaceTextureListener surfaceTextureListener) {
        ThreadUtils.checkIsOnMainThread();
        if (!this.mHasEglSurface) {
            this.mTextureView = textureView;
            this.mSurfaceTextureListener = surfaceTextureListener;
            textureView.setSurfaceTextureListener(this);
            return;
        }
        throw new IllegalStateException(ERROR_EGL);
    }

    public boolean start() {
        this.mStarted = true;
        return true;
    }

    public void stop() {
        this.mStarted = false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        ThreadUtils.checkIsOnMainThread();
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.createEglSurface(surfaceHolder.getSurface());
        this.mHasEglSurface = true;
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.eglRenderer.releaseEglSurface(new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.4
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }
}
