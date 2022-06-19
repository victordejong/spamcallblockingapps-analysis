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

            /* renamed from: a */
            public JsonParser f27638a = null;

            /* renamed from: b */
            public ObjectMapper f27639b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        if (response.body() != null && response.body().byteStream() != null) {
                            this.f27639b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f27639b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f27639b.getFactory().createParser(response.body().byteStream());
                            this.f27638a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27638a.nextToken();
                            }
                            if (nextToken == null) {
                                return;
                            }
                            while (this.f27638a.nextToken() == JsonToken.START_OBJECT) {
                                JSONContact jSONContact = (JSONContact) this.f27639b.readValue(this.f27638a, JSONContact.class);
                                if (CollectionUtils.m26068b(jSONContact.getPhoneNumbers())) {
                                    for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                        if (!BlockManager.m28750a(jSONContact.getName(), PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber()), false)) {
                                            BlockManager.m28754a(PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getName());
                                        }
                                    }
                                }
                            }
                            return;
                        }
                    }
                    CLog.m27588c(BlockedDownloadSyncer.class, "failed to get blocked list");
                } catch (IOException e) {
                    CLog.m27609a(BlockedDownloadSyncer.class, e);
                } finally {
                    IoUtils.m27514a(this.f27638a);
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
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
        return "ub";
    }
}
