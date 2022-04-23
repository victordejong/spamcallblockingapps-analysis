package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateNameBuilder.class */
public class UpdateNameBuilder extends UpdateFieldBuilder<String> {
    private DataSource forcedDataSource;

    public UpdateNameBuilder(ContactData contactData, ContactField contactField, DataSource dataSource) {
        super(contactData, contactField);
        this.forcedDataSource = dataSource;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDataSourcePriority(java.lang.String r7, java.lang.Object r8, com.callapp.contacts.model.contact.DataSource r9) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            long r0 = super.getDataSourcePriority(r1, r2, r3)
            r10 = r0
            r0 = r6
            com.callapp.contacts.model.contact.DataSource r0 = r0.forcedDataSource
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0024
            r0 = r9
            r1 = r8
            if (r0 != r1) goto L_0x0024
            com.callapp.contacts.model.contact.DataSource r0 = com.callapp.contacts.model.contact.DataSource.device
            long r0 = r0.priority
            r1 = 1
            long r0 = r0 - r1
            r12 = r0
            goto L_0x0052
        L_0x0024:
            r0 = r10
            r12 = r0
            java.util.EnumSet<com.callapp.contacts.model.contact.DataSource> r0 = com.callapp.contacts.model.contact.DataSource.PLACES_DATA_SOURCE
            r1 = 1
            com.callapp.contacts.model.contact.DataSource[] r1 = new com.callapp.contacts.model.contact.DataSource[r1]
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4
            boolean r0 = com.callapp.framework.util.CollectionUtils.a(r0, r1)
            if (r0 != 0) goto L_0x0052
            r0 = r10
            r12 = r0
            r0 = r9
            com.callapp.contacts.model.contact.DataSource r1 = com.callapp.contacts.model.contact.DataSource.intent
            if (r0 == r1) goto L_0x0052
            r0 = r10
            r12 = r0
            r0 = r7
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 == 0) goto L_0x0052
            r0 = 0
            r12 = r0
        L_0x0052:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.model.UpdateNameBuilder.getDataSourcePriority(java.lang.String, java.lang.Object, com.callapp.contacts.model.contact.DataSource):long");
    }

    public boolean isValueChangedAndCanBeUse(String str, String str2) {
        boolean isValueChangedAndCanBeUse = super.isValueChangedAndCanBeUse(str, str2);
        return isValueChangedAndCanBeUse ? StringUtils.q(str) : isValueChangedAndCanBeUse;
    }

    public void setValue(String str, DataSource dataSource) {
        super.setValue((UpdateNameBuilder) StringUtils.o(str), dataSource);
    }
}
