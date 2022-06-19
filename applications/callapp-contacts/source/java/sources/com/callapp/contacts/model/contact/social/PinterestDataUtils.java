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
        if (!StringUtils.m26042b(pinterestData.getBio(), str)) {
            pinterestData.setBio(str);
            contactData.fireChange(ContactField.pinterestData);
            return true;
        }
        return false;
    }

    public static boolean setPubProfileUrl(ContactData contactData, PinterestData pinterestData, String str) {
        if (!StringUtils.m26042b(pinterestData.getPubProfileUrl(), str)) {
            pinterestData.setPubProfileUrl(str);
            contactData.fireChange(ContactField.pinterestData);
            return true;
        }
        return false;
    }
}
