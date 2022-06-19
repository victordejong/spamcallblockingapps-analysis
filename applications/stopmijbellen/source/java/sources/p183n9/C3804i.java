package p183n9;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p172m9.AbstractC3676a;
/* renamed from: n9.i */
/* loaded from: classes2-dex2jar.jar:n9/i.class */
public class C3804i implements AbstractC3676a {

    /* renamed from: a */
    public final Uri f12281a = Uri.parse("content://com.android.badge/badge");

    @Override // p172m9.AbstractC3676a
    /* renamed from: a */
    public List<String> mo1786a() {
        return Collections.singletonList("com.zui.launcher");
    }

    @Override // p172m9.AbstractC3676a
    @TargetApi(11)
    /* renamed from: b */
    public void mo1785b(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i);
        context.getContentResolver().call(this.f12281a, "setAppBadgeCount", (String) null, bundle);
    }
}
