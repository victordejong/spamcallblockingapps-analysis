package com.yanzhenjie.nohttp.cache;

import android.util.Base64;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.Logger;
import com.yanzhenjie.nohttp.p320db.BasicEntity;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/CacheEntity.class */
public class CacheEntity implements BasicEntity {
    private byte[] data;

    /* renamed from: id */
    private long f40309id;
    private String key;
    private long localExpire;
    private Headers responseHeaders;

    public CacheEntity() {
        this.responseHeaders = new Headers();
        this.data = new byte[0];
    }

    public CacheEntity(long j, String str, Headers headers, byte[] bArr, long j2) {
        this.responseHeaders = new Headers();
        this.data = new byte[0];
        this.f40309id = j;
        this.key = str;
        this.responseHeaders = headers;
        this.data = bArr;
        this.localExpire = j2;
    }

    public byte[] getData() {
        return this.data;
    }

    public String getDataBase64() {
        return Base64.encodeToString(this.data, 0);
    }

    @Override // com.yanzhenjie.nohttp.p320db.BasicEntity
    public long getId() {
        return this.f40309id;
    }

    public String getKey() {
        return this.key;
    }

    public long getLocalExpire() {
        return this.localExpire;
    }

    public String getLocalExpireString() {
        return Long.toString(this.localExpire);
    }

    public Headers getResponseHeaders() {
        return this.responseHeaders;
    }

    public String getResponseHeadersJson() {
        return this.responseHeaders.toJSONString();
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public void setDataBase64(String str) {
        this.data = Base64.decode(str, 0);
    }

    public void setId(long j) {
        this.f40309id = j;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLocalExpire(long j) {
        this.localExpire = j;
    }

    public void setLocalExpireString(String str) {
        this.localExpire = Long.parseLong(str);
    }

    public void setResponseHeaders(Headers headers) {
        this.responseHeaders = headers;
    }

    public void setResponseHeadersJson(String str) {
        try {
            this.responseHeaders.setJSONString(str);
        } catch (JSONException e) {
            Logger.m566e((Throwable) e);
        }
    }
}
