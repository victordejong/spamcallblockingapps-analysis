package com.callapp.contacts.model.contact;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/FastPhotoCache.class */
public class FastPhotoCache extends CacheableData {
    private static final long serialVersionUID = -7085073363716542070L;
    private DataSource dataSource;
    private String thumbnailUrl;

    public FastPhotoCache(String str, DataSource dataSource) {
        this.thumbnailUrl = str;
        this.dataSource = dataSource;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }
}
