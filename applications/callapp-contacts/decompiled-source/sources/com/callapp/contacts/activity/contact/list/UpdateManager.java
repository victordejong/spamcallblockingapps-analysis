package com.callapp.contacts.activity.contact.list;

import android.app.Activity;
import android.content.IntentSender;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.google.android.play.core.appupdate.a;
import com.google.android.play.core.appupdate.c;
import com.google.android.play.core.appupdate.x;
import com.google.android.play.core.install.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/UpdateManager.class */
public class UpdateManager {
    public static void a(final Activity activity) {
        final c a2 = x.a(activity).f31072a.a();
        a2.a().a(new com.google.android.play.core.tasks.c() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I
            @Override // com.google.android.play.core.tasks.c
            public final void onSuccess(Object obj) {
                UpdateManager.a(activity, a2, (a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity, final c cVar, a aVar) {
        if (aVar.c() == 2) {
            if (aVar.b() - CallAppApplication.get().getVersionCode() >= CallAppRemoteConfigManager.get().b("UpdatedFromPlayDifference")) {
                AnalyticsManager.get().a(Constants.UPGRADE_VERSION, "ViewUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
                try {
                    cVar.a(new b() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$UpdateManager$V_aKy69aSH_A_zaokbHLHJzBaro
                        @Override // com.google.android.play.core.a.a
                        public final void onStateUpdate(com.google.android.play.core.install.a aVar2) {
                            UpdateManager.a(c.this, aVar2);
                        }
                    });
                    cVar.a(aVar, activity);
                } catch (IntentSender.SendIntentException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(c cVar, com.google.android.play.core.install.a aVar) {
        if (aVar.a() == 11) {
            AnalyticsManager.get().a(Constants.UPGRADE_VERSION, "StartUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            Prefs.gS.set(1);
            cVar.b();
        }
    }
}
