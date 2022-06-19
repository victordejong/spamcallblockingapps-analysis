package com.huawei.hms.common.internal;

import android.app.Activity;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/ConnectionErrorMessages.class */
public class ConnectionErrorMessages {
    private static final Map<String, String> MAP = new HashMap();

    public static String getErrorDialogButtonMessage(Activity activity, int i) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        return i != 1 ? i != 2 ? ResourceLoaderUtil.getString("hms_confirm") : ResourceLoaderUtil.getString("hms_update") : ResourceLoaderUtil.getString("hms_install");
    }

    public static String getErrorMessage(Activity activity, int i) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        String string = ResourceLoaderUtil.getString("hms_update_title");
        String str = string;
        if (i != 1) {
            str = string;
            if (i != 2) {
                str = null;
            }
        }
        return str;
    }

    public static String getErrorTitle(Activity activity, int i) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        if (i != 1) {
            if (i == 2) {
                return ResourceLoaderUtil.getString("hms_update_message");
            }
            if (i == 3) {
                return ResourceLoaderUtil.getString("hms_bindfaildlg_message");
            }
            if (i == 9) {
                HMSLog.m37195e("HuaweiApiAvailability", "Huawei Mobile Services is invalid. Cannot recover.");
                return null;
            }
            HMSLog.m37195e("HuaweiApiAvailability", "Unexpected error code " + i);
            return null;
        }
        return ResourceLoaderUtil.getString("hms_install_message");
    }
}
