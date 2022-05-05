package androidx.media2.exoplayer.external.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper.class */
public final class VideoFrameReleaseTimeHelper {
    public static final long CHOREOGRAPHER_SAMPLE_DELAY_MILLIS = 500;
    public static final long MAX_ALLOWED_DRIFT_NS = 20000000;
    public static final int MIN_FRAMES_FOR_ADJUSTMENT = 6;
    public static final long VSYNC_OFFSET_PERCENTAGE = 80;
    public long adjustedLastFrameTimeNs;
    public final DefaultDisplayListener displayListener;
    public long frameCount;
    public boolean haveSync;
    public long lastFramePresentationTimeUs;
    public long pendingAdjustedFrameTimeNs;
    public long syncFramePresentationTimeNs;
    public long syncUnadjustedReleaseTimeNs;
    public long vsyncDurationNs;
    public long vsyncOffsetNs;
    public final VSyncSampler vsyncSampler;
    public final WindowManager windowManager;

    @TargetApi(17)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener.class */
    public final class DefaultDisplayListener implements DisplayManager.DisplayListener {
        public final DisplayManager displayManager;

        public DefaultDisplayListener(DisplayManager displayManager) {
            this.displayManager = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                VideoFrameReleaseTimeHelper.this.updateDefaultDisplayRefreshRateParams();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        public void register() {
            this.displayManager.registerDisplayListener(this, null);
        }

        public void unregister() {
            this.displayManager.unregisterDisplayListener(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler.class */
    public static final class VSyncSampler implements Choreographer.FrameCallback, Handler.Callback {
        public static final int CREATE_CHOREOGRAPHER = 0;
        public static final VSyncSampler INSTANCE = new VSyncSampler();
        public static final int MSG_ADD_OBSERVER = 1;
        public static final int MSG_REMOVE_OBSERVER = 2;
        public Choreographer choreographer;
        public int observerCount;
        public volatile long sampledVsyncTimeNs = C0463C.TIME_UNSET;
        public final HandlerThread choreographerOwnerThread = new HandlerThread("ChoreographerOwner:Handler");
        public final Handler handler = Util.createHandler(this.choreographerOwnerThread.getLooper(), this);

        public VSyncSampler() {
            this.choreographerOwnerThread.start();
            this.handler.sendEmptyMessage(0);
        }

        private void addObserverInternal() {
            this.observerCount++;
            if (this.observerCount == 1) {
                this.choreographer.postFrameCallback(this);
            }
        }

        private void createChoreographerInstanceInternal() {
            this.choreographer = Choreographer.getInstance();
        }

        public static VSyncSampler getInstance() {
            return INSTANCE;
        }

        private void removeObserverInternal() {
            this.observerCount--;
            if (this.observerCount == 0) {
                this.choreographer.removeFrameCallback(this);
                this.sampledVsyncTimeNs = C0463C.TIME_UNSET;
            }
        }

        public void addObserver() {
            this.handler.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.sampledVsyncTimeNs = j;
            this.choreographer.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                createChoreographerInstanceInternal();
                return true;
            } else if (i == 1) {
                addObserverInternal();
                return true;
            } else if (i != 2) {
                return false;
            } else {
                removeObserverInternal();
                return true;
            }
        }

        public void removeObserver() {
            this.handler.sendEmptyMessage(2);
        }
    }

    public VideoFrameReleaseTimeHelper() {
        this(null);
    }

    public VideoFrameReleaseTimeHelper(@Nullable Context context) {
        DefaultDisplayListener defaultDisplayListener = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.windowManager = (WindowManager) context.getSystemService("window");
        } else {
            this.windowManager = null;
        }
        if (this.windowManager != null) {
            this.displayListener = Util.SDK_INT >= 17 ? maybeBuildDefaultDisplayListenerV17(context) : defaultDisplayListener;
            this.vsyncSampler = VSyncSampler.getInstance();
        } else {
            this.displayListener = null;
            this.vsyncSampler = null;
        }
        this.vsyncDurationNs = C0463C.TIME_UNSET;
        this.vsyncOffsetNs = C0463C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long closestVsync(long r7, long r9, long r11) {
        /*
            r0 = r9
            r1 = r7
            r2 = r9
            long r1 = r1 - r2
            r2 = r11
            long r1 = r1 / r2
            r2 = r11
            long r1 = r1 * r2
            long r0 = r0 + r1
            r9 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0021
            r0 = r9
            r1 = r11
            long r0 = r0 - r1
            r13 = r0
            r0 = r9
            r11 = r0
            r0 = r13
            r9 = r0
            goto L_0x0027
        L_0x0021:
            r0 = r11
            r1 = r9
            long r0 = r0 + r1
            r11 = r0
        L_0x0027:
            r0 = r11
            r1 = r7
            long r0 = r0 - r1
            r1 = r7
            r2 = r9
            long r1 = r1 - r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0035
            goto L_0x0038
        L_0x0035:
            r0 = r9
            r11 = r0
        L_0x0038:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.VideoFrameReleaseTimeHelper.closestVsync(long, long, long):long");
    }

    private boolean isDriftTooLarge(long j, long j2) {
        return Math.abs((j2 - this.syncUnadjustedReleaseTimeNs) - (j - this.syncFramePresentationTimeNs)) > MAX_ALLOWED_DRIFT_NS;
    }

    @TargetApi(17)
    private DefaultDisplayListener maybeBuildDefaultDisplayListenerV17(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        return displayManager == null ? null : new DefaultDisplayListener(displayManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDefaultDisplayRefreshRateParams() {
        Display defaultDisplay = this.windowManager.getDefaultDisplay();
        if (defaultDisplay != null) {
            this.vsyncDurationNs = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.vsyncOffsetNs = (this.vsyncDurationNs * 80) / 100;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media2.exoplayer.external.video.VideoFrameReleaseTimeHelper] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long adjustReleaseTime(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.VideoFrameReleaseTimeHelper.adjustReleaseTime(long, long):long");
    }

    public void disable() {
        if (this.windowManager != null) {
            DefaultDisplayListener defaultDisplayListener = this.displayListener;
            if (defaultDisplayListener != null) {
                defaultDisplayListener.unregister();
            }
            this.vsyncSampler.removeObserver();
        }
    }

    public void enable() {
        this.haveSync = false;
        if (this.windowManager != null) {
            this.vsyncSampler.addObserver();
            DefaultDisplayListener defaultDisplayListener = this.displayListener;
            if (defaultDisplayListener != null) {
                defaultDisplayListener.register();
            }
            updateDefaultDisplayRefreshRateParams();
        }
    }
}
