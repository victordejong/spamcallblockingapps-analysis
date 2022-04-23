package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpRequestParams.class */
public class HttpRequestParams {

    /* renamed from: a  reason: collision with root package name */
    private final String f16222a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f16223b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f16224c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16225d;
    private final HttpUtils.HttpResponseHandler e;
    private final String f;
    private final Map<String, String> g;
    private final int h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder.class */
    public static class HttpRequestParamsBuilder {

        /* renamed from: a  reason: collision with root package name */
        public Map<String, String> f16226a;

        /* renamed from: b  reason: collision with root package name */
        public Map<String, String> f16227b;

        /* renamed from: c  reason: collision with root package name */
        public HttpUtils.HttpResponseHandler f16228c;

        /* renamed from: d  reason: collision with root package name */
        public String f16229d;
        Map<String, String> e;
        public int f = -1;
        private final String g;
        private boolean h;

        public HttpRequestParamsBuilder(String str) {
            this.g = str;
        }

        public final HttpRequestParams a() {
            return new HttpRequestParams(this);
        }
    }

    private HttpRequestParams(HttpRequestParamsBuilder httpRequestParamsBuilder) {
        this.f16222a = httpRequestParamsBuilder.g;
        this.f16223b = httpRequestParamsBuilder.f16226a;
        this.f16224c = httpRequestParamsBuilder.f16227b;
        this.f16225d = httpRequestParamsBuilder.h;
        this.e = httpRequestParamsBuilder.f16228c;
        this.f = httpRequestParamsBuilder.f16229d;
        this.g = httpRequestParamsBuilder.e;
        this.h = httpRequestParamsBuilder.f;
    }

    public Map<String, String> getAdditionalHeaders() {
        return this.f16223b;
    }

    public Map<String, String> getFormParams() {
        return this.g;
    }

    public HttpUtils.HttpResponseHandler getHandler() {
        return this.e;
    }

    public boolean getIncludeAllResponseCodes() {
        return this.f16225d;
    }

    public Map<String, String> getModifiedHeaders() {
        return this.f16224c;
    }

    public int getTimeoutOverride() {
        return this.h;
    }

    public String getUrl() {
        return this.f16222a;
    }

    public String getUserAgentOverride() {
        return this.f;
    }
}
