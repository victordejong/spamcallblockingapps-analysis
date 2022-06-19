package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer.class */
public class UserCorrectedInfoDownloadSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.UserCorrectedInfoDownloadSyncer.1

            /* renamed from: a */
            public JsonParser f27654a = null;

            /* renamed from: b */
            public ObjectMapper f27655b = new ObjectMapper();

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v47 */
            /* JADX WARN: Type inference failed for: r0v51, types: [long] */
            /* JADX WARN: Type inference failed for: r10v0 */
            /* JADX WARN: Type inference failed for: r10v1 */
            /* JADX WARN: Type inference failed for: r10v2 */
            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.m27609a(UserCorrectedInfoDownloadSyncer.class, e);
                        }
                        if (response.body() != null && response.body().byteStream() != null) {
                            this.f27655b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f27655b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f27655b.getFactory().createParser(response.body().byteStream());
                            this.f27654a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27654a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f27654a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f27655b.readValue(this.f27654a, JSONContact.class);
                                    if (CollectionUtils.m26068b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            Phone m28239a = PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber());
                                            ?? r10 = false;
                                            try {
                                                r10 = DeviceIdLoader.m28854a(m28239a, 0);
                                            } catch (DeviceIdLoader.OperationFailedException e2) {
                                                CLog.m27609a(UserCorrectedInfoDownloadSyncer.class, e2);
                                            }
                                            UserCorrectedDataManager.m28902a(r10 == true ? 1L : 0L, m28239a, jSONContact.getType(), jSONContact.getName());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.m27588c(UserCorrectedInfoDownloadSyncer.class, "failed to get user corrected info list");
                } finally {
                    IoUtils.m27514a(this.f27654a);
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
        return "ucid";
    }
}
