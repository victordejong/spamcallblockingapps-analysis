package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/DefaultRequest.class */
public class DefaultRequest<T> implements Request<T> {
    public InputStream content;
    public URI endpoint;
    public AWSRequestMetrics metrics;
    public final AmazonWebServiceRequest originalRequest;
    public String resourcePath;
    public String serviceName;
    public int timeOffset;
    public boolean streaming = false;
    public final Map<String, String> parameters = new LinkedHashMap();
    public final Map<String, String> headers = new HashMap();
    public HttpMethodName httpMethod = HttpMethodName.POST;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.serviceName = str;
        this.originalRequest = amazonWebServiceRequest;
    }

    @Override // com.amazonaws.Request
    public void addHeader(String str, String str2) {
        this.headers.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public void addParameter(String str, String str2) {
        this.parameters.put(str, str2);
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public AWSRequestMetrics getAWSRequestMetrics() {
        return this.metrics;
    }

    @Override // com.amazonaws.Request
    public InputStream getContent() {
        return this.content;
    }

    @Override // com.amazonaws.Request
    public URI getEndpoint() {
        return this.endpoint;
    }

    @Override // com.amazonaws.Request
    public Map<String, String> getHeaders() {
        return this.headers;
    }

    @Override // com.amazonaws.Request
    public HttpMethodName getHttpMethod() {
        return this.httpMethod;
    }

    @Override // com.amazonaws.Request
    public AmazonWebServiceRequest getOriginalRequest() {
        return this.originalRequest;
    }

    @Override // com.amazonaws.Request
    public Map<String, String> getParameters() {
        return this.parameters;
    }

    @Override // com.amazonaws.Request
    public String getResourcePath() {
        return this.resourcePath;
    }

    @Override // com.amazonaws.Request
    public String getServiceName() {
        return this.serviceName;
    }

    @Override // com.amazonaws.Request
    public int getTimeOffset() {
        return this.timeOffset;
    }

    @Override // com.amazonaws.Request
    public boolean isStreaming() {
        return this.streaming;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public void setAWSRequestMetrics(AWSRequestMetrics aWSRequestMetrics) {
        if (this.metrics == null) {
            this.metrics = aWSRequestMetrics;
            return;
        }
        throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
    }

    @Override // com.amazonaws.Request
    public void setContent(InputStream inputStream) {
        this.content = inputStream;
    }

    @Override // com.amazonaws.Request
    public void setEndpoint(URI uri) {
        this.endpoint = uri;
    }

    @Override // com.amazonaws.Request
    public void setHeaders(Map<String, String> map) {
        this.headers.clear();
        this.headers.putAll(map);
    }

    @Override // com.amazonaws.Request
    public void setHttpMethod(HttpMethodName httpMethodName) {
        this.httpMethod = httpMethodName;
    }

    @Override // com.amazonaws.Request
    public void setParameters(Map<String, String> map) {
        this.parameters.clear();
        this.parameters.putAll(map);
    }

    @Override // com.amazonaws.Request
    public void setResourcePath(String str) {
        this.resourcePath = str;
    }

    @Override // com.amazonaws.Request
    public void setTimeOffset(int i) {
        this.timeOffset = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getHttpMethod());
        sb.append(" ");
        sb.append(getEndpoint());
        sb.append(" ");
        String resourcePath = getResourcePath();
        if (resourcePath == null) {
            sb.append("/");
        } else {
            if (!resourcePath.startsWith("/")) {
                sb.append("/");
            }
            sb.append(resourcePath);
        }
        sb.append(" ");
        if (!getParameters().isEmpty()) {
            sb.append("Parameters: (");
            for (String str : getParameters().keySet()) {
                sb.append(str);
                sb.append(": ");
                sb.append(getParameters().get(str));
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append(") ");
        }
        if (!getHeaders().isEmpty()) {
            sb.append("Headers: (");
            for (String str2 : getHeaders().keySet()) {
                sb.append(str2);
                sb.append(": ");
                sb.append(getHeaders().get(str2));
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append(") ");
        }
        return sb.toString();
    }
}
