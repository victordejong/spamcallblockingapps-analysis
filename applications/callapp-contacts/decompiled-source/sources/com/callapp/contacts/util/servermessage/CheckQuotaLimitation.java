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

    /* renamed from: a  reason: collision with root package name */
    private static final Object f16290a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static JSONQuotaLimitation f16291b;

    public static JSONQuotaLimitation a(boolean z) {
        JSONQuotaLimitation jSONQuotaLimitation;
        JSONQuotaLimitation jSONQuotaLimitation2 = (JSONQuotaLimitation) CacheManager.get().b(JSONQuotaLimitation.class, "quota_limitation", false);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONQuotaLimitation getServerQuotaLimitation() {
        if (HttpUtils.a() && f16291b == null) {
            synchronized (f16290a) {
                if (f16291b == null) {
                    TypeReferenceParserHttpResponseHandler typeReferenceParserHttpResponseHandler = new TypeReferenceParserHttpResponseHandler(new TypeReference<HashMap<String, QuotaLimitPOJO>>() { // from class: com.callapp.contacts.util.servermessage.CheckQuotaLimitation.2
                    });
                    HttpUtils.getCallAppServerHost();
                    if (HttpUtils.b()) {
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(HttpUtils.getCallappServerPrefix() + "cq?myp=" + UrlUtils.a(Prefs.aR.get()) + "&tk=" + Prefs.aV.get());
                        httpRequestParamsBuilder.f16228c = typeReferenceParserHttpResponseHandler;
                        HttpUtils.b(httpRequestParamsBuilder.a());
                    }
                    Map map = (Map) typeReferenceParserHttpResponseHandler.getResult();
                    if (CollectionUtils.b(map)) {
                        f16291b = new JSONQuotaLimitation(map);
                        CacheManager.get().a(JSONQuotaLimitation.class, "quota_limitation", f16291b, 2131427414);
                    }
                    if (f16291b == null) {
                        f16291b = new JSONQuotaLimitation();
                        CacheManager.get().a(JSONQuotaLimitation.class, "quota_limitation", f16291b, 2131427358);
                    }
                }
            }
        }
        return f16291b;
    }
}
