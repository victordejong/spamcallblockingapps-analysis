package org.xutils.cache;

import java.util.Date;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "disk_cache")
/* loaded from: classes2-dex2jar.jar:org/xutils/cache/DiskCacheEntity.class */
public final class DiskCacheEntity {
    @Column(name = "bytesContent")
    private byte[] bytesContent;
    @Column(name = "etag")
    private String etag;
    @Column(name = "expires")
    private long expires = Long.MAX_VALUE;
    @Column(name = "hits")
    private long hits;
    @Column(isId = true, name = "id")

    /* renamed from: id */
    private long f40539id;
    @Column(name = "key", property = "UNIQUE")
    private String key;
    @Column(name = "lastAccess")
    private long lastAccess;
    @Column(name = "lastModify")
    private Date lastModify;
    @Column(name = "path")
    private String path;
    @Column(name = "textContent")
    private String textContent;

    public byte[] getBytesContent() {
        return this.bytesContent;
    }

    public String getEtag() {
        return this.etag;
    }

    public long getExpires() {
        return this.expires;
    }

    public long getHits() {
        return this.hits;
    }

    public long getId() {
        return this.f40539id;
    }

    public String getKey() {
        return this.key;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public long getLastAccess() {
        ?? r0 = this.lastAccess;
        char c = r0;
        if (r0 == 0) {
            c = System.currentTimeMillis();
        }
        return c;
    }

    public Date getLastModify() {
        return this.lastModify;
    }

    public String getPath() {
        return this.path;
    }

    public String getTextContent() {
        return this.textContent;
    }

    public void setBytesContent(byte[] bArr) {
        this.bytesContent = bArr;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setExpires(long j) {
        this.expires = j;
    }

    public void setHits(long j) {
        this.hits = j;
    }

    public void setId(long j) {
        this.f40539id = j;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLastAccess(long j) {
        this.lastAccess = j;
    }

    public void setLastModify(Date date) {
        this.lastModify = date;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setTextContent(String str) {
        this.textContent = str;
    }
}
