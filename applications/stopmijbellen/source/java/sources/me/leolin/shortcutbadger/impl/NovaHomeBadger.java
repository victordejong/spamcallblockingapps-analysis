package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
/* loaded from: classes2-dex2jar.jar:me/leolin/shortcutbadger/impl/NovaHomeBadger.class */
public class NovaHomeBadger implements AbstractC3676a {
    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Arrays.asList("com.teslacoilsw.launcher");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tag", componentName.getPackageName() + "/" + componentName.getClassName());
        contentValues.put("count", Integer.valueOf(i));
        context.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), contentValues);
    }
}
