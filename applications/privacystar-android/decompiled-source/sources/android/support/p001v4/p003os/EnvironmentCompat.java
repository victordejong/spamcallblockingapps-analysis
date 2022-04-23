package android.support.p001v4.p003os;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
/* renamed from: android.support.v4.os.EnvironmentCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/EnvironmentCompat.class */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";
    private static final String TAG = "EnvironmentCompat";

    private EnvironmentCompat() {
    }

    public static String getStorageState(File file) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Environment.getStorageState(file);
        }
        try {
            return file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()) ? Environment.getExternalStorageState() : "unknown";
        } catch (IOException e) {
            Log.w(TAG, "Failed to resolve canonical path: " + e);
            return "unknown";
        }
    }
}
