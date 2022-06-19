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
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
import p183n9.C3801f;
/* loaded from: classes2-dex2jar.jar:me/leolin/shortcutbadger/impl/SonyHomeBadger.class */
public class SonyHomeBadger implements AbstractC3676a {

    /* renamed from: a */
    public final Uri f12048a = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");

    /* renamed from: b */
    public AsyncQueryHandler f12049b;

    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Arrays.asList("com.sonyericsson.home", "com.sonymobile.home");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        boolean z = false;
        if (!(context.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) != null)) {
            Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
            intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
            intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
            intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
            if (i > 0) {
                z = true;
            }
            intent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", z);
            context.sendBroadcast(intent);
        } else if (i < 0) {
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("badge_count", Integer.valueOf(i));
            contentValues.put("package_name", componentName.getPackageName());
            contentValues.put("activity_name", componentName.getClassName());
            if (Looper.myLooper() != Looper.getMainLooper()) {
                context.getApplicationContext().getContentResolver().insert(this.f12048a, contentValues);
                return;
            }
            if (this.f12049b == null) {
                this.f12049b = new C3801f(this, context.getApplicationContext().getContentResolver());
            }
            this.f12049b.startInsert(0, null, this.f12048a, contentValues);
        }
    }
}
