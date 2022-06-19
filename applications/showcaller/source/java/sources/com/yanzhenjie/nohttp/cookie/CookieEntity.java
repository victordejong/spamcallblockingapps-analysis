package com.yanzhenjie.nohttp.cookie;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.p320db.BasicEntity;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import java.net.HttpCookie;
import java.net.URI;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/CookieEntity.class */
class CookieEntity implements BasicEntity {
    private String comment;
    private String commentURL;
    private boolean discard;
    private String domain;
    private long expiry;

    /* renamed from: id */
    private long f40310id;
    private String name;
    private String path;
    private String portList;
    private boolean secure;
    private String uri;
    private String value;
    private int version;

    public CookieEntity() {
        this.f40310id = -1L;
        this.version = 1;
    }

    public CookieEntity(URI uri, HttpCookie httpCookie) {
        this.f40310id = -1L;
        this.version = 1;
        this.uri = uri == null ? null : uri.toString();
        this.name = httpCookie.getName();
        this.value = httpCookie.getValue();
        this.comment = httpCookie.getComment();
        this.commentURL = httpCookie.getCommentURL();
        this.discard = httpCookie.getDiscard();
        this.domain = httpCookie.getDomain();
        long maxAge = httpCookie.getMaxAge();
        if (maxAge == -1 || maxAge <= 0) {
            this.expiry = -1L;
        } else {
            long currentTimeMillis = (maxAge * 1000) + System.currentTimeMillis();
            this.expiry = currentTimeMillis;
            if (currentTimeMillis < 0) {
                this.expiry = HeaderUtils.getMaxExpiryMillis();
            }
        }
        String path = httpCookie.getPath();
        this.path = path;
        if (!TextUtils.isEmpty(path) && this.path.length() > 1 && this.path.endsWith("/")) {
            String str = this.path;
            this.path = str.substring(0, str.length() - 1);
        }
        this.portList = httpCookie.getPortlist();
        this.secure = httpCookie.getSecure();
        this.version = httpCookie.getVersion();
    }

    public String getComment() {
        return this.comment;
    }

    public String getCommentURL() {
        return this.commentURL;
    }

    public String getDomain() {
        return this.domain;
    }

    public long getExpiry() {
        return this.expiry;
    }

    @Override // com.yanzhenjie.nohttp.p320db.BasicEntity
    public long getId() {
        return this.f40310id;
    }

    public String getName() {
        return this.name;
    }

    public String getPath() {
        return this.path;
    }

    public String getPortList() {
        return this.portList;
    }

    public String getUri() {
        return this.uri;
    }

    public String getValue() {
        return this.value;
    }

    public int getVersion() {
        return this.version;
    }

    public boolean isDiscard() {
        return this.discard;
    }

    public boolean isExpired() {
        long j = this.expiry;
        return j != -1 && j < System.currentTimeMillis();
    }

    public boolean isSecure() {
        return this.secure;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setCommentURL(String str) {
        this.commentURL = str;
    }

    public void setDiscard(boolean z) {
        this.discard = z;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setId(long j) {
        this.f40310id = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPortList(String str) {
        this.portList = str;
    }

    public void setSecure(boolean z) {
        this.secure = z;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public HttpCookie toHttpCookie() {
        HttpCookie httpCookie = new HttpCookie(this.name, this.value);
        httpCookie.setComment(this.comment);
        httpCookie.setCommentURL(this.commentURL);
        httpCookie.setDiscard(this.discard);
        httpCookie.setDomain(this.domain);
        long j = this.expiry;
        if (j == -1) {
            httpCookie.setMaxAge(-1L);
        } else {
            httpCookie.setMaxAge((j - System.currentTimeMillis()) / 1000);
        }
        httpCookie.setPath(this.path);
        httpCookie.setPortlist(this.portList);
        httpCookie.setSecure(this.secure);
        httpCookie.setVersion(this.version);
        return httpCookie;
    }
}
