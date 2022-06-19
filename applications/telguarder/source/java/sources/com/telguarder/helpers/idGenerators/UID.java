package com.telguarder.helpers.idGenerators;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/idGenerators/UID.class */
public class UID {
    private static String createUid(Context context, boolean z) {
        String deviceId;
        String SHA1;
        synchronized (UID.class) {
            if (z) {
                try {
                    deviceId = AppUtil.getDeviceId(context);
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                deviceId = null;
            }
            if (TextUtils.isEmpty(deviceId)) {
                deviceId = randomId();
                PreferencesManager.getInstance().saveUidWasRandom(true);
            } else {
                PreferencesManager.getInstance().saveUidWasRandom(false);
            }
            SHA1 = Sha1Converter.SHA1(deviceId);
        }
        return SHA1;
    }

    public static boolean needsUidUpgrade(Context context) {
        if (Build.VERSION.SDK_INT < 23 || Build.VERSION.SDK_INT >= 28 || !PreferencesManager.getInstance().getUidWasRandom()) {
            return false;
        }
        try {
            return ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static String randomId() {
        int nextInt;
        synchronized (UID.class) {
            try {
                nextInt = new Random().nextInt(Integer.MAX_VALUE);
            } catch (Throwable th) {
                throw th;
            }
        }
        return String.valueOf(nextInt);
    }

    public static String uid(Context context) {
        String uid;
        synchronized (UID.class) {
            try {
                uid = uid(context, true);
            } catch (Throwable th) {
                throw th;
            }
        }
        return uid;
    }

    public static String uid(Context context, boolean z) {
        String str;
        synchronized (UID.class) {
            try {
                String uid = needsUidUpgrade(context) ? null : PreferencesManager.getInstance().getUid();
                str = uid;
                if (TextUtils.isEmpty(uid)) {
                    str = createUid(context, z);
                    PreferencesManager.getInstance().saveUid(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static void upgradeUid(Context context) {
        upgradeUid(context, true);
    }

    public static void upgradeUid(Context context, boolean z) {
        PreferencesManager.getInstance().saveUid(createUid(context, z));
    }
}
