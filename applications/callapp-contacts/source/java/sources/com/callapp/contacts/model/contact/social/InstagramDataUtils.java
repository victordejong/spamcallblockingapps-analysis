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
        if (instagramData != null) {
            if (StringUtils.m26045b((CharSequence) instagramData.getLatestMediaCaption())) {
                return instagramData.getLatestMediaCaption();
            }
            if (!StringUtils.m26045b((CharSequence) instagramData.getBio())) {
                return null;
            }
            return instagramData.getBio();
        }
        return null;
    }

    public static boolean setBio(ContactData contactData, InstagramData instagramData, String str) {
        if (!StringUtils.m26042b(str, instagramData.getBio())) {
            instagramData.setBio(str);
            return true;
        }
        return false;
    }

    public static boolean setIsGloballyPrivate(ContactData contactData, InstagramData instagramData, Boolean bool) {
        if (!Objects.m31915a(bool, instagramData.getIsGloballyPrivate())) {
            instagramData.setIsGloballyPrivate(bool);
            return true;
        }
        return false;
    }

    public static boolean setLatestMediaCaption(ContactData contactData, InstagramData instagramData, String str) {
        if (!StringUtils.m26042b(str, instagramData.getLatestMediaCaption())) {
            instagramData.setLatestMediaCaption(str);
            return true;
        }
        return false;
    }

    public static boolean setLatestMedias(ContactData contactData, InstagramData instagramData, List<JSONInstagramMedia> list) {
        if (!StringUtils.m26057a(list, instagramData.getLatestMedias())) {
            instagramData.setLatestMedias(list);
            contactData.updateUploadedPhotoUrls();
            return true;
        }
        return false;
    }

    public static boolean setPrivate(ContactData contactData, InstagramData instagramData, Boolean bool) {
        if (!Objects.m31915a(bool, Boolean.valueOf(instagramData.isPrivate()))) {
            instagramData.setPrivate(bool.booleanValue());
            return true;
        }
        return false;
    }

    public static boolean setWebsite(ContactData contactData, InstagramData instagramData, JSONWebsite jSONWebsite) {
        if (!Objects.m31915a(instagramData.getWebsite(), jSONWebsite)) {
            instagramData.setWebsite(jSONWebsite);
            contactData.updateWebsites();
            return true;
        }
        return false;
    }
}
