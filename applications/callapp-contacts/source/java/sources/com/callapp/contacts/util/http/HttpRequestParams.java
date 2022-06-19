package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpRequestParams.class */
public class HttpRequestParams {

    /* renamed from: a */
    private final String f28283a;

    /* renamed from: b */
    private final Map<String, String> f28284b;

    /* renamed from: c */
    private final Map<String, String> f28285c;

    /* renamed from: d */
    private final boolean f28286d;

    /* renamed from: e */
    private final HttpUtils.HttpResponseHandler f28287e;

    /* renamed from: f */
    private final String f28288f;

    /* renamed from: g */
    private final Map<String, String> f28289g;

    /* renamed from: h */
    private final int f28290h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder.class */
    public static class HttpRequestParamsBuilder {

        /* renamed from: a */
        public Map<String, String> f28291a;

        /* renamed from: b */
        public Map<String, String> f28292b;

        /* renamed from: c */
        public HttpUtils.HttpResponseHandler f28293c;

        /* renamed from: d */
        public String f28294d;

        /* renamed from: e */
        Map<String, String> f28295e;

        /* renamed from: f */
        public int f28296f = -1;

        /* renamed from: g */
        private final String f28297g;

        /* renamed from: h */
        private boolean f28298h;

        public HttpRequestParamsBuilder(String str) {
            this.f28297g = str;
        }

        /* renamed from: a */
        public final HttpRequestParams m26994a() {
            return new HttpRequestParams(this);
        }
    }

    private HttpRequestParams(HttpRequestParamsBuilder httpRequestParamsBuilder) {
        this.f28283a = httpRequestParamsBuilder.f28297g;
        this.f28284b = httpRequestParamsBuilder.f28291a;
        this.f28285c = httpRequestParamsBuilder.f28292b;
        this.f28286d = httpRequestParamsBuilder.f28298h;
        this.f28287e = httpRequestParamsBuilder.f28293c;
        this.f28288f = httpRequestParamsBuilder.f28294d;
        this.f28289g = httpRequestParamsBuilder.f28295e;
        this.f28290h = httpRequestParamsBuilder.f28296f;
    }

    public Map<String, String> getAdditionalHeaders() {
        return this.f28284b;
    }

    public Map<String, String> getFormParams() {
        return this.f28289g;
    }

    public HttpUtils.HttpResponseHandler getHandler() {
        return this.f28287e;
    }

    public boolean getIncludeAllResponseCodes() {
        return this.f28286d;
    }

    public Map<String, String> getModifiedHeaders() {
        return this.f28285c;
    }

    public int getTimeoutOverride() {
        return this.f28290h;
    }

    public String getUrl() {
        return this.f28283a;
    }

    public String getUserAgentOverride() {
        return this.f28288f;
    }
}
