package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer.class */
public class UserSpamDownloadSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.UserSpamDownloadSyncer.1

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15823a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15824b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.a(getClass(), e);
                        }
                        if (!(response.body() == null || response.body().byteStream() == null)) {
                            UserSpamDownloadSyncer.a(this.f15824b);
                            JsonParser createParser = this.f15824b.getFactory().createParser(response.body().byteStream());
                            this.f15823a = createParser;
                            if (createParser == null) {
                                IoUtils.a(createParser);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f15823a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f15823a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f15824b.readValue(this.f15823a, JSONContact.class);
                                    if (CollectionUtils.b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            UserCorrectedInfoUtil.a(null, PhoneManager.get().a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getSpamScore() > 0);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.c(getClass(), "failed to get user spam list");
                } finally {
                    IoUtils.a(this.f15823a);
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "us";
    }
}
