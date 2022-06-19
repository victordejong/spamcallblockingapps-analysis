package com.amazonaws.transform;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/JsonUnmarshallerContext.class */
public class JsonUnmarshallerContext {
    private final HttpResponse httpResponse;
    private final AwsJsonReader reader;

    public JsonUnmarshallerContext(AwsJsonReader awsJsonReader) {
        this(awsJsonReader, null);
    }

    public JsonUnmarshallerContext(AwsJsonReader awsJsonReader, HttpResponse httpResponse) {
        this.reader = awsJsonReader;
        this.httpResponse = httpResponse;
    }

    public String getHeader(String str) {
        HttpResponse httpResponse = this.httpResponse;
        if (httpResponse == null) {
            return null;
        }
        return httpResponse.f12069d.get(str);
    }

    public HttpResponse getHttpResponse() {
        return this.httpResponse;
    }

    public AwsJsonReader getReader() {
        return this.reader;
    }
}
