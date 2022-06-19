package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
import p194o9.C3974a;
/* loaded from: classes2-dex2jar.jar:me/leolin/shortcutbadger/impl/ApexHomeBadger.class */
public class ApexHomeBadger implements AbstractC3676a {
    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Arrays.asList("com.anddoes.launcher");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra("package", componentName.getPackageName());
        intent.putExtra("count", i);
        intent.putExtra("class", componentName.getClassName());
        C3974a.m1583c(context, intent);
    }
}
