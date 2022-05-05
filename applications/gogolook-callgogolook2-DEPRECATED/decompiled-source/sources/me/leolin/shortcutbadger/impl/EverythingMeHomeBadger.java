package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/EverythingMeHomeBadger.class */
public class EverythingMeHomeBadger implements Badger {
    public static final String COLUMN_ACTIVITY_NAME = "activity_name";
    public static final String COLUMN_COUNT = "count";
    public static final String COLUMN_PACKAGE_NAME = "package_name";
    public static final String CONTENT_URI = "content://me.everything.badger/apps";

    @Override // me.leolin.shortcutbadger.Badger
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("package_name", componentName.getPackageName());
        contentValues.put("activity_name", componentName.getClassName());
        contentValues.put("count", Integer.valueOf(i));
        context.getContentResolver().insert(Uri.parse(CONTENT_URI), contentValues);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Arrays.asList("me.everything.launcher");
    }
}
