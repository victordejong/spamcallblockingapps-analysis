package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONInstagramMedia;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Objects;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/InstagramDataUtils.class */
public class InstagramDataUtils {
    public static String getDefaultText(InstagramData instagramData) {
        if (instagramData == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) instagramData.getLatestMediaCaption())) {
            return instagramData.getLatestMediaCaption();
        }
        if (StringUtils.b((CharSequence) instagramData.getBio())) {
            return instagramData.getBio();
        }
        return null;
    }

    public static boolean setBio(ContactData contactData, InstagramData instagramData, String str) {
        if (StringUtils.b(str, instagramData.getBio())) {
            return false;
        }
        instagramData.setBio(str);
        return true;
    }

    public static boolean setIsGloballyPrivate(ContactData contactData, InstagramData instagramData, Boolean bool) {
        if (Objects.a(bool, instagramData.getIsGloballyPrivate())) {
            return false;
        }
        instagramData.setIsGloballyPrivate(bool);
        return true;
    }

    public static boolean setLatestMediaCaption(ContactData contactData, InstagramData instagramData, String str) {
        if (StringUtils.b(str, instagramData.getLatestMediaCaption())) {
            return false;
        }
        instagramData.setLatestMediaCaption(str);
        return true;
    }

    public static boolean setLatestMedias(ContactData contactData, InstagramData instagramData, List<JSONInstagramMedia> list) {
        if (StringUtils.a(list, instagramData.getLatestMedias())) {
            return false;
        }
        instagramData.setLatestMedias(list);
        contactData.updateUploadedPhotoUrls();
        return true;
    }

    public static boolean setPrivate(ContactData contactData, InstagramData instagramData, Boolean bool) {
        if (Objects.a(bool, Boolean.valueOf(instagramData.isPrivate()))) {
            return false;
        }
        instagramData.setPrivate(bool.booleanValue());
        return true;
    }

    public static boolean setWebsite(ContactData contactData, InstagramData instagramData, JSONWebsite jSONWebsite) {
        if (Objects.a(instagramData.getWebsite(), jSONWebsite)) {
            return false;
        }
        instagramData.setWebsite(jSONWebsite);
        contactData.updateWebsites();
        return true;
    }
}
