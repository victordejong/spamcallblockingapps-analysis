package io.agora.rtc.p1718gl;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Surface;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.p1718gl.EglBase;
import io.agora.rtc.p1718gl.RendererCommon;
import io.agora.rtc.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: io.agora.rtc.gl.EglRenderer */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/EglRenderer.class */
public class EglRenderer {
    private static final long LOG_INTERVAL_SEC = 4;
    private static final int MAX_SURFACE_CLEAR_COUNT = 3;
    private static final String TAG = "EglRenderer";
    private RendererCommon.GlDrawer drawer;
    private EglBase eglBase;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private float layoutAspectRatio;
    private long minRenderPeriodNs;
    private boolean mirror;
    private final String name;
    private long nextFrameTimeNs;
    private VideoFrame pendingFrame;
    private long renderSwapBufferTimeNs;
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private long statisticsStartTimeNs;
    private final Object handlerLock = new Object();
    private final ArrayList<FrameListenerAndParams> frameListeners = new ArrayList<>();
    private final Object fpsReductionLock = new Object();
    private final VideoFrameDrawer frameDrawer = new VideoFrameDrawer();
    private final Matrix drawMatrix = new Matrix();
    private final Object frameLock = new Object();
    private final Object layoutLock = new Object();
    private final Object statisticsLock = new Object();
    private final Runnable logStatisticsRunnable = new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.1
        @Override // java.lang.Runnable
        public void run() {
            EglRenderer.this.logStatistics();
            synchronized (EglRenderer.this.handlerLock) {
                if (EglRenderer.this.renderThreadHandler != null) {
                    EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.logStatisticsRunnable);
                    EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.logStatisticsRunnable, TimeUnit.SECONDS.toMillis(EglRenderer.LOG_INTERVAL_SEC));
                }
            }
        }
    };
    private final EglSurfaceCreation eglSurfaceCreationRunnable = new EglSurfaceCreation();

    /* renamed from: io.agora.rtc.gl.EglRenderer$EglSurfaceCreation */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/EglRenderer$EglSurfaceCreation.class */
    public class EglSurfaceCreation implements Runnable {
        private Object surface;

        private EglSurfaceCreation() {
            EglRenderer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.surface != null && EglRenderer.this.eglBase != null && !EglRenderer.this.eglBase.hasSurface()) {
                    Object obj = this.surface;
                    if (obj instanceof Surface) {
                        EglRenderer.this.eglBase.createSurface((Surface) this.surface);
                    } else if (!(obj instanceof SurfaceTexture)) {
                        throw new IllegalStateException("Invalid surface: " + this.surface);
                    } else {
                        EglRenderer.this.eglBase.createSurface((SurfaceTexture) this.surface);
                    }
                    EglRenderer.this.eglBase.makeCurrent();
                    GLES20.glPixelStorei(3317, 1);
                }
            }
        }

        public void setSurface(Object obj) {
            synchronized (this) {
                this.surface = obj;
            }
        }
    }

    /* renamed from: io.agora.rtc.gl.EglRenderer$FrameListener */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/EglRenderer$FrameListener.class */
    public interface FrameListener {
        void onFrame(Bitmap bitmap);
    }

    /* renamed from: io.agora.rtc.gl.EglRenderer$FrameListenerAndParams */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/EglRenderer$FrameListenerAndParams.class */
    public static class FrameListenerAndParams {
        public final boolean applyFpsReduction;
        public final RendererCommon.GlDrawer drawer;
        public final FrameListener listener;
        public final float scale;

        public FrameListenerAndParams(FrameListener frameListener, float f, RendererCommon.GlDrawer glDrawer, boolean z) {
            this.listener = frameListener;
            this.scale = f;
            this.drawer = glDrawer;
            this.applyFpsReduction = z;
        }
    }

    public EglRenderer(String str) {
        this.name = str;
    }

    private String averageTimeAsString(long j, int i) {
        String str;
        if (i <= 0) {
            str = AnalyticsConstants.NOT_AVAILABLE;
        } else {
            str = TimeUnit.NANOSECONDS.toMicros(j / i) + " us";
        }
        return str;
    }

    public void clearSurfaceOnRenderThread(float f, float f2, float f3, float f4) {
        EglBase eglBase = this.eglBase;
        if (eglBase == null || !eglBase.hasSurface()) {
            return;
        }
        logD("clearSurface");
        GLES20.glClearColor(f, f2, f3, f4);
        GLES20.glClear(16384);
        this.eglBase.swapBuffers();
    }

    private void createEglSurfaceInternal(Object obj) {
        this.eglSurfaceCreationRunnable.setSurface(obj);
        postToRenderThread(this.eglSurfaceCreationRunnable);
    }

    public void logD(String str) {
    }

    public void logStatistics() {
        long nanoTime = System.nanoTime();
        synchronized (this.statisticsLock) {
            long j = nanoTime - this.statisticsStartTimeNs;
            if (j <= 0) {
                return;
            }
            float nanos = ((float) (this.framesRendered * TimeUnit.SECONDS.toNanos(1L))) / ((float) j);
            logD("Duration: " + TimeUnit.NANOSECONDS.toMillis(j) + " ms. Frames received: " + this.framesReceived + ". Dropped: " + this.framesDropped + ". Rendered: " + this.framesRendered + ". Render fps: " + String.format(Locale.US, "%.1f", Float.valueOf(nanos)) + ". Average render time: " + averageTimeAsString(this.renderTimeNs, this.framesRendered) + ". Average swapBuffer time: " + averageTimeAsString(this.renderSwapBufferTimeNs, this.framesRendered) + StringConstant.DOT);
            resetStatistics(nanoTime);
        }
    }

    private void postToRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(runnable);
            }
        }
    }

    public void renderFrameOnRenderThread() {
        boolean z;
        float f;
        float f2;
        float f3;
        synchronized (this.frameLock) {
            VideoFrame videoFrame = this.pendingFrame;
            if (videoFrame == null) {
                return;
            }
            this.pendingFrame = null;
            EglBase eglBase = this.eglBase;
            if (eglBase == null || !eglBase.hasSurface()) {
                logD("Dropping frame - No surface");
                videoFrame.release();
                return;
            }
            synchronized (this.fpsReductionLock) {
                long j = this.minRenderPeriodNs;
                z = false;
                if (j != RecyclerView.FOREVER_NS) {
                    if (j > 0) {
                        long nanoTime = System.nanoTime();
                        long j2 = this.nextFrameTimeNs;
                        if (nanoTime < j2) {
                            logD("Skipping frame rendering - fps reduction is active.");
                        } else {
                            long j3 = j2 + this.minRenderPeriodNs;
                            this.nextFrameTimeNs = j3;
                            this.nextFrameTimeNs = Math.max(j3, nanoTime);
                        }
                    }
                    z = true;
                }
            }
            long nanoTime2 = System.nanoTime();
            float rotatedWidth = videoFrame.getRotatedWidth() / videoFrame.getRotatedHeight();
            synchronized (this.layoutLock) {
                f = this.layoutAspectRatio;
                if (f == 0.0f) {
                    f = rotatedWidth;
                }
            }
            if (rotatedWidth > f) {
                f2 = f / rotatedWidth;
                f3 = 1.0f;
            } else {
                f3 = rotatedWidth / f;
                f2 = 1.0f;
            }
            this.drawMatrix.reset();
            this.drawMatrix.preTranslate(0.5f, 0.5f);
            if (this.mirror) {
                this.drawMatrix.preScale(-1.0f, 1.0f);
            }
            this.drawMatrix.preScale(f2, f3);
            this.drawMatrix.preTranslate(-0.5f, -0.5f);
            if (z) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
                this.frameDrawer.drawFrame(videoFrame, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight());
                long nanoTime3 = System.nanoTime();
                this.eglBase.swapBuffers();
                long nanoTime4 = System.nanoTime();
                synchronized (this.statisticsLock) {
                    this.framesRendered++;
                    this.renderTimeNs = (nanoTime4 - nanoTime2) + this.renderTimeNs;
                    this.renderSwapBufferTimeNs = (nanoTime4 - nanoTime3) + this.renderSwapBufferTimeNs;
                }
            }
            videoFrame.release();
        }
    }

    private void resetStatistics(long j) {
        synchronized (this.statisticsLock) {
            this.statisticsStartTimeNs = j;
            this.framesReceived = 0;
            this.framesDropped = 0;
            this.framesRendered = 0;
            this.renderTimeNs = 0L;
            this.renderSwapBufferTimeNs = 0L;
        }
    }

    public void addFrameListener(FrameListener frameListener, float f) {
        addFrameListener(frameListener, f, null, false);
    }

    public void addFrameListener(FrameListener frameListener, float f, RendererCommon.GlDrawer glDrawer) {
        addFrameListener(frameListener, f, glDrawer, false);
    }

    public void addFrameListener(final FrameListener frameListener, final float f, final RendererCommon.GlDrawer glDrawer, final boolean z) {
        postToRenderThread(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.5
            @Override // java.lang.Runnable
            public void run() {
                RendererCommon.GlDrawer glDrawer2 = glDrawer;
                RendererCommon.GlDrawer glDrawer3 = glDrawer2;
                if (glDrawer2 == null) {
                    glDrawer3 = EglRenderer.this.drawer;
                }
                EglRenderer.this.frameListeners.add(new FrameListenerAndParams(frameListener, f, glDrawer3, z));
            }
        });
    }

    public void clearImage() {
        clearImage(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void clearImage(final float f, final float f2, final float f3, final float f4) {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                return;
            }
            handler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.9
                @Override // java.lang.Runnable
                public void run() {
                    EglRenderer.this.clearSurfaceOnRenderThread(f, f2, f3, f4);
                }
            });
        }
    }

    public void createEglSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture);
    }

    public void createEglSurface(Surface surface) {
        createEglSurfaceInternal(surface);
    }

    public void disableFpsReduction() {
        setFpsReduction(Float.POSITIVE_INFINITY);
    }

    public EglBase.Context getEglContext() {
        return this.eglBase.getEglBaseContext();
    }

    public void init(final EglBase.Context context, final int[] iArr, RendererCommon.GlDrawer glDrawer) {
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler != null) {
                throw new IllegalStateException(this.name + "Already initialized");
            }
            logD("Initializing EglRenderer");
            this.drawer = glDrawer;
            HandlerThread handlerThread = new HandlerThread(this.name + TAG);
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.renderThreadHandler = handler;
            ThreadUtils.invokeAtFrontUninterruptibly(handler, new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    if (context == null) {
                        EglRenderer.this.logD("EglBase.create context");
                        EglRenderer.this.eglBase = EglBase.create(context, iArr);
                        return;
                    }
                    EglRenderer.this.logD("EglBase.create shared context");
                    EglRenderer.this.eglBase = EglBase.create(context, iArr);
                }
            });
            this.renderThreadHandler.post(this.eglSurfaceCreationRunnable);
            resetStatistics(System.nanoTime());
        }
    }

    public void onFrame(VideoFrame videoFrame) {
        boolean z;
        synchronized (this.statisticsLock) {
            this.framesReceived++;
        }
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler == null) {
                logD("Dropping frame - Not initialized or already released.");
                return;
            }
            synchronized (this.frameLock) {
                VideoFrame videoFrame2 = this.pendingFrame;
                z = videoFrame2 != null;
                if (z) {
                    videoFrame2.release();
                }
                this.pendingFrame = videoFrame;
                videoFrame.retain();
            }
            ThreadUtils.invokeAtFrontUninterruptibly(this.renderThreadHandler, new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.7
                @Override // java.lang.Runnable
                public void run() {
                    EglRenderer.this.renderFrameOnRenderThread();
                }
            });
            if (!z) {
                return;
            }
            synchronized (this.statisticsLock) {
                this.framesDropped++;
            }
        }
    }

    public void pauseVideo() {
        setFpsReduction(0.0f);
    }

    public void printStackTrace() {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            Thread thread = handler == null ? null : handler.getLooper().getThread();
            if (thread != null) {
                StackTraceElement[] stackTrace = thread.getStackTrace();
                if (stackTrace.length > 0) {
                    logD("EglRenderer stack trace:");
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        logD(stackTraceElement.toString());
                    }
                }
            }
        }
    }

    public void release() {
        logD("Releasing.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                logD("Already released");
                return;
            }
            handler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.3
                @Override // java.lang.Runnable
                public void run() {
                    if (EglRenderer.this.drawer != null) {
                        EglRenderer.this.drawer.release();
                        EglRenderer.this.drawer = null;
                    }
                    EglRenderer.this.frameDrawer.release();
                    if (EglRenderer.this.eglBase != null) {
                        EglRenderer.this.logD("eglBase detach and release.");
                        EglRenderer.this.eglBase.detachCurrent();
                        EglRenderer.this.eglBase.release();
                        EglRenderer.this.eglBase = null;
                    }
                }
            });
            final Looper looper = this.renderThreadHandler.getLooper();
            this.renderThreadHandler.post(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.4
                @Override // java.lang.Runnable
                public void run() {
                    EglRenderer.this.logD("Quitting render thread.");
                    looper.quit();
                    countDownLatch.countDown();
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
            this.renderThreadHandler = null;
            synchronized (this.frameLock) {
                VideoFrame videoFrame = this.pendingFrame;
                if (videoFrame != null) {
                    videoFrame.release();
                    this.pendingFrame = null;
                }
            }
            logD("Releasing done.");
        }
    }

    public void releaseEglSurface(final Runnable runnable) {
        this.eglSurfaceCreationRunnable.setSurface(null);
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                runnable.run();
                return;
            }
            handler.removeCallbacks(this.eglSurfaceCreationRunnable);
            this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.8
                @Override // java.lang.Runnable
                public void run() {
                    if (EglRenderer.this.eglBase != null) {
                        EglRenderer.this.eglBase.detachCurrent();
                        EglRenderer.this.eglBase.releaseSurface();
                    }
                    runnable.run();
                }
            });
        }
    }

    public void removeFrameListener(final FrameListener frameListener) {
        if (Thread.currentThread() != this.renderThreadHandler.getLooper().getThread()) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            postToRenderThread(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.6
                @Override // java.lang.Runnable
                public void run() {
                    countDownLatch.countDown();
                    Iterator it = EglRenderer.this.frameListeners.iterator();
                    while (it.hasNext()) {
                        if (((FrameListenerAndParams) it.next()).listener == frameListener) {
                            it.remove();
                        }
                    }
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
            return;
        }
        throw new RuntimeException("removeFrameListener must not be called on the render thread.");
    }

    public void renderFrame(VideoFrame videoFrame) {
        onFrame(videoFrame);
    }

    public void setFpsReduction(float f) {
        logD("setFpsReduction: " + f);
        synchronized (this.fpsReductionLock) {
            long j = this.minRenderPeriodNs;
            if (f <= 0.0f) {
                this.minRenderPeriodNs = RecyclerView.FOREVER_NS;
            } else {
                this.minRenderPeriodNs = ((float) TimeUnit.SECONDS.toNanos(1L)) / f;
            }
            if (this.minRenderPeriodNs != j) {
                this.nextFrameTimeNs = System.nanoTime();
            }
        }
    }

    public void setLayoutAspectRatio(float f) {
        logD("setLayoutAspectRatio: " + f);
        synchronized (this.layoutLock) {
            this.layoutAspectRatio = f;
        }
    }

    public void setMirror(boolean z) {
        logD("setMirror: " + z);
        synchronized (this.layoutLock) {
            this.mirror = z;
        }
    }
}
