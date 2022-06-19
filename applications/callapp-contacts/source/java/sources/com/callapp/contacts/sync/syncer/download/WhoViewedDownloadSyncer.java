package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.WhoViewedMyProfileJSONContact;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.TYPE;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer.class */
public class WhoViewedDownloadSyncer extends DownloadSyncer {
    /* renamed from: a */
    static /* synthetic */ ProfileViewedData m27719a(WhoViewedMyProfileJSONContact whoViewedMyProfileJSONContact) {
        if (whoViewedMyProfileJSONContact == null) {
            return null;
        }
        return new ProfileViewedData(0L, whoViewedMyProfileJSONContact.getPhone(), ENTRYPOINT.values()[whoViewedMyProfileJSONContact.getEntryPoint()], whoViewedMyProfileJSONContact.getLastSeen(), whoViewedMyProfileJSONContact.getName(), whoViewedMyProfileJSONContact.getCount(), TYPE.values()[whoViewedMyProfileJSONContact.getType()]);
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        CLog.m27606a("WhoViewedDownloadSyncer");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.WhoViewedDownloadSyncer.1

            /* renamed from: a */
            public JsonParser f27660a = null;

            /* renamed from: b */
            public final ObjectMapper f27661b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                CLog.m27606a("WhoViewedDownloadSyncer");
                try {
                    if (response != null) {
                        if (response.body() != null) {
                            response.body().byteStream();
                            WhoViewedDownloadSyncer.m27725a(this.f27661b);
                            JsonParser createParser = this.f27661b.getFactory().createParser(response.body().byteStream());
                            this.f27660a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                ContactPlusUtils.m28345a();
                                Prefs.f26470ei.set(0);
                                EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27660a.nextToken();
                            }
                            if (nextToken == null) {
                                return;
                            }
                            while (this.f27660a.nextToken() == JsonToken.START_OBJECT) {
                                WhoViewedMyProfileDataManager.m29358a(WhoViewedDownloadSyncer.m27719a((WhoViewedMyProfileJSONContact) this.f27661b.readValue(this.f27660a, WhoViewedMyProfileJSONContact.class)));
                            }
                            Prefs.f26598hD.set(Long.valueOf(System.currentTimeMillis()));
                            return;
                        }
                    }
                    CLog.m27588c(getClass(), "failed to get who viewed list");
                } catch (IOException e) {
                    CLog.m27609a(getClass(), e);
                } finally {
                    IoUtils.m27514a(this.f27660a);
                    ContactPlusUtils.m28345a();
                    Prefs.f26470ei.set(Integer.valueOf(0));
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: b */
            public final void mo26961b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "wvmpd";
    }
}
