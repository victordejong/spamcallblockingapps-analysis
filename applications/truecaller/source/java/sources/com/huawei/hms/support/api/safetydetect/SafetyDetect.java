package com.huawei.hms.support.api.safetydetect;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.utils.Checker;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/safetydetect/SafetyDetect.class */
public class SafetyDetect {
    public static SafetyDetectClient getClient(Activity activity) {
        Checker.assertNonNull(activity);
        return new b(activity, new d());
    }

    public static SafetyDetectClient getClient(Context context) {
        Checker.assertNonNull(context);
        return new b(context, new d());
    }
}
