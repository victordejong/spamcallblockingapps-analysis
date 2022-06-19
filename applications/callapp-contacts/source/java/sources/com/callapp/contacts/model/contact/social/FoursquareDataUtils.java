package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/FoursquareDataUtils.class */
public class FoursquareDataUtils {
    private static final String MAYORSHIP_START_TEXT = "Mayor @ ";

    public static String getDefaultText(FoursquareData foursquareData) {
        if (foursquareData != null && !StringUtils.m26059a((CharSequence) foursquareData.getMayorships())) {
            return MAYORSHIP_START_TEXT + foursquareData.getMayorships();
        }
        return null;
    }

    public static boolean setEmail(ContactData contactData, FoursquareData foursquareData, JSONEmail jSONEmail) {
        if (!Objects.m31915a(foursquareData.getEmail(), jSONEmail)) {
            foursquareData.setEmail(jSONEmail);
            contactData.updateEmails();
            return true;
        }
        return false;
    }

    public static boolean setFacebookId(ContactData contactData, FoursquareData foursquareData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (!Objects.m31915a(foursquareData.getFacebookId(), jSONSocialNetworkID)) {
            foursquareData.setFacebookId(jSONSocialNetworkID);
            contactData.updateFacebookId();
            return true;
        }
        return false;
    }

    public static boolean setMayorships(ContactData contactData, FoursquareData foursquareData, String str) {
        if (!StringUtils.m26042b(foursquareData.getMayorships(), str)) {
            foursquareData.setMayorships(str);
            contactData.fireChange(ContactField.foursquareData);
            return true;
        }
        return false;
    }

    public static boolean setPhone(ContactData contactData, FoursquareData foursquareData, Phone phone) {
        if (!Objects.m31915a(foursquareData.getPhone(), phone)) {
            foursquareData.setPhone(phone);
            contactData.updatePhones();
            return true;
        }
        return false;
    }

    public static boolean setTwitterScreenName(ContactData contactData, FoursquareData foursquareData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (!Objects.m31915a(foursquareData.getTwitterScreenName(), jSONSocialNetworkID)) {
            foursquareData.setTwitterScreenName(jSONSocialNetworkID);
            contactData.updateTwitterScreenName();
            return true;
        }
        return false;
    }
}
