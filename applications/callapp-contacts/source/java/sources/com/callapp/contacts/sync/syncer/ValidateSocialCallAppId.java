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
            /* renamed from: a */
            public final void mo27737a() {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Successfully changed callappId to phone");
                CLog.m27611a(ValidateSocialCallAppId.class, "Successfully changed CallappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            /* renamed from: a */
            public final void mo27736a(HttpRequest httpRequest) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sending request to change callappId to phone");
                CLog.m27611a(ValidateSocialCallAppId.class, "Sending request to change callappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            /* renamed from: b */
            public final void mo27735b() {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Failed to change callappId to phone");
                CLog.m27611a(ValidateSocialCallAppId.class, "Failed to change CallappId to phone");
            }

            @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
            /* renamed from: c */
            public final void mo27734c() {
            }
        });
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sending validate socialId registration request");
        registrationRequest.f24418a = registrationRequest.m29530a(true);
        registrationRequest.m29529b();
        try {
            countDownLatch.await(100000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Exception while changing callappId to phone", e.getMessage());
            CLog.m27609a(ValidateSocialCallAppId.class, e);
        }
        return super.onSyncEnd();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        return Prefs.f26229aF.isNotNull() && !StringUtils.m26030e(Prefs.f26241aR.get(), "+") && super.shouldSync();
    }
}
