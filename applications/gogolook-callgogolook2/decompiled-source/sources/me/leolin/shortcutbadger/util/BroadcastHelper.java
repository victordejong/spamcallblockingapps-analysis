package me.leolin.shortcutbadger.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/util/BroadcastHelper.class */
public class BroadcastHelper {
    public static boolean canResolveBroadcast(Context context, Intent intent) {
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        boolean z = false;
        if (queryBroadcastReceivers != null) {
            z = false;
            if (queryBroadcastReceivers.size() > 0) {
                z = true;
            }
        }
        return z;
    }
}
