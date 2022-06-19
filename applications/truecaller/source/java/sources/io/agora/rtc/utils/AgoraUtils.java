package io.agora.rtc.utils;

import android.content.Context;
import android.view.WindowManager;
import io.agora.rtc.internal.RtcEngineImpl;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/utils/AgoraUtils.class */
public class AgoraUtils {
    private static final String TAG = "AgoraUtils";

    public static boolean ensureNativeLibsInitialized() {
        return RtcEngineImpl.initializeNativeLibs();
    }

    public static int getDisplayRotation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation != 1) {
            if (rotation == 2) {
                return 180;
            }
            return rotation != 3 ? 0 : 270;
        }
        return 90;
    }

    public static int getFrameOrientation(int i, int i2, boolean z, boolean z2) {
        int i3;
        if (z) {
            int i4 = (i2 + i) % 360;
            i3 = i4;
            if (z2) {
                i3 = (360 - i4) % 360;
            }
        } else {
            i3 = ((i2 - i) + 360) % 360;
        }
        return i3;
    }
}
