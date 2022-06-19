package com.pubmatic.sdk.common.network;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBHttpRequest.class */
public class POBHttpRequest implements Cloneable {

    /* renamed from: d */
    private String f515d;

    /* renamed from: e */
    private String f516e;

    /* renamed from: f */
    private String f517f;

    /* renamed from: a */
    private int f512a = 5000;

    /* renamed from: b */
    private int f513b = 0;

    /* renamed from: c */
    private float f514c = 1.0f;

    /* renamed from: h */
    private HTTP_METHOD f519h = HTTP_METHOD.GET;

    /* renamed from: g */
    private Map<String, String> f518g = new HashMap();

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD.class */
    public enum HTTP_METHOD {
        GET,
        POST,
        PUT,
        DELETE
    }

    public POBHttpRequest clone() {
        return (POBHttpRequest) super.clone();
    }

    public Map<String, String> getHeaders() {
        return this.f518g;
    }

    public String getPostData() {
        return this.f517f;
    }

    public HTTP_METHOD getRequestMethod() {
        return this.f519h;
    }

    public String getRequestTag() {
        return this.f515d;
    }

    public float getRetryBackoffMultiplier() {
        return this.f514c;
    }

    public int getRetryCount() {
        return this.f513b;
    }

    public int getTimeout() {
        return this.f512a;
    }

    public String getUrl() {
        return this.f516e;
    }

    public void setHeaders(Map<String, String> map) {
        this.f518g = map;
    }

    public void setPostData(String str) {
        this.f517f = str;
    }

    public void setRequestMethod(HTTP_METHOD http_method) {
        this.f519h = http_method;
    }

    public void setRequestTag(String str) {
        this.f515d = str;
    }

    public void setRetryBackoffMultiplier(float f) {
        this.f514c = f;
    }

    public void setRetryCount(int i) {
        this.f513b = i;
    }

    public void setTimeout(int i) {
        this.f512a = i;
    }

    public void setUrl(String str) {
        this.f516e = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getUrl());
        if (getRequestMethod() == HTTP_METHOD.POST) {
            sb.append("\nPOST Data : ");
        }
        sb.append(getPostData());
        return sb.toString();
    }
}
