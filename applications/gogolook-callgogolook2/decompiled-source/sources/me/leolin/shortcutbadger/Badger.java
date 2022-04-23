package me.leolin.shortcutbadger;

import android.content.ComponentName;
import android.content.Context;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/Badger.class */
public interface Badger {
    void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException;

    List<String> getSupportLaunchers();
}
