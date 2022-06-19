package com.callerid.block.util.p060x0;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
/* renamed from: com.callerid.block.util.x0.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/x0/b.class */
public class C1234b {
    /* renamed from: a */
    public static boolean m9501a(Context context) {
        String packageName = context.getPackageName();
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        return string != null ? string.contains(packageName) : false;
    }

    /* renamed from: b */
    public static void m9500b(Context context) {
        try {
            Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
            intent.addFlags(268435456);
            context.startActivity(intent);
            Toast.makeText(EZCallApplication.m10163c(), context.getResources().getString(R$string.notifi_toast), 1).show();
        } catch (ActivityNotFoundException e) {
            try {
                Intent intent2 = new Intent();
                intent2.addFlags(268435456);
                intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$NotificationAccessSettingsActivity"));
                intent2.putExtra(":settings:show_fragment", "NotificationAccessSettings");
                context.startActivity(intent2);
                Toast.makeText(EZCallApplication.m10163c(), context.getResources().getString(R$string.notifi_toast), 1).show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
