package com.callapp.contacts.util.servermessage;

import com.callapp.common.model.json.JSONQuotaLimitation;
import com.callapp.common.model.json.QuotaLimitPOJO;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.TypeReferenceParserHttpResponseHandler;
import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/servermessage/CheckQuotaLimitation.class */
public class CheckQuotaLimitation {

    /* renamed from: a */
    private static final Object f28375a = new Object();

    /* renamed from: b */
    private static JSONQuotaLimitation f28376b;

    /* renamed from: a */
    public static JSONQuotaLimitation m26909a(boolean z) {
        JSONQuotaLimitation jSONQuotaLimitation;
        JSONQuotaLimitation jSONQuotaLimitation2 = (JSONQuotaLimitation) CacheManager.get().m28378b(JSONQuotaLimitation.class, "quota_limitation", false);
        if (z) {
            return jSONQuotaLimitation2;
        }
        if (jSONQuotaLimitation2 == null) {
            jSONQuotaLimitation = getServerQuotaLimitation();
        } else {
            jSONQuotaLimitation = jSONQuotaLimitation2;
            if (jSONQuotaLimitation2.isExpired()) {
                new Task() { // from class: com.callapp.contacts.util.servermessage.CheckQuotaLimitation.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        CheckQuotaLimitation.getServerQuotaLimitation();
                    }
                }.execute();
                jSONQuotaLimitation = jSONQuotaLimitation2;
            }
        }
        return jSONQuotaLimitation;
    }

    public static JSONQuotaLimitation getServerQuotaLimitation() {
        if (HttpUtils.m26985a() && f28376b == null) {
            synchronized (f28375a) {
                if (f28376b == null) {
                    TypeReferenceParserHttpResponseHandler typeReferenceParserHttpResponseHandler = new TypeReferenceParserHttpResponseHandler(new TypeReference<HashMap<String, QuotaLimitPOJO>>() { // from class: com.callapp.contacts.util.servermessage.CheckQuotaLimitation.2
                    });
                    HttpUtils.getCallAppServerHost();
                    if (HttpUtils.m26972b()) {
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(HttpUtils.getCallappServerPrefix() + "cq?myp=" + UrlUtils.m31878a(Prefs.f26241aR.get()) + "&tk=" + Prefs.f26245aV.get());
                        httpRequestParamsBuilder.f28293c = typeReferenceParserHttpResponseHandler;
                        HttpUtils.m26971b(httpRequestParamsBuilder.m26994a());
                    }
                    Map map = (Map) typeReferenceParserHttpResponseHandler.getResult();
                    if (CollectionUtils.m26067b(map)) {
                        f28376b = new JSONQuotaLimitation(map);
                        CacheManager.get().m28388a(JSONQuotaLimitation.class, "quota_limitation", f28376b, 2131427414);
                    }
                    if (f28376b == null) {
                        f28376b = new JSONQuotaLimitation();
                        CacheManager.get().m28388a(JSONQuotaLimitation.class, "quota_limitation", f28376b, 2131427358);
                    }
                }
            }
        }
        return f28376b;
    }
}
