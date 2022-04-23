package com.callapp.contacts.model.contact;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/FastNameCache.class */
public class FastNameCache extends CacheableData {
    private static final long serialVersionUID = -2115189040345094119L;
    private DataSource dataSource;
    private String fullName;

    public FastNameCache(String str, DataSource dataSource) {
        this.fullName = str;
        setDataSource(dataSource);
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }
}
