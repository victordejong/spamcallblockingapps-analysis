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

            /* renamed from: a */
            public JsonParser f27657a = null;

            /* renamed from: b */
            public ObjectMapper f27658b = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.m27609a(getClass(), e);
                        }
                        if (response.body() != null && response.body().byteStream() != null) {
                            UserSpamDownloadSyncer.m27725a(this.f27658b);
                            JsonParser createParser = this.f27658b.getFactory().createParser(response.body().byteStream());
                            this.f27657a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                return;
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27657a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f27657a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f27658b.readValue(this.f27657a, JSONContact.class);
                                    if (CollectionUtils.m26068b(jSONContact.getPhoneNumbers())) {
                                        for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                            UserCorrectedInfoUtil.m27344a(null, PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber()), jSONContact.getSpamScore() > 0);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    CLog.m27588c(getClass(), "failed to get user spam list");
                } finally {
                    IoUtils.m27514a(this.f27657a);
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
        return "us";
    }
}
