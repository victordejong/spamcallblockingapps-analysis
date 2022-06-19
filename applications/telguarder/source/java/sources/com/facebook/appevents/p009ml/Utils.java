package com.facebook.appevents.p009ml;

import android.text.TextUtils;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.File;
import java.nio.charset.Charset;
/* renamed from: com.facebook.appevents.ml.Utils */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/Utils.class */
public class Utils {
    private static final String DIR_NAME = "facebook_ml/";

    public static File getMlDir() {
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            File file = new File(FacebookSdk.getApplicationContext().getFilesDir(), DIR_NAME);
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utils.class);
            return null;
        }
    }

    static String normalizeString(String str) {
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            return TextUtils.join(" ", str.trim().split("\\s+"));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utils.class);
            return null;
        }
    }

    public static int[] vectorize(String str, int i) {
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            int[] iArr = new int[i];
            byte[] bytes = normalizeString(str).getBytes(Charset.forName(POBCommonConstants.URL_ENCODING));
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 < bytes.length) {
                    iArr[i2] = bytes[i2] & 255;
                } else {
                    iArr[i2] = 0;
                }
            }
            return iArr;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utils.class);
            return null;
        }
    }
}
