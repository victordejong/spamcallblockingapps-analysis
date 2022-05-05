package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpRequestFactory.class */
public class HttpRequestFactory {
    public final void configureHeaders(Map<String, String> map, Request<?> request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI endpoint = request.getEndpoint();
        String host = endpoint.getHost();
        String str = host;
        if (HttpUtils.isUsingNonDefaultPort(endpoint)) {
            str = host + ":" + endpoint.getPort();
        }
        map.put("Host", str);
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get("Content-Type") == null || map.get("Content-Type").isEmpty()) {
            map.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.lowerCase("UTF-8"));
        }
        if (!(executionContext == null || executionContext.getContextUserAgent() == null)) {
            map.put("User-Agent", createUserAgentString(clientConfiguration, executionContext.getContextUserAgent()));
        }
    }

    public HttpRequest createHttpRequest(Request<?> request, ClientConfiguration clientConfiguration, ExecutionContext executionContext) {
        String appendUri = HttpUtils.appendUri(request.getEndpoint().toString(), request.getResourcePath(), true);
        String encodeParameters = HttpUtils.encodeParameters(request);
        HttpMethodName httpMethod = request.getHttpMethod();
        boolean z = request.getContent() != null;
        boolean z2 = true;
        if (httpMethod == HttpMethodName.POST) {
            z2 = z;
        }
        String str = appendUri;
        if (encodeParameters != null) {
            str = appendUri;
            if (z2) {
                str = appendUri + "?" + encodeParameters;
            }
        }
        HashMap hashMap = new HashMap();
        configureHeaders(hashMap, request, executionContext, clientConfiguration);
        InputStream content = request.getContent();
        HttpMethodName httpMethodName = httpMethod;
        if (httpMethod == HttpMethodName.PATCH) {
            httpMethodName = HttpMethodName.POST;
            hashMap.put("X-HTTP-Method-Override", HttpMethodName.PATCH.toString());
        }
        InputStream inputStream = content;
        if (httpMethodName == HttpMethodName.POST) {
            inputStream = content;
            if (request.getContent() == null) {
                inputStream = content;
                if (encodeParameters != null) {
                    byte[] bytes = encodeParameters.getBytes(StringUtils.UTF8);
                    inputStream = new ByteArrayInputStream(bytes);
                    hashMap.put("Content-Length", String.valueOf(bytes.length));
                }
            }
        }
        if (hashMap.get("Accept-Encoding") == null) {
            hashMap.put("Accept-Encoding", "gzip");
        }
        HttpRequest httpRequest = new HttpRequest(httpMethodName.toString(), URI.create(str), hashMap, inputStream);
        httpRequest.setStreaming(request.isStreaming());
        return httpRequest;
    }

    public final String createUserAgentString(ClientConfiguration clientConfiguration, String str) {
        if (clientConfiguration.getUserAgent().contains(str)) {
            return clientConfiguration.getUserAgent();
        }
        return clientConfiguration.getUserAgent() + " " + str;
    }
}
