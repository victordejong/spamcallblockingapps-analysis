package me.leolin.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/ZukHomeBadger.class */
public class ZukHomeBadger implements Badger {
    public final Uri CONTENT_URI = Uri.parse(OPPOHomeBader.PROVIDER_CONTENT_URI);

    @Override // me.leolin.shortcutbadger.Badger
    @TargetApi(11)
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt(OPPOHomeBader.INTENT_EXTRA_BADGEUPGRADE_COUNT, i);
        context.getContentResolver().call(this.CONTENT_URI, "setAppBadgeCount", (String) null, bundle);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Collections.singletonList("com.zui.launcher");
    }
}
