package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.Util;
import org.checkerframework.checker.nullness.qual.MonotonicNonNull;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final DummySurfaceThread thread;
    private boolean threadReleased;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$DummySurfaceThread.class */
    public static class DummySurfaceThread extends HandlerThread implements Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 2;
        @MonotonicNonNull
        private EGLSurfaceTexture eglSurfaceTexture;
        @MonotonicNonNull
        private Handler handler;
        private Error initError;
        private RuntimeException initException;
        private DummySurface surface;

        public DummySurfaceThread() {
            super("dummySurface");
        }

        private void initInternal(int i) {
            Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i);
            this.surface = new DummySurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i != 0);
        }

        private void releaseInternal() {
            Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        releaseInternal();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    initInternal(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e);
                    this.initError = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                    this.initException = e2;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                }
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }

        public DummySurface init(int i) {
            boolean z;
            start();
            this.handler = new Handler(getLooper(), this);
            this.eglSurfaceTexture = new EGLSurfaceTexture(this.handler);
            synchronized (this) {
                this.handler.obtainMessage(1, i, 0).sendToTarget();
                z = false;
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.initException;
            if (runtimeException == null) {
                Error error = this.initError;
                if (error != null) {
                    throw error;
                }
                return (DummySurface) Assertions.checkNotNull(this.surface);
            }
            throw runtimeException;
        }

        public void release() {
            Assertions.checkNotNull(this.handler);
            this.handler.sendEmptyMessage(2);
        }
    }

    private DummySurface(DummySurfaceThread dummySurfaceThread, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = dummySurfaceThread;
        this.secure = z;
    }

    private static void assertApiLevel17OrHigher() {
        if (Util.SDK_INT >= 17) {
            return;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @TargetApi(24)
    private static int getSecureModeV24(Context context) {
        String eglQueryString;
        int i = Util.SDK_INT;
        if (i >= 26 || (!"samsung".equals(Util.MANUFACTURER) && !"XT1650".equals(Util.MODEL))) {
            if ((i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains(EXTENSION_PROTECTED_CONTENT)) {
                return 0;
            }
            return eglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT) ? 1 : 2;
        }
        return 0;
    }

    public static boolean isSecureSupported(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!secureModeInitialized) {
                    secureMode = Util.SDK_INT < 24 ? 0 : getSecureModeV24(context);
                    secureModeInitialized = true;
                }
                if (secureMode == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static DummySurface newInstanceV17(Context context, boolean z) {
        assertApiLevel17OrHigher();
        int i = 0;
        Assertions.checkState(!z || isSecureSupported(context));
        DummySurfaceThread dummySurfaceThread = new DummySurfaceThread();
        if (z) {
            i = secureMode;
        }
        return dummySurfaceThread.init(i);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.release();
                this.threadReleased = true;
            }
        }
    }
}
