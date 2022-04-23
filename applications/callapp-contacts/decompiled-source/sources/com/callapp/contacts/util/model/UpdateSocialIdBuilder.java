package com.callapp.contacts.util.model;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
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
            if (CollectionUtils.a((Set) loadedFields, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
                this.contact.updateFullName();
            }
            if (CollectionUtils.a((Set) loadedFields, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
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
        if (!Objects.a(obj, obj2)) {
            return false;
        }
        return obj == null || obj2 == null || ((JSONSocialNetworkID) obj).isSure() == ((JSONSocialNetworkID) obj2).isSure();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.callapp.common.model.json.JSONSocialNetworkID, T] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.callapp.contacts.util.model.UpdateFieldBuilder<com.callapp.common.model.json.JSONSocialNetworkID> useField(java.lang.Object r6, java.lang.String r7, com.callapp.contacts.model.contact.DataSource r8) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.dontHave
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x002b
            r0 = r5
            r1 = 0
            r0.value = r1
            r0 = r5
            r1 = 1
            r0.sure = r1
            r0 = r5
            com.callapp.contacts.model.contact.DataSource r1 = com.callapp.contacts.model.contact.DataSource.device
            r0.dataSource = r1
            r0 = r5
            com.callapp.contacts.model.contact.DataSource r1 = com.callapp.contacts.model.contact.DataSource.device
            long r1 = r1.priority
            r0.priority = r1
            r0 = r5
            return r0
        L_0x002b:
            r0 = r6
            if (r0 == 0) goto L_0x00c7
            r0 = r5
            boolean r0 = r0.valueIsForced
            if (r0 != 0) goto L_0x00c7
            r0 = r6
            r1 = r7
            java.lang.Object r0 = com.callapp.contacts.util.ReflectionUtils.a(r0, r1)
            com.callapp.common.model.json.JSONSocialNetworkID r0 = (com.callapp.common.model.json.JSONSocialNetworkID) r0
            r7 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00a7
            r0 = r11
            r12 = r0
            r0 = r7
            java.lang.String r0 = r0.getId()
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x00a7
            r0 = r11
            r12 = r0
            r0 = r5
            java.util.Set<java.lang.String> r0 = r0.negatives
            r1 = r7
            java.lang.String r1 = r1.getId()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x00a7
            r0 = r7
            boolean r0 = r0.isSure()
            if (r0 == 0) goto L_0x0081
            r0 = r5
            boolean r0 = r0.sure
            if (r0 != 0) goto L_0x0081
            r0 = r10
            r12 = r0
            goto L_0x00a7
        L_0x0081:
            r0 = r11
            r12 = r0
            r0 = r7
            boolean r0 = r0.isSure()
            r1 = r5
            boolean r1 = r1.sure
            if (r0 != r1) goto L_0x00a7
            r0 = r8
            r1 = r6
            long r0 = com.callapp.contacts.util.model.PriorityManager.getPriority(r0, r1)
            r1 = r5
            long r1 = r1.priority
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00a4
            r0 = r10
            r12 = r0
            goto L_0x00a7
        L_0x00a4:
            r0 = 0
            r12 = r0
        L_0x00a7:
            r0 = r12
            if (r0 == 0) goto L_0x00c7
            r0 = r5
            r1 = r7
            r0.value = r1
            r0 = r5
            r1 = r8
            r0.dataSource = r1
            r0 = r5
            r1 = r8
            r2 = r6
            long r1 = com.callapp.contacts.util.model.PriorityManager.getPriority(r1, r2)
            r0.priority = r1
            r0 = r5
            r1 = r7
            boolean r1 = r1.isSure()
            r0.sure = r1
        L_0x00c7:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.model.UpdateSocialIdBuilder.useField(java.lang.Object, java.lang.String, com.callapp.contacts.model.contact.DataSource):com.callapp.contacts.util.model.UpdateSocialIdBuilder");
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.callapp.common.model.json.JSONSocialNetworkID, T] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.callapp.contacts.util.model.UpdateFieldBuilder<com.callapp.common.model.json.JSONSocialNetworkID> useFieldForced(java.lang.Object r5, com.callapp.contacts.model.contact.DataSource r6, boolean r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.dontHave
            if (r0 == 0) goto L_0x0024
            r0 = r4
            r1 = 0
            r0.value = r1
            r0 = r4
            r1 = 1
            r0.sure = r1
            r0 = r4
            com.callapp.contacts.model.contact.DataSource r1 = com.callapp.contacts.model.contact.DataSource.device
            r0.dataSource = r1
            r0 = r4
            com.callapp.contacts.model.contact.DataSource r1 = com.callapp.contacts.model.contact.DataSource.device
            long r1 = r1.priority
            r0.priority = r1
            r0 = r4
            return r0
        L_0x0024:
            r0 = r5
            if (r0 == 0) goto L_0x0083
            r0 = r5
            r1 = r4
            java.lang.String r1 = r1.fieldName
            java.lang.Object r0 = com.callapp.contacts.util.ReflectionUtils.a(r0, r1)
            com.callapp.common.model.json.JSONSocialNetworkID r0 = (com.callapp.common.model.json.JSONSocialNetworkID) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0083
            r0 = r8
            java.lang.String r0 = r0.getId()
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x0083
            r0 = r4
            java.util.Set<java.lang.String> r0 = r0.negatives
            r1 = r8
            java.lang.String r1 = r1.getId()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0083
            r0 = r4
            r1 = r8
            r0.value = r1
            r0 = r4
            r1 = r6
            r0.dataSource = r1
            r0 = r4
            r1 = r8
            boolean r1 = r1.isSure()
            r0.sure = r1
            r0 = r4
            r1 = r6
            r2 = r5
            long r1 = com.callapp.contacts.util.model.PriorityManager.getPriority(r1, r2)
            r0.priority = r1
            r0 = r4
            boolean r0 = r0.sure
            if (r0 != 0) goto L_0x007e
            r0 = r7
            if (r0 != 0) goto L_0x0083
        L_0x007e:
            r0 = r4
            r1 = 1
            r0.valueIsForced = r1
        L_0x0083:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.model.UpdateSocialIdBuilder.useFieldForced(java.lang.Object, com.callapp.contacts.model.contact.DataSource, boolean):com.callapp.contacts.util.model.UpdateSocialIdBuilder");
    }
}
