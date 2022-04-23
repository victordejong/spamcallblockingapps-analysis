package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/HardwareConfigState.class */
final class HardwareConfigState {
    private static final File FD_SIZE_LIST = new File("/proc/self/fd");
    private static final int MAXIMUM_FDS_FOR_HARDWARE_CONFIGS = 700;
    private static final int MINIMUM_DECODES_BETWEEN_FD_CHECKS = 50;
    private static final int MIN_HARDWARE_DIMENSION = 128;
    private static volatile HardwareConfigState instance;
    private volatile int decodesSinceLastFdCheck;
    private volatile boolean isHardwareConfigAllowed = true;

    private HardwareConfigState() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HardwareConfigState getInstance() {
        if (instance == null) {
            synchronized (HardwareConfigState.class) {
                try {
                    if (instance == null) {
                        instance = new HardwareConfigState();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private boolean isFdSizeBelowHardwareLimit() {
        boolean z;
        synchronized (this) {
            int i = this.decodesSinceLastFdCheck + 1;
            this.decodesSinceLastFdCheck = i;
            if (i >= 50) {
                boolean z2 = false;
                this.decodesSinceLastFdCheck = 0;
                int length = FD_SIZE_LIST.list().length;
                if (length < MAXIMUM_FDS_FOR_HARDWARE_CONFIGS) {
                    z2 = true;
                }
                this.isHardwareConfigAllowed = z2;
                if (!this.isHardwareConfigAllowed && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + MAXIMUM_FDS_FOR_HARDWARE_CONFIGS);
                }
            }
            z = this.isHardwareConfigAllowed;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(26)
    public boolean setHardwareConfigIfAllowed(int i, int i2, BitmapFactory.Options options, DecodeFormat decodeFormat, boolean z, boolean z2) {
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            return false;
        }
        boolean z3 = i >= 128 && i2 >= 128 && isFdSizeBelowHardwareLimit();
        if (z3) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return z3;
    }
}
