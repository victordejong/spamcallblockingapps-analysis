package com.callapp.contacts.model.contact.social;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/TwitterDataUtils.class */
public class TwitterDataUtils {
    public static String getDefaultText(TwitterData twitterData) {
        if (twitterData == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) twitterData.getLastTweet())) {
            return twitterData.getLastTweet();
        }
        if (StringUtils.b((CharSequence) twitterData.getDescription())) {
            return twitterData.getDescription();
        }
        return null;
    }

    public static boolean setDescription(ContactData contactData, TwitterData twitterData, String str) {
        if (StringUtils.b(twitterData.getDescription(), str)) {
            return false;
        }
        twitterData.setDescription(str);
        contactData.fireChange(ContactField.twitterData);
        return true;
    }

    public static boolean setLastTweet(ContactData contactData, TwitterData twitterData, String str) {
        if (StringUtils.b(twitterData.getLastTweet(), str)) {
            return false;
        }
        twitterData.setLastTweet(str);
        contactData.fireChange(ContactField.twitterData);
        return true;
    }
}
