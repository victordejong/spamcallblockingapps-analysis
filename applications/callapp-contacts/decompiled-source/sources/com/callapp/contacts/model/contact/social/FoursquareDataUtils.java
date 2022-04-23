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
        if (foursquareData == null || StringUtils.a((CharSequence) foursquareData.getMayorships())) {
            return null;
        }
        return MAYORSHIP_START_TEXT + foursquareData.getMayorships();
    }

    public static boolean setEmail(ContactData contactData, FoursquareData foursquareData, JSONEmail jSONEmail) {
        if (Objects.a(foursquareData.getEmail(), jSONEmail)) {
            return false;
        }
        foursquareData.setEmail(jSONEmail);
        contactData.updateEmails();
        return true;
    }

    public static boolean setFacebookId(ContactData contactData, FoursquareData foursquareData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (Objects.a(foursquareData.getFacebookId(), jSONSocialNetworkID)) {
            return false;
        }
        foursquareData.setFacebookId(jSONSocialNetworkID);
        contactData.updateFacebookId();
        return true;
    }

    public static boolean setMayorships(ContactData contactData, FoursquareData foursquareData, String str) {
        if (StringUtils.b(foursquareData.getMayorships(), str)) {
            return false;
        }
        foursquareData.setMayorships(str);
        contactData.fireChange(ContactField.foursquareData);
        return true;
    }

    public static boolean setPhone(ContactData contactData, FoursquareData foursquareData, Phone phone) {
        if (Objects.a(foursquareData.getPhone(), phone)) {
            return false;
        }
        foursquareData.setPhone(phone);
        contactData.updatePhones();
        return true;
    }

    public static boolean setTwitterScreenName(ContactData contactData, FoursquareData foursquareData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (Objects.a(foursquareData.getTwitterScreenName(), jSONSocialNetworkID)) {
            return false;
        }
        foursquareData.setTwitterScreenName(jSONSocialNetworkID);
        contactData.updateTwitterScreenName();
        return true;
    }
}
