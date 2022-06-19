package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONInviteReferer;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.math.BigInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import okhttp3.Response;
import okhttp3.ResponseBody;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m4298d2 = {"Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;", "Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;", "()V", "getHandler", "Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;", "getMethodName", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer.class */
public final class ReferAndEarnPointDownloadSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public final HttpUtils.HttpResponseHandler getHandler() {
        CLog.m27611a(ReferAndEarnPointDownloadSyncer.class, "getHandler");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.ReferAndEarnPointDownloadSyncer$getHandler$1

            /* renamed from: b */
            private JsonParser f27652b;

            /* renamed from: c */
            private ObjectMapper f27653c = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String url, Response response) {
                JsonParser jsonParser;
                C18524p.m3840d(url, "url");
                C18524p.m3840d(response, "response");
                CLog.m27611a(ReferAndEarnPointDownloadSyncer.class, "onResponseSuccess");
                try {
                    try {
                    } catch (IOException e) {
                        CLog.m27609a(getClass(), e);
                    }
                    if (response.body() != null) {
                        ReferAndEarnPointDownloadSyncer.m27725a(this.f27653c);
                        JsonFactory factory = this.f27653c.getFactory();
                        ResponseBody body = response.body();
                        C18524p.m3851a(body);
                        jsonParser = factory.createParser(body.byteStream());
                        this.f27652b = jsonParser;
                        if (jsonParser != null) {
                            JSONInviteReferer jSONInviteReferer = (JSONInviteReferer) this.f27653c.readValue(jsonParser, JSONInviteReferer.class);
                            if (jSONInviteReferer != null) {
                                CLog.m27611a(ReferAndEarnPointDownloadSyncer.class, "Received Points: " + jSONInviteReferer.getPoints());
                                ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                                String key = jSONInviteReferer.getKey();
                                C18524p.m3843b(key, "it.key");
                                BigInteger points = jSONInviteReferer.getPoints();
                                C18524p.m3843b(points, "it.points");
                                companion.updatePoints(key, points);
                            }
                        }
                        IoUtils.m27514a(jsonParser);
                    }
                    CLog.m27611a(ReferAndEarnPointDownloadSyncer.class, "failed to get points");
                    jsonParser = this.f27652b;
                    IoUtils.m27514a(jsonParser);
                } catch (Throwable th) {
                    IoUtils.m27514a(this.f27652b);
                    throw th;
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: b */
            public final void mo26961b(String url, Response response) {
                C18524p.m3840d(url, "url");
                C18524p.m3840d(response, "response");
                CLog.m27611a(ReferAndEarnPointDownloadSyncer.class, "onError: ".concat(String.valueOf(response)));
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public final String getMethodName() {
        return "rp";
    }
}
