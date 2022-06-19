package com.callapp.contacts.loader;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.framework.phone.Phone;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/GenomeLoaderHelper.class */
public class GenomeLoaderHelper {
    /* renamed from: a */
    public static String m28939a(ContactData contactData) {
        Iterator<Phone> it2 = ContactDataUtils.getPrioritizedPhoneList(contactData.getPhonesList()).iterator();
        String str = "";
        while (true) {
            String str2 = str;
            if (it2.hasNext()) {
                Phone next = it2.next();
                str = str2 + VerificationLanguage.REGION_PREFIX + next.m26101a();
            } else {
                return String.format("%s%s-%s", LocalGenomeLoader.class.getSimpleName(), str2, Boolean.valueOf(contactData.isContactInDevice()));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00c2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m28938a(java.lang.String r4, java.util.List<com.callapp.framework.phone.Phone> r5, java.util.Collection<com.callapp.common.model.json.JSONEmail> r6, boolean r7, boolean r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.GenomeLoaderHelper.m28938a(java.lang.String, java.util.List, java.util.Collection, boolean, boolean, java.lang.String, java.lang.String):java.lang.String");
    }
}
