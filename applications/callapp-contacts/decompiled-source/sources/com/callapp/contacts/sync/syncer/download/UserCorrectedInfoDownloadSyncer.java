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

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15820a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15821b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.a(UserCorrectedInfoDownloadSyncer.class, e);
                        }
                        if (!(response.body() == null || response.body().byteStream() == null)) {
                            this.f15821b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f15821b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f15821b.getFactory().createParser(response.body().byteStream());
                            this.f15820a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15820a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f15820a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f15821b.readValue(this.f15820a, JSONContact.class);
                                    if (CollectionUtils.b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            Phone a2 = PhoneManager.get().a(jSONPhoneNumber.getPhoneNumber());
                                            long j = 0;
                                            try {
                                                j = DeviceIdLoader.a(a2, 0);
                                            } catch (DeviceIdLoader.OperationFailedException e2) {
                                                CLog.a(UserCorrectedInfoDownloadSyncer.class, e2);
                                            }
                                            UserCorrectedDataManager.a(j, a2, jSONContact.getType(), jSONContact.getName());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.c(UserCorrectedInfoDownloadSyncer.class, "failed to get user corrected info list");
                } finally {
                    IoUtils.a(this.f15820a);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ucid";
    }
}
