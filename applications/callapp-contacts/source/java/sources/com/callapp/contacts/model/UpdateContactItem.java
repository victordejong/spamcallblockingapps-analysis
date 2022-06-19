package com.callapp.contacts.model;

import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UpdateContactItem.class */
public class UpdateContactItem {
    public final Long contactId;
    public String description;
    public final String displayName;
    public final String lookupKey;
    public final List<String> normalNumbers;

    public UpdateContactItem(Long l, String str, String str2, List<String> list, String str3) {
        this.contactId = l;
        this.lookupKey = str;
        this.normalNumbers = list;
        this.displayName = str2;
        this.description = str3;
    }

    public List<String> getNormalNumbers() {
        return this.normalNumbers;
    }

    public void setDescription(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            this.description = str;
        } else {
            this.description = "";
        }
    }

    public String toString() {
        return "UpdateContactItem{displayName='" + this.displayName + "', contactId=" + this.contactId + ", lookupKey='" + this.lookupKey + "', description=" + this.description + ", normalNumbers=" + this.normalNumbers + '}';
    }
}
