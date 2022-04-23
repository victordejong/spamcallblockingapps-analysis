package com.callapp.contacts.model.contact.social;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/PinterestDataUtils.class */
public class PinterestDataUtils {
    public static String getDefaultText(PinterestData pinterestData) {
        if (pinterestData == null) {
            return null;
        }
        return pinterestData.getBio();
    }

    public static boolean setBio(ContactData contactData, PinterestData pinterestData, String str) {
        if (StringUtils.b(pinterestData.getBio(), str)) {
            return false;
        }
        pinterestData.setBio(str);
        contactData.fireChange(ContactField.pinterestData);
        return true;
    }

    public static boolean setPubProfileUrl(ContactData contactData, PinterestData pinterestData, String str) {
        if (StringUtils.b(pinterestData.getPubProfileUrl(), str)) {
            return false;
        }
        pinterestData.setPubProfileUrl(str);
        contactData.fireChange(ContactField.pinterestData);
        return true;
    }
}
