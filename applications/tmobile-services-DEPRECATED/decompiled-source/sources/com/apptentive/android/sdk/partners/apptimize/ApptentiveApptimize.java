package com.apptentive.android.sdk.partners.apptimize;

import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.util.Invocation;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/partners/apptimize/ApptentiveApptimize.class */
public class ApptentiveApptimize {
    @Nullable
    public static String getLibraryVersion() {
        return "3.0.0";
    }

    @Nullable
    public static Map<String, ApptentiveApptimizeTestInfo> getTestInfo() {
        try {
            Map map = (Map) Invocation.fromClass("com.apptimize.Apptimize").invokeMethod("getTestInfo", Map.class);
            if (map == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Invocation fromObject = Invocation.fromObject(entry.getValue());
                hashMap.put(str, new ApptentiveApptimizeTestInfo(fromObject.invokeStringMethod("getTestName"), fromObject.invokeStringMethod("getEnrolledVariantName"), fromObject.invokeBooleanMethod("userHasParticipated")));
            }
            return hashMap;
        } catch (Exception e) {
            ApptentiveLog.m15644e(ApptentiveLogTag.PARTNERS, "Error while getting Apptimize experiment info: %s", e.getMessage());
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public static boolean isApptimizeSDKAvailable() {
        return RuntimeUtils.classExists("com.apptimize.Apptimize");
    }

    public static boolean isSupportedLibraryVersion() {
        String libraryVersion = getLibraryVersion();
        boolean z = false;
        if (libraryVersion == null) {
            return false;
        }
        String[] split = libraryVersion.split("\\.");
        if (split.length != 3) {
            return false;
        }
        if (StringUtils.parseInt(split[0], 0) >= 3) {
            z = true;
        }
        return z;
    }
}
