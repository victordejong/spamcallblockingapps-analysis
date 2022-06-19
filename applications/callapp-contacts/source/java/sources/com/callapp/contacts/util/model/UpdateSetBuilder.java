package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.ReflectionUtils;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateSetBuilder.class */
public class UpdateSetBuilder extends UpdateFieldBuilder<Set> {
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateSetBuilder(ContactData contactData, ContactField contactField, Set set) {
        super(contactData, contactField);
        this.value = set;
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public UpdateFieldBuilder<Set> useField(Object obj, String str, DataSource dataSource) {
        if (obj != null) {
            if (this.contact.isOnlySure() && !this.contact.isSure(dataSource)) {
                return this;
            }
            Object m27423a = ReflectionUtils.m27423a(obj, str);
            if (m27423a instanceof Collection) {
                ((Set) this.value).addAll((Collection) m27423a);
            } else if (m27423a != null) {
                ((Set) this.value).add(m27423a);
            }
            this.dataSource = dataSource;
        }
        return this;
    }

    public UpdateFieldBuilder<Set> useValue(Set set, Object obj, DataSource dataSource) {
        throw new UnsupportedOperationException();
    }
}
