package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SureCounter;
import com.callapp.contacts.util.ReflectionUtils;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateCounterMapBuilder.class */
public class UpdateCounterMapBuilder extends UpdateFieldBuilder<Map<Object, SureCounter>> {
    private final boolean lowerCaseIfString;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateCounterMapBuilder(ContactData contactData, ContactField contactField, Map<Object, SureCounter> map, boolean z) {
        super(contactData, contactField);
        this.value = map;
        this.lowerCaseIfString = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean addToCountedMap(Object obj, DataSource dataSource) {
        String str = obj;
        if (this.lowerCaseIfString) {
            str = obj;
            if (obj instanceof String) {
                str = ((String) obj).toLowerCase();
            }
        }
        SureCounter sureCounter = ((Map) this.value).containsKey(str) ? (SureCounter) ((Map) this.value).get(str) : new SureCounter();
        sureCounter.addToCounter(this.contact.isSure(dataSource));
        ((Map) this.value).put(str, sureCounter);
        return true;
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    /* renamed from: useField */
    public UpdateFieldBuilder<Map<Object, SureCounter>> useField2(Object obj, String str, DataSource dataSource) {
        if (obj != null) {
            if (this.contact.isOnlySure() && !this.contact.isSure(dataSource)) {
                return this;
            }
            Object a2 = ReflectionUtils.a(obj, str);
            boolean z = false;
            if (a2 instanceof Collection) {
                loop0: while (true) {
                    z = false;
                    for (Object obj2 : (Collection) a2) {
                        if (addToCountedMap(obj2, dataSource) || z) {
                            z = true;
                        }
                    }
                }
            } else if (a2 != null) {
                z = addToCountedMap(a2, dataSource);
            }
            if (z) {
                this.dataSource = dataSource;
            }
        }
        return this;
    }
}
