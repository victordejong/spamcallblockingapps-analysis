package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/DownloadSyncer.class */
public abstract class DownloadSyncer extends Syncer {
    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(ObjectMapper objectMapper) {
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
    }

    public abstract HttpUtils.HttpResponseHandler getHandler();

    public abstract String getMethodName();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean needsDeviceData() {
        return false;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        syncerContext.markFullySynced();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        super.onSyncStart();
        if (shouldSync()) {
            String str = Prefs.aR.get();
            if (StringUtils.b((CharSequence) str)) {
                StringBuilder sb = new StringBuilder(String.format("%s%s?", HttpUtils.getCallappServerPrefix(), getMethodName()));
                sb.append("myp=");
                sb.append(UrlUtils.a(str));
                sb.append("&ispro=1");
                sb.append("&tk=");
                sb.append(Prefs.aV.get());
                sb.append("&cvc=");
                sb.append(CallAppApplication.get().getVersionCode());
                String country = Locale.getDefault().getCountry();
                String countryIso = PhoneManager.get().getCountryIso();
                if (StringUtils.b((CharSequence) countryIso)) {
                    sb.append("&ucr=");
                    sb.append(countryIso);
                }
                if (StringUtils.b((CharSequence) country)) {
                    sb.append("&ulr=");
                    sb.append(country);
                }
                HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(sb.toString());
                httpRequestParamsBuilder.f16228c = getHandler();
                HttpUtils.b(httpRequestParamsBuilder.a());
            }
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        if (!super.shouldSync()) {
            return false;
        }
        HttpUtils.getCallAppServerHost();
        return HttpUtils.b();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return false;
    }
}
