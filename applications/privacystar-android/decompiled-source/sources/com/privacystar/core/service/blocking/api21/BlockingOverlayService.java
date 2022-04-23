package com.privacystar.core.service.blocking.api21;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.PermissionUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/api21/BlockingOverlayService.class */
public class BlockingOverlayService extends Service {
    public static final String EXTRA_BLOCK_IMMEDIATELY = "block";
    private static int SERVICE_ID = 9902;
    private static BlockingOverlayView blockingOverlayView;
    private static BlockingOverlayService instance;
    private static final Object overlayViewLock = new Object();
    private static boolean showing = false;
    protected boolean cancelNotification = false;

    public static void blockCall() {
        BlockingOverlayView overlayView = getOverlayView();
        overlayView.enableBlockingMode();
        overlayView.show();
        overlayView.requestFocus();
    }

    public static void disableBlockingMode() {
        synchronized (BlockingOverlayService.class) {
            try {
                BlockingOverlayView overlayView = getOverlayView();
                if (overlayView != null) {
                    overlayView.disableBlockingMode();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void emergencyStop() {
        if (getOverlayView() != null) {
            Timber.m37d("OverlayView stopped.", new Object[0]);
            getOverlayView().emergencyStop();
            return;
        }
        Timber.m37d("Emergency stop requested for OverlayView, but no view can be found.", new Object[0]);
    }

    public static void enableBlockingMode() {
        synchronized (BlockingOverlayService.class) {
            try {
                BlockingOverlayView overlayView = getOverlayView();
                if (overlayView != null) {
                    overlayView.enableBlockingMode();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static BlockingOverlayService getInstance() {
        return instance;
    }

    public static BlockingOverlayView getOverlayView() {
        BlockingOverlayView blockingOverlayView2;
        synchronized (overlayViewLock) {
            blockingOverlayView2 = blockingOverlayView;
        }
        return blockingOverlayView2;
    }

    public static boolean isShowing() {
        boolean z;
        synchronized (overlayViewLock) {
            Timber.m28v("isShowing called: [%b]", Boolean.valueOf(showing));
            z = showing;
        }
        return z;
    }

    private static void setInstance(BlockingOverlayService blockingOverlayService) {
        instance = blockingOverlayService;
    }

    public static void setIsShowing(boolean z) {
        synchronized (overlayViewLock) {
            showing = z;
        }
    }

    private static void setOverlayView(BlockingOverlayView blockingOverlayView2) {
        synchronized (overlayViewLock) {
            blockingOverlayView = blockingOverlayView2;
        }
    }

    protected Notification foregroundNotification(int i) {
        return null;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(SERVICE_ID, NotificationUtil.createOverlayNotification(this, PreferenceUtil.getLastIncomingCall()));
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        setIsShowing(false);
        BlockingOverlayView overlayView = getOverlayView();
        if (overlayView != null) {
            overlayView.destroy();
            setOverlayView(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Timber.m31i("Start Command.", new Object[0]);
        boolean checkPermission = PermissionUtils.checkPermission(this, "android.permission.SYSTEM_ALERT_WINDOW");
        Timber.m28v("hasOverlayPermission: [%b]", Boolean.valueOf(checkPermission));
        if (checkPermission) {
            setIsShowing(true);
            setInstance(this);
            BlockingOverlayView blockingOverlayView2 = new BlockingOverlayView(this);
            setOverlayView(blockingOverlayView2);
            blockingOverlayView2.disableBlockingMode();
            blockingOverlayView2.hide();
            blockingOverlayView2.clearFocus();
            if (intent == null || !intent.hasExtra(EXTRA_BLOCK_IMMEDIATELY)) {
                return 1;
            }
            Timber.m28v("Found extra: [BLOCK_IMMEDIATELY]", new Object[0]);
            enableBlockingMode();
            blockCall();
            return 1;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
        return 2;
    }
}
