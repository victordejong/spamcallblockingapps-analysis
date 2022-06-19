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
        if (StringUtils.m26045b((CharSequence) twitterData.getLastTweet())) {
            return twitterData.getLastTweet();
        }
        if (!StringUtils.m26045b((CharSequence) twitterData.getDescription())) {
            return null;
        }
        return twitterData.getDescription();
    }

    public static boolean setDescription(ContactData contactData, TwitterData twitterData, String str) {
        if (!StringUtils.m26042b(twitterData.getDescription(), str)) {
            twitterData.setDescription(str);
            contactData.fireChange(ContactField.twitterData);
            return true;
        }
        return false;
    }

    public static boolean setLastTweet(ContactData contactData, TwitterData twitterData, String str) {
        if (!StringUtils.m26042b(twitterData.getLastTweet(), str)) {
            twitterData.setLastTweet(str);
            contactData.fireChange(ContactField.twitterData);
            return true;
        }
        return false;
    }
}
