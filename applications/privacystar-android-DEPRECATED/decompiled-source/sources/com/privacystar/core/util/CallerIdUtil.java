package com.privacystar.core.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import com.privacystar.core.p011ui.call_center.CallCenterService;
import com.privacystar.core.service.CallerIDService;
import com.privacystar.core.service.PreferenceUtil;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallerIdUtil.class */
public class CallerIdUtil {
    public static void launchCallerId(Context context, String str) {
        Timber.m28v("Custom processing on number: '%s'", str);
        if (str != null) {
            if (!PreferenceUtil.getIsCallCenterEnabled()) {
                Timber.m37d("Call Center prevented from starting because it is disabled in settings.", new Object[0]);
            } else if (!PreferenceUtil.getEulaAccepted()) {
                Timber.m37d("Call Center prevented from starting because EULA is not accepted.", new Object[0]);
            } else if (!CallerIDService.isCallCenterFeatureAvailable(str)) {
                Timber.m37d("Call Center prevented from starting because this feature is not available for this number.", new Object[0]);
            } else if (Build.VERSION.SDK_INT < 23) {
                startCallCenterImpl(context, str);
            } else if (!Settings.canDrawOverlays(context)) {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
                intent.addFlags(268435456);
                context.startActivity(intent);
            } else {
                startCallCenterImpl(context, str);
            }
        }
    }

    private static void startCallCenterImpl(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(CallCenterService.getIntent(str, context));
        } else {
            context.startService(CallCenterService.getIntent(str, context));
        }
    }
}
