package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.CloseHelper;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/SamsungHomeBadger.class */
public class SamsungHomeBadger implements Badger {
    public static final String[] CONTENT_PROJECTION = {"_id", ApexHomeBadger.CLASS};
    public static final String CONTENT_URI = "content://com.sec.badge/apps?notify=true";
    public DefaultBadger defaultBadger;

    public SamsungHomeBadger() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.defaultBadger = new DefaultBadger();
        }
    }

    private ContentValues getContentValues(ComponentName componentName, int i, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(ApexHomeBadger.PACKAGENAME, componentName.getPackageName());
            contentValues.put(ApexHomeBadger.CLASS, componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i));
        return contentValues;
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        DefaultBadger defaultBadger = this.defaultBadger;
        if (defaultBadger == null || !defaultBadger.isSupported(context)) {
            Uri parse = Uri.parse(CONTENT_URI);
            ContentResolver contentResolver = context.getContentResolver();
            Cursor cursor = null;
            try {
                cursor = contentResolver.query(parse, CONTENT_PROJECTION, "package=?", new String[]{componentName.getPackageName()}, null);
                if (cursor != null) {
                    String className = componentName.getClassName();
                    boolean z = false;
                    while (cursor.moveToNext()) {
                        contentResolver.update(parse, getContentValues(componentName, i, false), "_id=?", new String[]{String.valueOf(cursor.getInt(0))});
                        if (className.equals(cursor.getString(cursor.getColumnIndex(ApexHomeBadger.CLASS)))) {
                            z = true;
                        }
                    }
                    if (!z) {
                        cursor = cursor;
                        contentResolver.insert(parse, getContentValues(componentName, i, true));
                    }
                }
            } finally {
                CloseHelper.close(cursor);
            }
        } else {
            this.defaultBadger.executeBadge(context, componentName, i);
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Arrays.asList("com.sec.android.app.launcher", "com.sec.android.app.twlauncher");
    }
}
