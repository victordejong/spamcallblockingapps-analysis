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

    @Override // com.callapp.contacts.util.model.UpdateCounterMapBuilder
    protected boolean addToCountedMap(Object obj, DataSource dataSource) {
        Object obj2 = obj;
        if (obj instanceof String) {
            String str = (String) obj;
            if (!StringUtils.q(str)) {
                return false;
            }
            obj2 = StringUtils.o(str);
        }
        return super.addToCountedMap(obj2, dataSource);
    }
}
