package androidx.core.p004os;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
/* renamed from: androidx.core.os.EnvironmentCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/EnvironmentCompat.class */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";
    private static final String TAG = "EnvironmentCompat";

    private EnvironmentCompat() {
    }

    public static String getStorageState(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Environment.getExternalStorageState(file);
        }
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
