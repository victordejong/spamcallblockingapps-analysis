package androidx.core.content.p003pm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
/* renamed from: androidx.core.content.pm.ShortcutManagerCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutManagerCompat.class */
public class ShortcutManagerCompat {

    /* renamed from: androidx.core.content.pm.ShortcutManagerCompat$1 */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutManagerCompat$1.class */
    class C02001 extends BroadcastReceiver {

        /* renamed from: a */
        final /* synthetic */ IntentSender f2991a;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                this.f2991a.sendIntent(context, 0, null, null, null);
            } catch (IntentSender.SendIntentException e) {
            }
        }
    }

    private ShortcutManagerCompat() {
    }
}
