package com.callapp.contacts.util.model;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateSocialIdBuilder.class */
public class UpdateSocialIdBuilder extends UpdateFieldBuilder<JSONSocialNetworkID> {
    private final boolean dontHave;
    private final Set<String> negatives;

    public UpdateSocialIdBuilder(ContactData contactData, ContactField contactField, int i) {
        super(contactData, contactField);
        Set<String> negatives = contactData.getNegatives(i);
        this.negatives = negatives;
        this.dontHave = negatives.contains("DONTHAVE");
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public boolean execute() {
        boolean execute = super.execute();
        if (execute) {
            Set<ContactField> loadedFields = this.contact.getLoadedFields();
            if (CollectionUtils.m26070a((Set) loadedFields, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
                this.contact.updateFullName();
            }
            if (CollectionUtils.m26070a((Set) loadedFields, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
                this.contact.updatePhoto();
            }
            if (loadedFields.contains(ContactField.birthday)) {
                this.contact.updateBirthDate();
            }
        }
        return execute;
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    protected boolean isFieldValueEquals(Object obj, Object obj2) {
        if (!Objects.m31915a(obj, obj2)) {
            return false;
        }
        return obj == null || obj2 == null || ((JSONSocialNetworkID) obj).isSure() == ((JSONSocialNetworkID) obj2).isSure();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.callapp.common.model.json.JSONSocialNetworkID, T] */
    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public UpdateFieldBuilder<JSONSocialNetworkID> useField(Object obj, String str, DataSource dataSource) {
        if (this.dontHave) {
            this.value = null;
            this.sure = true;
            this.dataSource = DataSource.device;
            this.priority = DataSource.device.priority;
            return this;
        }
        if (obj != null && !this.valueIsForced) {
            ?? r0 = (JSONSocialNetworkID) ReflectionUtils.m27423a(obj, str);
            boolean z = false;
            if (r0 != 0) {
                z = false;
                if (StringUtils.m26045b((CharSequence) r0.getId())) {
                    z = false;
                    if (!this.negatives.contains(r0.getId())) {
                        if (!r0.isSure() || this.sure) {
                            z = false;
                            if (r0.isSure() == this.sure) {
                                z = PriorityManager.getPriority(dataSource, obj) > this.priority;
                            }
                        } else {
                            z = true;
                        }
                    }
                }
            }
            if (z) {
                this.value = r0;
                this.dataSource = dataSource;
                this.priority = PriorityManager.getPriority(dataSource, obj);
                this.sure = r0.isSure();
            }
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.callapp.common.model.json.JSONSocialNetworkID, T] */
    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public UpdateFieldBuilder<JSONSocialNetworkID> useFieldForced(Object obj, DataSource dataSource, boolean z) {
        ?? r0;
        if (this.dontHave) {
            this.value = null;
            this.sure = true;
            this.dataSource = DataSource.device;
            this.priority = DataSource.device.priority;
            return this;
        }
        if (obj != null && (r0 = (JSONSocialNetworkID) ReflectionUtils.m27423a(obj, this.fieldName)) != 0 && StringUtils.m26045b((CharSequence) r0.getId()) && !this.negatives.contains(r0.getId())) {
            this.value = r0;
            this.dataSource = dataSource;
            this.sure = r0.isSure();
            this.priority = PriorityManager.getPriority(dataSource, obj);
            if (this.sure || !z) {
                this.valueIsForced = true;
            }
        }
        return this;
    }
}
