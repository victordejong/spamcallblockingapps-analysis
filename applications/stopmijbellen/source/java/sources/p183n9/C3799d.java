package p183n9;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
/* renamed from: n9.d */
/* loaded from: classes2-dex2jar.jar:n9/d.class */
public class C3799d implements AbstractC3676a {

    /* renamed from: a */
    public int f12278a = -1;

    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Collections.singletonList("com.oppo.launcher");
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        if (this.f12278a == i) {
            return;
        }
        this.f12278a = i;
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("app_badge_count", i);
            context.getContentResolver().call(Uri.parse("content://com.android.badge/badge"), "setAppBadgeCount", (String) null, bundle);
        } catch (Throwable th) {
            throw new ShortcutBadgeException("Unable to execute Badge By Content Provider");
        }
    }
}
