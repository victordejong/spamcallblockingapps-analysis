package com.millennialmedia.internal.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Vibrator;
import android.text.TextUtils;
import android.widget.Toast;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/Utils.class */
public class Utils {
    private static final String TAG = "Utils";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/Utils$VibrateListener.class */
    public interface VibrateListener {
        void onError();

        void onFinished();

        void onStarted();
    }

    public static String byteArrayToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(String.format("%02X", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    public static void injectIfNotNull(Map<String, Object> map, String str, Object obj) {
        if (str == null) {
            MMLog.m4068e(TAG, "Unable to inject value, specified key is null");
        } else if (obj == null) {
        } else {
            map.put(str, obj);
        }
    }

    public static boolean isActivityContext(Context context) {
        if (context == null) {
            return false;
        }
        Context context2 = context;
        if (context instanceof Activity) {
            return true;
        }
        while (context2 instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context2).getBaseContext();
            context2 = baseContext;
            if (baseContext instanceof Activity) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEmpty(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    public static boolean isPackageAvailable(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            EnvironmentUtils.getApplicationContext().getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean isSchemeAvailable(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String str2 = str;
        if (!str.contains(":")) {
            str2 = str + ":";
        }
        List<ResolveInfo> queryIntentActivities = EnvironmentUtils.getApplicationContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str2)), 65536);
        boolean z = false;
        if (queryIntentActivities != null) {
            z = false;
            if (queryIntentActivities.size() > 0) {
                z = true;
            }
        }
        return z;
    }

    public static void logAndFireMMException(String str, String str2) {
        MMLog.m4068e(str, str2);
        throw new MMException(str2);
    }

    public static void putIfNotNull(Map map, Object obj, Object obj2) {
        if (obj2 != null) {
            map.put(obj, obj2);
        }
    }

    public static void showToast(final Context context, final String str) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.Utils.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, str, 0).show();
            }
        });
    }

    public static List<String> splitCommaSeparateString(String str) {
        ArrayList arrayList = null;
        if (str != null) {
            arrayList = new ArrayList();
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (!arrayList.contains(trim)) {
                    arrayList.add(trim);
                }
            }
            if (arrayList.size() == 0) {
                arrayList = null;
            }
        }
        return arrayList;
    }

    public static boolean startActivity(Context context, Intent intent) {
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            String str = TAG;
            MMLog.m4068e(str, "Unable to start activity for intent: " + e.getMessage());
            return false;
        }
    }

    public static boolean startActivityFromUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            MMLog.m4068e(TAG, "Unable to start activity for null url");
            return false;
        }
        return startActivity(EnvironmentUtils.getApplicationContext(), new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public static String trimStringNotEmpty(String str) {
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return null;
            }
            return trim;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    public static void vibrate(long[] jArr, int i, final VibrateListener vibrateListener) {
        if (vibrateListener == null) {
            MMLog.m4068e(TAG, "Unable to call vibrate, provided listener cannot be null");
        } else if (!EnvironmentUtils.hasVibratePermission()) {
            MMLog.m4068e(TAG, "Unable to call vibrate, permission is not available");
            vibrateListener.onError();
        } else {
            ((Vibrator) EnvironmentUtils.getApplicationContext().getSystemService("vibrator")).vibrate(jArr, -1);
            vibrateListener.onStarted();
            char c = 0;
            for (long j : jArr) {
                c += j;
            }
            ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.utils.Utils.2
                @Override // java.lang.Runnable
                public void run() {
                    vibrateListener.onFinished();
                }
            }, c);
        }
    }
}
