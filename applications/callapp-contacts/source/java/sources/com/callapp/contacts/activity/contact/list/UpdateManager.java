package com.callapp.contacts.activity.contact.list;

import android.app.Activity;
import android.content.IntentSender;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.google.android.play.core.appupdate.AbstractC14872a;
import com.google.android.play.core.appupdate.AbstractC14874c;
import com.google.android.play.core.appupdate.C14896x;
import com.google.android.play.core.install.AbstractC15005a;
import com.google.android.play.core.install.AbstractC15006b;
import com.google.android.play.core.tasks.AbstractC15179c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/UpdateManager.class */
public class UpdateManager {
    /* renamed from: a */
    public static void m30521a(final Activity activity) {
        final AbstractC14874c mo9335a = C14896x.m9793a(activity).f54358a.mo9335a();
        mo9335a.mo9826a().mo9318a(new AbstractC15179c() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I
            @Override // com.google.android.play.core.tasks.AbstractC15179c
            public final void onSuccess(Object obj) {
                UpdateManager.m30520a(activity, mo9335a, (AbstractC14872a) obj);
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m30520a(Activity activity, final AbstractC14874c abstractC14874c, AbstractC14872a abstractC14872a) {
        if (abstractC14872a.mo9809c() == 2) {
            if (abstractC14872a.mo9810b() - CallAppApplication.get().getVersionCode() < CallAppRemoteConfigManager.get().m28699b("UpdatedFromPlayDifference")) {
                return;
            }
            AnalyticsManager.get().m28449a(Constants.UPGRADE_VERSION, "ViewUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            try {
                abstractC14874c.mo9824a(new AbstractC15006b() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$UpdateManager$V_aKy69aSH_A_zaokbHLHJzBaro
                    @Override // com.google.android.play.core.p377a.AbstractC14869a
                    public final void onStateUpdate(AbstractC15005a abstractC15005a) {
                        UpdateManager.m30519a(AbstractC14874c.this, abstractC15005a);
                    }
                });
                abstractC14874c.mo9825a(abstractC14872a, activity);
            } catch (IntentSender.SendIntentException e) {
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m30519a(AbstractC14874c abstractC14874c, AbstractC15005a abstractC15005a) {
        if (abstractC15005a.mo9629a() == 11) {
            AnalyticsManager.get().m28449a(Constants.UPGRADE_VERSION, "StartUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            Prefs.f26560gS.set(1);
            abstractC14874c.mo9823b();
        }
    }
}
