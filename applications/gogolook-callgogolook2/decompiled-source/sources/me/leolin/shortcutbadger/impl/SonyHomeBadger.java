package me.leolin.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/SonyHomeBadger.class */
public class SonyHomeBadger implements Badger {
    public static final String INTENT_ACTION = "com.sonyericsson.home.action.UPDATE_BADGE";
    public static final String INTENT_EXTRA_ACTIVITY_NAME = "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME";
    public static final String INTENT_EXTRA_MESSAGE = "com.sonyericsson.home.intent.extra.badge.MESSAGE";
    public static final String INTENT_EXTRA_PACKAGE_NAME = "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME";
    public static final String INTENT_EXTRA_SHOW_MESSAGE = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE";
    public static final String PROVIDER_COLUMNS_ACTIVITY_NAME = "activity_name";
    public static final String PROVIDER_COLUMNS_BADGE_COUNT = "badge_count";
    public static final String PROVIDER_COLUMNS_PACKAGE_NAME = "package_name";
    public static final String PROVIDER_CONTENT_URI = "content://com.sonymobile.home.resourceprovider/badge";
    public static final String SONY_HOME_PROVIDER_NAME = "com.sonymobile.home.resourceprovider";
    public final Uri BADGE_CONTENT_URI = Uri.parse(PROVIDER_CONTENT_URI);
    public AsyncQueryHandler mQueryHandler;

    private ContentValues createContentValues(int i, ComponentName componentName) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("badge_count", Integer.valueOf(i));
        contentValues.put("package_name", componentName.getPackageName());
        contentValues.put("activity_name", componentName.getClassName());
        return contentValues;
    }

    public static void executeBadgeByBroadcast(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent(INTENT_ACTION);
        intent.putExtra(INTENT_EXTRA_PACKAGE_NAME, componentName.getPackageName());
        intent.putExtra(INTENT_EXTRA_ACTIVITY_NAME, componentName.getClassName());
        intent.putExtra(INTENT_EXTRA_MESSAGE, String.valueOf(i));
        intent.putExtra(INTENT_EXTRA_SHOW_MESSAGE, i > 0);
        context.sendBroadcast(intent);
    }

    private void executeBadgeByContentProvider(Context context, ComponentName componentName, int i) {
        if (i >= 0) {
            ContentValues createContentValues = createContentValues(i, componentName);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                if (this.mQueryHandler == null) {
                    this.mQueryHandler = new AsyncQueryHandler(context.getApplicationContext().getContentResolver()) { // from class: me.leolin.shortcutbadger.impl.SonyHomeBadger.1
                    };
                }
                insertBadgeAsync(createContentValues);
                return;
            }
            insertBadgeSync(context, createContentValues);
        }
    }

    private void insertBadgeAsync(ContentValues contentValues) {
        this.mQueryHandler.startInsert(0, null, this.BADGE_CONTENT_URI, contentValues);
    }

    private void insertBadgeSync(Context context, ContentValues contentValues) {
        context.getApplicationContext().getContentResolver().insert(this.BADGE_CONTENT_URI, contentValues);
    }

    public static boolean sonyBadgeContentProviderExists(Context context) {
        boolean z = false;
        if (context.getPackageManager().resolveContentProvider(SONY_HOME_PROVIDER_NAME, 0) != null) {
            z = true;
        }
        return z;
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        if (sonyBadgeContentProviderExists(context)) {
            executeBadgeByContentProvider(context, componentName, i);
        } else {
            executeBadgeByBroadcast(context, componentName, i);
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Arrays.asList("com.sonyericsson.home", "com.sonymobile.home");
    }
}
