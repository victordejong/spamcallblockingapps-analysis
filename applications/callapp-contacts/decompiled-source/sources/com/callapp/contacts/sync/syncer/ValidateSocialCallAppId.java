package com.callapp.contacts.sync.syncer;

import com.callapp.contacts.activity.setup.RegistrationRequest;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.framework.util.StringUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/ValidateSocialCallAppId.class */
public class ValidateSocialCallAppId extends Syncer {
    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        syncerContext.markFullySynced();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean onSyncEnd() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        RegistrationRequest registrationRequest = new RegistrationRequest(null, null, new RegistrationRequest.RegistrationEvents() { // from class: com.callapp.contacts.sync.syncer.ValidateSocialCallAppId.1
            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            public final void a() {
                AnalyticsManager.get().a(Constants.REGISTRATION, "Successfully changed callappId to phone");
                CLog.a(ValidateSocialCallAppId.class, "Successfully changed CallappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            public final void a(HttpRequest httpRequest) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "Sending request to change callappId to phone");
                CLog.a(ValidateSocialCallAppId.class, "Sending request to change callappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            public final void b() {
                AnalyticsManager.get().a(Constants.REGISTRATION, "Failed to change callappId to phone");
                CLog.a(ValidateSocialCallAppId.class, "Failed to change CallappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            public final void c() {
            }
        });
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sending validate socialId registration request");
        registrationRequest.f13864a = registrationRequest.a(true);
        registrationRequest.b();
        try {
            countDownLatch.await(100000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Exception while changing callappId to phone", e.getMessage());
            CLog.a(ValidateSocialCallAppId.class, e);
        }
        return super.onSyncEnd();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        return Prefs.aF.isNotNull() && !StringUtils.e(Prefs.aR.get(), "+") && super.shouldSync();
    }
}
