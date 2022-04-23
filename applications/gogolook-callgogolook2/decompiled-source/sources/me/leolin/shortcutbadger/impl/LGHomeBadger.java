package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.BroadcastHelper;
@Deprecated
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/LGHomeBadger.class */
public class LGHomeBadger implements Badger {
    public static final String INTENT_ACTION = "android.intent.action.BADGE_COUNT_UPDATE";
    public static final String INTENT_EXTRA_ACTIVITY_NAME = "badge_count_class_name";
    public static final String INTENT_EXTRA_BADGE_COUNT = "badge_count";
    public static final String INTENT_EXTRA_PACKAGENAME = "badge_count_package_name";

    @Override // me.leolin.shortcutbadger.Badger
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i);
        intent.putExtra("badge_count_package_name", componentName.getPackageName());
        intent.putExtra("badge_count_class_name", componentName.getClassName());
        if (BroadcastHelper.canResolveBroadcast(context, intent)) {
            context.sendBroadcast(intent);
            return;
        }
        throw new ShortcutBadgeException("unable to resolve intent: " + intent.toString());
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Arrays.asList("com.lge.launcher", "com.lge.launcher2");
    }
}
