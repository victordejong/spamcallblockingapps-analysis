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
    static /* synthetic */ ProfileViewedData a(WhoViewedMyProfileJSONContact whoViewedMyProfileJSONContact) {
        if (whoViewedMyProfileJSONContact == null) {
            return null;
        }
        return new ProfileViewedData(0L, whoViewedMyProfileJSONContact.getPhone(), ENTRYPOINT.values()[whoViewedMyProfileJSONContact.getEntryPoint()], whoViewedMyProfileJSONContact.getLastSeen(), whoViewedMyProfileJSONContact.getName(), whoViewedMyProfileJSONContact.getCount(), TYPE.values()[whoViewedMyProfileJSONContact.getType()]);
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        CLog.a("WhoViewedDownloadSyncer");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.WhoViewedDownloadSyncer.1

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15826a = null;

            /* renamed from: b  reason: collision with root package name */
            public final ObjectMapper f15827b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                CLog.a("WhoViewedDownloadSyncer");
                try {
                    if (response != null) {
                        if (response.body() != null) {
                            response.body().byteStream();
                            WhoViewedDownloadSyncer.a(this.f15827b);
                            JsonParser createParser = this.f15827b.getFactory().createParser(response.body().byteStream());
                            this.f15826a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                ContactPlusUtils.a();
                                Prefs.ei.set(0);
                                EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15826a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f15826a.nextToken() == JsonToken.START_OBJECT) {
                                    WhoViewedMyProfileDataManager.a(WhoViewedDownloadSyncer.a((WhoViewedMyProfileJSONContact) this.f15827b.readValue(this.f15826a, WhoViewedMyProfileJSONContact.class)));
                                }
                                Prefs.hD.set(Long.valueOf(System.currentTimeMillis()));
                                return;
                            }
                            return;
                        }
                    }
                    CLog.c(getClass(), "failed to get who viewed list");
                } catch (IOException e) {
                    CLog.a(getClass(), e);
                } finally {
                    IoUtils.a(this.f15826a);
                    ContactPlusUtils.a();
                    Prefs.ei.set(Integer.valueOf(0));
                    EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "wvmpd";
    }
}
