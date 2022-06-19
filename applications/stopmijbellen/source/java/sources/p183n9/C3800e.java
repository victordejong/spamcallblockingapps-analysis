package p183n9;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.impl.DefaultBadger;
import p172m9.AbstractC3676a;
import p194o9.C3974a;
/* renamed from: n9.e */
/* loaded from: classes2-dex2jar.jar:n9/e.class */
public class C3800e implements AbstractC3676a {

    /* renamed from: b */
    public static final String[] f12279b = {"_id", "class"};

    /* renamed from: a */
    public DefaultBadger f12280a = new DefaultBadger();

    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Arrays.asList("com.sec.android.app.launcher", "com.sec.android.app.twlauncher");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        if (this.f12280a != null) {
            if (C3974a.m1585a(context, new Intent("android.intent.action.BADGE_COUNT_UPDATE")).size() > 0 || (Build.VERSION.SDK_INT >= 26 && C3974a.m1585a(context, new Intent("me.leolin.shortcutbadger.BADGE_COUNT_UPDATE")).size() > 0)) {
                this.f12280a.mo1785b(context, componentName, i);
                return;
            }
        }
        Uri parse = Uri.parse("content://com.sec.badge/apps?notify=true");
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            Cursor query = contentResolver.query(parse, f12279b, "package=?", new String[]{componentName.getPackageName()}, null);
            if (query != null) {
                String className = componentName.getClassName();
                boolean z = false;
                while (query.moveToNext()) {
                    contentResolver.update(parse, m1787c(componentName, i, false), "_id=?", new String[]{String.valueOf(query.getInt(0))});
                    if (className.equals(query.getString(query.getColumnIndex("class")))) {
                        z = true;
                    }
                }
                if (!z) {
                    cursor = query;
                    contentResolver.insert(parse, m1787c(componentName, i, true));
                }
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final ContentValues m1787c(ComponentName componentName, int i, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("package", componentName.getPackageName());
            contentValues.put("class", componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i));
        return contentValues;
    }
}
