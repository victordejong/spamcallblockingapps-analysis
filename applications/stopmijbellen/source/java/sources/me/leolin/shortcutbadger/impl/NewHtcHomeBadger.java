package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.p012v4.media.C0082b;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
import p194o9.C3974a;
/* loaded from: classes2-dex2jar.jar:me/leolin/shortcutbadger/impl/NewHtcHomeBadger.class */
public class NewHtcHomeBadger implements AbstractC3676a {
    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Collections.singletonList("com.htc.launcher");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        boolean z;
        Intent intent = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
        intent.putExtra("com.htc.launcher.extra.COMPONENT", componentName.flattenToShortString());
        intent.putExtra("com.htc.launcher.extra.COUNT", i);
        Intent intent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
        intent2.putExtra("packagename", componentName.getPackageName());
        intent2.putExtra("count", i);
        boolean z2 = false;
        try {
            C3974a.m1583c(context, intent);
            z = true;
        } catch (ShortcutBadgeException e) {
            z = false;
        }
        try {
            C3974a.m1583c(context, intent2);
            z2 = true;
        } catch (ShortcutBadgeException e2) {
        }
        if (z || z2) {
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("unable to resolve intent: ");
        m8752j.append(intent2.toString());
        throw new ShortcutBadgeException(m8752j.toString());
    }
}
