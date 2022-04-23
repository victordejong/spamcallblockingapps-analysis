package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer.class */
public class BlockedDownloadSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.BlockedDownloadSyncer.1

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15804a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15805b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        if (!(response.body() == null || response.body().byteStream() == null)) {
                            this.f15805b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f15805b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f15805b.getFactory().createParser(response.body().byteStream());
                            this.f15804a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15804a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f15804a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f15805b.readValue(this.f15804a, JSONContact.class);
                                    if (CollectionUtils.b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            if (!BlockManager.a(jSONContact.getName(), PhoneManager.get().a(jSONPhoneNumber.getPhoneNumber()), false)) {
                                                BlockManager.a(PhoneManager.get().a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getName());
                                            }
                                        }
                                    }
                                }
                                return;
                            }
                            return;
                        }
                    }
                    CLog.c(BlockedDownloadSyncer.class, "failed to get blocked list");
                } catch (IOException e) {
                    CLog.a(BlockedDownloadSyncer.class, e);
                } finally {
                    IoUtils.a(this.f15804a);
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ub";
    }
}
