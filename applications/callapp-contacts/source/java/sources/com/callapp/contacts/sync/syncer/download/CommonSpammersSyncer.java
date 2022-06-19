package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONPhoneNumber;
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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/CommonSpammersSyncer.class */
public class CommonSpammersSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.CommonSpammersSyncer.1

            /* renamed from: a */
            public JsonParser f27641a = null;

            /* renamed from: b */
            public ObjectMapper f27642b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.m27609a(CommonSpammersSyncer.class, e);
                        }
                        if (response.body() != null && response.body().byteStream() != null) {
                            this.f27642b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f27642b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f27642b.getFactory().createParser(response.body().byteStream());
                            this.f27641a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                return;
                            }
                            BlockManager.m28760a();
                            JsonToken nextToken = this.f27641a.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27641a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f27641a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f27642b.readValue(this.f27641a, JSONContact.class);
                                    if (CollectionUtils.m26068b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            BlockManager.m28753a(PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getName(), jSONContact.getSpamScore());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.m27588c(CommonSpammersSyncer.class, "failed to get common spammers list");
                } finally {
                    IoUtils.m27514a(this.f27641a);
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
        return "cs";
    }
}
