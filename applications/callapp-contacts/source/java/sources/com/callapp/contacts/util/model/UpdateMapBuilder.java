package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.ReflectionUtils;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateMapBuilder.class */
public class UpdateMapBuilder extends UpdateFieldBuilder<Map> {
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateMapBuilder(ContactData contactData, ContactField contactField, Map map) {
        super(contactData, contactField);
        this.value = map;
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public UpdateFieldBuilder<Map> useField(Object obj, String str, DataSource dataSource) {
        if (obj != null) {
            if (this.contact.isOnlySure() && !this.contact.isSure(dataSource)) {
                return this;
            }
            Object m27423a = ReflectionUtils.m27423a(obj, str);
            if (m27423a instanceof Collection) {
                for (Object obj2 : (Collection) m27423a) {
                    ((Map) this.value).put(obj2, dataSource);
                }
            } else if (m27423a != null) {
                ((Map) this.value).put(m27423a, dataSource);
            }
            this.dataSource = dataSource;
        }
        return this;
    }
}
