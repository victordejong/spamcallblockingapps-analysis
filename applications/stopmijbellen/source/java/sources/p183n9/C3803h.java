package p183n9;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
/* renamed from: n9.h */
/* loaded from: classes2-dex2jar.jar:n9/h.class */
public class C3803h implements AbstractC3676a {
    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return new ArrayList(0);
    }

    @Override // p172m9.AbstractC3676a
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i);
        bundle.putString("app_badge_component_name", componentName.flattenToString());
        context.getContentResolver().call(Uri.parse("content://com.android.launcher3.cornermark.unreadbadge"), "setAppUnreadCount", (String) null, bundle);
    }
}
