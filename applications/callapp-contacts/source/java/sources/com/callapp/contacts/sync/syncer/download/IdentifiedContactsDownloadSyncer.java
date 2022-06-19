package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.IdentifiedJSONContact;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer.class */
public class IdentifiedContactsDownloadSyncer extends DownloadSyncer {
    /* renamed from: a */
    static /* synthetic */ ExtractedInfo m27724a(IdentifiedJSONContact identifiedJSONContact) {
        if (identifiedJSONContact == null) {
            return null;
        }
        ExtractedInfo extractedInfo = new ExtractedInfo();
        extractedInfo.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.values()[identifiedJSONContact.getRecognizedPersonOrigin()];
        extractedInfo.comType = IMDataExtractionUtils.ComType.values()[identifiedJSONContact.getComType()];
        extractedInfo.senderName = identifiedJSONContact.getSenderName();
        extractedInfo.phoneAsRaw = T9Helper.m30360a((CharSequence) identifiedJSONContact.getPhoneNumbers().get(0).getPhoneNumber());
        extractedInfo.when = identifiedJSONContact.getWhen();
        extractedInfo.firstSeen = identifiedJSONContact.getFirstSeen();
        extractedInfo.lastNotificationShowed = identifiedJSONContact.getLastNotificationShowed();
        extractedInfo.seenCount = identifiedJSONContact.getSeenCount();
        extractedInfo.disableNotification = identifiedJSONContact.isDisableNotification();
        extractedInfo.starred = identifiedJSONContact.isFavorite();
        return extractedInfo;
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        CLog.m27606a("IdentifiedContactsDownloadSyncer");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.IdentifiedContactsDownloadSyncer.1

            /* renamed from: a */
            public JsonParser f27644a = null;

            /* renamed from: b */
            public ObjectMapper f27645b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                CLog.m27606a("IdentifiedContactsDownloadSyncer");
                try {
                    if (response != null) {
                        if (response.body() != null && response.body().byteStream() != null) {
                            IdentifiedContactsDownloadSyncer.m27725a(this.f27645b);
                            JsonParser createParser = this.f27645b.getFactory().createParser(response.body().byteStream());
                            this.f27644a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                ContactPlusUtils.m28345a();
                                Prefs.f26470ei.set(0);
                                EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27644a.nextToken();
                            }
                            if (nextToken == null) {
                                IoUtils.m27514a(this.f27644a);
                                ContactPlusUtils.m28345a();
                                Prefs.f26470ei.set(0);
                                EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            while (this.f27644a.nextToken() == JsonToken.START_OBJECT) {
                                IdentifiedJSONContact identifiedJSONContact = (IdentifiedJSONContact) this.f27645b.readValue(this.f27644a, IdentifiedJSONContact.class);
                                "Received: ".concat(String.valueOf(identifiedJSONContact));
                                CLog.m27606a("IdentifiedContactsDownloadSyncer");
                                ExtractedInfo m27724a = IdentifiedContactsDownloadSyncer.m27724a(identifiedJSONContact);
                                boolean m28624a = IMDataExtractionUtils.m28624a(m27724a);
                                StringBuilder sb = new StringBuilder("Insert: ");
                                sb.append(m27724a);
                                sb.append(", Success: ");
                                sb.append(m28624a);
                                CLog.m27606a("IdentifiedContactsDownloadSyncer");
                            }
                            return;
                        }
                    }
                    CLog.m27588c(getClass(), "failed to get identified contact list");
                    IoUtils.m27514a(this.f27644a);
                    ContactPlusUtils.m28345a();
                    Prefs.f26470ei.set(0);
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                } catch (IOException e) {
                    CLog.m27609a(getClass(), e);
                } finally {
                    IoUtils.m27514a(this.f27644a);
                    ContactPlusUtils.m28345a();
                    Prefs.f26470ei.set(Integer.valueOf(0));
                    EventBusManager.f25138a.m29043c(OnBadgeNotificationDataChangeListener.f23125b_, EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: b */
            public final void mo26961b(String str, Response response) throws IOException {
                "onError: ".concat(String.valueOf(response));
                CLog.m27606a("IdentifiedContactsDownloadSyncer");
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ic";
    }
}
