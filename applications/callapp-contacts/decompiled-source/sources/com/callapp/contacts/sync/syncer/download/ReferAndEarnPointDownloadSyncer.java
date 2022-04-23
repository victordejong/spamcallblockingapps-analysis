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
import kotlin.jvm.internal.p;
import okhttp3.Response;
import okhttp3.ResponseBody;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;", "Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;", "()V", "getHandler", "Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;", "getMethodName", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer.class */
public final class ReferAndEarnPointDownloadSyncer extends DownloadSyncer {
    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public final HttpUtils.HttpResponseHandler getHandler() {
        CLog.a(ReferAndEarnPointDownloadSyncer.class, "getHandler");
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.ReferAndEarnPointDownloadSyncer$getHandler$1

            /* renamed from: b  reason: collision with root package name */
            private JsonParser f15818b;

            /* renamed from: c  reason: collision with root package name */
            private ObjectMapper f15819c = new ObjectMapper();

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void a(String url, Response response) {
                JsonParser jsonParser;
                p.d(url, "url");
                p.d(response, "response");
                CLog.a(ReferAndEarnPointDownloadSyncer.class, "onResponseSuccess");
                try {
                    try {
                    } catch (IOException e) {
                        CLog.a(getClass(), e);
                    }
                    if (response.body() == null) {
                        CLog.a(ReferAndEarnPointDownloadSyncer.class, "failed to get points");
                    } else {
                        ReferAndEarnPointDownloadSyncer.a(this.f15819c);
                        JsonFactory factory = this.f15819c.getFactory();
                        ResponseBody body = response.body();
                        p.a(body);
                        jsonParser = factory.createParser(body.byteStream());
                        this.f15818b = jsonParser;
                        if (jsonParser != null) {
                            JSONInviteReferer jSONInviteReferer = (JSONInviteReferer) this.f15819c.readValue(jsonParser, JSONInviteReferer.class);
                            if (jSONInviteReferer != null) {
                                CLog.a(ReferAndEarnPointDownloadSyncer.class, "Received Points: " + jSONInviteReferer.getPoints());
                                ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                                String key = jSONInviteReferer.getKey();
                                p.b(key, "it.key");
                                BigInteger points = jSONInviteReferer.getPoints();
                                p.b(points, "it.points");
                                companion.updatePoints(key, points);
                            }
                        }
                        IoUtils.a(jsonParser);
                    }
                    jsonParser = this.f15818b;
                    IoUtils.a(jsonParser);
                } catch (Throwable th) {
                    IoUtils.a(this.f15818b);
                    throw th;
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String url, Response response) {
                p.d(url, "url");
                p.d(response, "response");
                CLog.a(ReferAndEarnPointDownloadSyncer.class, "onError: ".concat(String.valueOf(response)));
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public final String getMethodName() {
        return "rp";
    }
}
