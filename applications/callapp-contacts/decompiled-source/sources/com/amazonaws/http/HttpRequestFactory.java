package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpRequestFactory.class */
public class HttpRequestFactory {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Map<String, String> map, Request<?> request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI f = request.f();
        String host = f.getHost();
        String str = host;
        if (HttpUtils.a(f)) {
            str = host + ":" + f.getPort();
        }
        map.put("Host", str);
        for (Map.Entry<String, String> entry : request.b().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get("Content-Type") == null || map.get("Content-Type").isEmpty()) {
            map.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.b("UTF-8"));
        }
        if (!(executionContext == null || executionContext.f6613c == null)) {
            String str2 = executionContext.f6613c;
            map.put("User-Agent", clientConfiguration.getUserAgent().contains(str2) ? clientConfiguration.getUserAgent() : clientConfiguration.getUserAgent() + org.apache.commons.lang3.StringUtils.SPACE + str2);
        }
    }
}
