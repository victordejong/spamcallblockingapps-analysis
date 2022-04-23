package com.callapp.contacts.manager;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppShortcutManager.class */
public class CallAppShortcutManager {
    private static void a(Context context, Intent intent, String str, int i) {
        intent.setAction("android.intent.action.MAIN");
        context.sendOrderedBroadcast(new Intent().putExtra("android.intent.extra.shortcut.INTENT", intent).putExtra("android.intent.extra.shortcut.NAME", str).putExtra("duplicate", false).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, i)).setAction("com.android.launcher.action.INSTALL_SHORTCUT"), null);
    }

    public static void a(Context context, Intent intent, String str, String str2, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
            if (shortcutManager == null || !shortcutManager.isRequestPinShortcutSupported()) {
                a(context, intent, str2, i);
                return;
            }
            ShortcutInfo build = new ShortcutInfo.Builder(context, str).setShortLabel(str).setLongLabel(str2).setIcon(Icon.createWithResource(context, i)).setIntent(intent).build();
            shortcutManager.requestPinShortcut(build, PendingIntent.getBroadcast(context, 0, shortcutManager.createShortcutResultIntent(build), 0).getIntentSender());
            return;
        }
        a(context, intent, str2, i);
    }
}
