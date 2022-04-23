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

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15807a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15808b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.a(CommonSpammersSyncer.class, e);
                        }
                        if (!(response.body() == null || response.body().byteStream() == null)) {
                            this.f15808b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f15808b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f15808b.getFactory().createParser(response.body().byteStream());
                            this.f15807a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                return;
                            }
                            BlockManager.a();
                            JsonToken nextToken = this.f15807a.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15807a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f15807a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f15808b.readValue(this.f15807a, JSONContact.class);
                                    if (CollectionUtils.b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            BlockManager.a(PhoneManager.get().a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getName(), jSONContact.getSpamScore());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.c(CommonSpammersSyncer.class, "failed to get common spammers list");
                } finally {
                    IoUtils.a(this.f15807a);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "cs";
    }
}
