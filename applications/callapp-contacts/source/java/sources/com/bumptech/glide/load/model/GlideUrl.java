package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.p116g.C3643j;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/GlideUrl.class */
public class GlideUrl implements AbstractC3818f {
    private static final String ALLOWED_URI_CHARS = "@#&=*+-_.,:!?()/~'%;$";
    private volatile byte[] cacheKeyBytes;
    private int hashCode;
    private final Headers headers;
    private String safeStringUrl;
    private URL safeUrl;
    private final String stringUrl;
    private final URL url;

    public GlideUrl(String str) {
        this(str, Headers.DEFAULT);
    }

    public GlideUrl(String str, Headers headers) {
        this.url = null;
        this.stringUrl = C3643j.m37587a(str);
        this.headers = (Headers) C3643j.m37588a(headers, "Argument must not be null");
    }

    public GlideUrl(URL url) {
        this(url, Headers.DEFAULT);
    }

    public GlideUrl(URL url, Headers headers) {
        this.url = (URL) C3643j.m37588a(url, "Argument must not be null");
        this.stringUrl = null;
        this.headers = (Headers) C3643j.m37588a(headers, "Argument must not be null");
    }

    private byte[] getCacheKeyBytes() {
        if (this.cacheKeyBytes == null) {
            this.cacheKeyBytes = getCacheKey().getBytes(f14176a);
        }
        return this.cacheKeyBytes;
    }

    private String getSafeStringUrl() {
        if (TextUtils.isEmpty(this.safeStringUrl)) {
            String str = this.stringUrl;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = ((URL) C3643j.m37588a(this.url, "Argument must not be null")).toString();
            }
            this.safeStringUrl = Uri.encode(str2, ALLOWED_URI_CHARS);
        }
        return this.safeStringUrl;
    }

    private URL getSafeUrl() throws MalformedURLException {
        if (this.safeUrl == null) {
            this.safeUrl = new URL(getSafeStringUrl());
        }
        return this.safeUrl;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public boolean equals(Object obj) {
        if (obj instanceof GlideUrl) {
            GlideUrl glideUrl = (GlideUrl) obj;
            return getCacheKey().equals(glideUrl.getCacheKey()) && this.headers.equals(glideUrl.headers);
        }
        return false;
    }

    public String getCacheKey() {
        String str = this.stringUrl;
        return str != null ? str : ((URL) C3643j.m37588a(this.url, "Argument must not be null")).toString();
    }

    public Map<String, String> getHeaders() {
        return this.headers.getHeaders();
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public int hashCode() {
        if (this.hashCode == 0) {
            int hashCode = getCacheKey().hashCode();
            this.hashCode = hashCode;
            this.hashCode = (hashCode * 31) + this.headers.hashCode();
        }
        return this.hashCode;
    }

    public String toString() {
        return getCacheKey();
    }

    public String toStringUrl() {
        return getSafeStringUrl();
    }

    public URL toURL() throws MalformedURLException {
        return getSafeUrl();
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(getCacheKeyBytes());
    }
}
