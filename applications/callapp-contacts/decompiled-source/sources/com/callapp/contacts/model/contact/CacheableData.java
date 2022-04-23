package com.callapp.contacts.model.contact;

import com.callapp.contacts.util.date.DateUtils;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/CacheableData.class */
public abstract class CacheableData implements Serializable {
    private Date lastUpdated = new Date();

    public Date getLastUpdated() {
        return this.lastUpdated;
    }

    public boolean isExpired(int i) {
        return DateUtils.b(this.lastUpdated, i);
    }

    public void setLastUpdated(Date date) {
        this.lastUpdated = date;
    }
}
