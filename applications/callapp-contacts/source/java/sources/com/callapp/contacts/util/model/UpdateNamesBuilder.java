package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SureCounter;
import com.callapp.framework.util.StringUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateNamesBuilder.class */
public class UpdateNamesBuilder extends UpdateCounterMapBuilder {
    public UpdateNamesBuilder(ContactData contactData, ContactField contactField, Map<Object, SureCounter> map, boolean z) {
        super(contactData, contactField, map, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.util.model.UpdateCounterMapBuilder
    public boolean addToCountedMap(Object obj, DataSource dataSource) {
        String str = obj;
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (!StringUtils.m26011q(str2)) {
                return false;
            }
            str = StringUtils.m26013o(str2);
        }
        return super.addToCountedMap(str, dataSource);
    }
}
