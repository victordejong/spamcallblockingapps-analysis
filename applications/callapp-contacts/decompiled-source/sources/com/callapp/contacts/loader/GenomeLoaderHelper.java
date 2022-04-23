package com.callapp.contacts.loader;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.framework.phone.Phone;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/GenomeLoaderHelper.class */
public class GenomeLoaderHelper {
    public static String a(ContactData contactData) {
        String str = "";
        for (Phone phone : ContactDataUtils.getPrioritizedPhoneList(contactData.getPhonesList())) {
            str = str + VerificationLanguage.REGION_PREFIX + phone.a();
        }
        return String.format("%s%s-%s", LocalGenomeLoader.class.getSimpleName(), str, Boolean.valueOf(contactData.isContactInDevice()));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r4, java.util.List<com.callapp.framework.phone.Phone> r5, java.util.Collection<com.callapp.common.model.json.JSONEmail> r6, boolean r7, boolean r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.GenomeLoaderHelper.a(java.lang.String, java.util.List, java.util.Collection, boolean, boolean, java.lang.String, java.lang.String):java.lang.String");
    }
}
