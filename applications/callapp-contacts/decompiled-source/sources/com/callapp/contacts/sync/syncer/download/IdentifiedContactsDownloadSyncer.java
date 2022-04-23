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
    static /* synthetic */ ExtractedInfo a(IdentifiedJSONContact identifiedJSONContact) {
        if (identifiedJSONContact == null) {
            return null;
        }
        ExtractedInfo extractedInfo = new ExtractedInfo();
        extractedInfo.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.values()[identifiedJSONContact.getRecognizedPersonOrigin()];
        extractedInfo.comType = IMDataExtractionUtils.ComType.values()[identifiedJSONContact.getComType()];
        extractedInfo.senderName = identifiedJSONContact.getSenderName();
        extractedInfo.phoneAsRaw = T9Helper.a((CharSequence) identifiedJSONContact.getPhoneNumbers().get(0).getPhoneNumber());
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
        CLog.a("IdentifiedContactsDownloadSyncer");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.IdentifiedContactsDownloadSyncer.1

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15810a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15811b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                CLog.a("IdentifiedContactsDownloadSyncer");
                try {
                    if (response != null) {
                        if (!(response.body() == null || response.body().byteStream() == null)) {
                            IdentifiedContactsDownloadSyncer.a(this.f15811b);
                            JsonParser createParser = this.f15811b.getFactory().createParser(response.body().byteStream());
                            this.f15810a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                ContactPlusUtils.a();
                                Prefs.ei.set(0);
                                EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15810a.nextToken();
                            }
                            if (nextToken == null) {
                                IoUtils.a(this.f15810a);
                                ContactPlusUtils.a();
                                Prefs.ei.set(0);
                                EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                                return;
                            }
                            while (this.f15810a.nextToken() == JsonToken.START_OBJECT) {
                                IdentifiedJSONContact identifiedJSONContact = (IdentifiedJSONContact) this.f15811b.readValue(this.f15810a, IdentifiedJSONContact.class);
                                "Received: ".concat(String.valueOf(identifiedJSONContact));
                                CLog.a("IdentifiedContactsDownloadSyncer");
                                ExtractedInfo a2 = IdentifiedContactsDownloadSyncer.a(identifiedJSONContact);
                                boolean a3 = IMDataExtractionUtils.a(a2);
                                StringBuilder sb = new StringBuilder("Insert: ");
                                sb.append(a2);
                                sb.append(", Success: ");
                                sb.append(a3);
                                CLog.a("IdentifiedContactsDownloadSyncer");
                            }
                            return;
                        }
                    }
                    CLog.c(getClass(), "failed to get identified contact list");
                    IoUtils.a(this.f15810a);
                    ContactPlusUtils.a();
                    Prefs.ei.set(0);
                    EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
                } catch (IOException e) {
                    CLog.a(getClass(), e);
                } finally {
                    IoUtils.a(this.f15810a);
                    ContactPlusUtils.a();
                    Prefs.ei.set(Integer.valueOf(0));
                    EventBusManager.f14368a.c(OnBadgeNotificationDataChangeListener.b_, EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
                "onError: ".concat(String.valueOf(response));
                CLog.a("IdentifiedContactsDownloadSyncer");
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ic";
    }
}
