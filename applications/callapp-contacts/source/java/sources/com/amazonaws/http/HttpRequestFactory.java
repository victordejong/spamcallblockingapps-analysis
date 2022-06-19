package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpRequestFactory.class */
public class HttpRequestFactory {
    /* renamed from: a */
    public static void m38618a(Map<String, String> map, Request<?> request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI mo38705f = request.mo38705f();
        String host = mo38705f.getHost();
        String str = host;
        if (HttpUtils.m38242a(mo38705f)) {
            str = host + ":" + mo38705f.getPort();
        }
        map.put("Host", str);
        for (Map.Entry<String, String> entry : request.mo38711b().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get("Content-Type") == null || map.get("Content-Type").isEmpty()) {
            map.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.m38227b("UTF-8"));
        }
        if (executionContext == null || executionContext.f12058c == null) {
            return;
        }
        String str2 = executionContext.f12058c;
        map.put("User-Agent", clientConfiguration.getUserAgent().contains(str2) ? clientConfiguration.getUserAgent() : clientConfiguration.getUserAgent() + org.apache.commons.lang3.StringUtils.SPACE + str2);
    }
}
