package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateNameBuilder.class */
public class UpdateNameBuilder extends UpdateFieldBuilder<String> {
    private DataSource forcedDataSource;

    public UpdateNameBuilder(ContactData contactData, ContactField contactField, DataSource dataSource) {
        super(contactData, contactField);
        this.forcedDataSource = dataSource;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    public long getDataSourcePriority(String str, Object obj, DataSource dataSource) {
        char c;
        ?? dataSourcePriority = super.getDataSourcePriority((UpdateNameBuilder) str, obj, dataSource);
        DataSource dataSource2 = this.forcedDataSource;
        if (dataSource2 == null || dataSource != dataSource2) {
            c = dataSourcePriority;
            if (!CollectionUtils.m26073a(DataSource.PLACES_DATA_SOURCE, dataSource)) {
                c = dataSourcePriority;
                if (dataSource != DataSource.intent) {
                    c = dataSourcePriority;
                    if (StringUtils.m26056a(str)) {
                        c = 0;
                    }
                }
            }
        } else {
            c = DataSource.device.priority - 1;
        }
        return c;
    }

    public boolean isValueChangedAndCanBeUse(String str, String str2) {
        boolean isValueChangedAndCanBeUse = super.isValueChangedAndCanBeUse(str, str2);
        return isValueChangedAndCanBeUse ? StringUtils.m26011q(str) : isValueChangedAndCanBeUse;
    }

    public void setValue(String str, DataSource dataSource) {
        super.setValue((UpdateNameBuilder) StringUtils.m26013o(str), dataSource);
    }
}
