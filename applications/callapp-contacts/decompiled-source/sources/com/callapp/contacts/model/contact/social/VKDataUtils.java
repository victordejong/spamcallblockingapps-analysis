package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Objects;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.VideoData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/VKDataUtils.class */
public class VKDataUtils {
    private static final SimpleDateFormat[] VK_BIRTHDAY_FORMAT = {new SimpleDateFormat("dd.MM.yyyy"), new SimpleDateFormat("dd.MM")};

    public static String getDefaultText(VKData vKData) {
        if (vKData == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) vKData.getLatestPost())) {
            return vKData.getLatestPost();
        }
        if (StringUtils.b((CharSequence) vKData.getAbout())) {
            return vKData.getAbout();
        }
        return null;
    }

    public static Date getVKBirthDate(String str) {
        Date date = null;
        Date date2 = null;
        if (StringUtils.b((CharSequence) str)) {
            SimpleDateFormat[] simpleDateFormatArr = VK_BIRTHDAY_FORMAT;
            int length = simpleDateFormatArr.length;
            int i = 0;
            while (true) {
                date = date2;
                if (i >= length) {
                    break;
                }
                SimpleDateFormat simpleDateFormat = simpleDateFormatArr[i];
                simpleDateFormat.setLenient(false);
                try {
                    date = simpleDateFormat.parse(str);
                    date2 = date;
                } catch (IllegalStateException | ParseException e) {
                }
                if (date != null) {
                    break;
                }
                i++;
            }
        }
        return date;
    }

    public static boolean setAbout(ContactData contactData, VKData vKData, String str) {
        if (StringUtils.b(vKData.getAbout(), str)) {
            return false;
        }
        vKData.setAbout(str);
        contactData.fireChange(ContactField.vkData);
        return true;
    }

    public static boolean setAddress(ContactData contactData, VKData vKData, JSONAddress jSONAddress) {
        if (StringUtils.a(vKData.getAddress(), jSONAddress)) {
            return false;
        }
        vKData.setAddress(jSONAddress);
        contactData.updateAddresses();
        return true;
    }

    public static boolean setBirthDate(ContactData contactData, VKData vKData, Date date) {
        if (Objects.a(vKData.getBirthDate(), date)) {
            return false;
        }
        vKData.setBirthDate(date);
        contactData.updateBirthDate();
        return true;
    }

    public static boolean setFacebookId(ContactData contactData, VKData vKData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (StringUtils.a(vKData.getFacebookId(), jSONSocialNetworkID)) {
            return false;
        }
        vKData.setFacebookId(jSONSocialNetworkID);
        contactData.updateFacebookId();
        return true;
    }

    public static boolean setImAddresses(ContactData contactData, VKData vKData, Collection<JSONIMaddress> collection) {
        if (StringUtils.a(vKData.getImAddresses(), collection)) {
            return false;
        }
        vKData.setImAddresses(collection);
        contactData.updateImAddresses();
        return true;
    }

    public static boolean setLatestPost(ContactData contactData, VKData vKData, String str) {
        if (StringUtils.b(str, vKData.getLatestPost())) {
            return false;
        }
        vKData.setLatestPost(str);
        contactData.fireChange(ContactField.vkData);
        return true;
    }

    public static boolean setPhones(ContactData contactData, VKData vKData, List<Phone> list) {
        if (Objects.a(vKData.getPhones(), list)) {
            return false;
        }
        vKData.setPhones(list);
        contactData.updatePhones();
        return true;
    }

    public static boolean setPubProfileUrl(ContactData contactData, VKData vKData, String str) {
        if (StringUtils.b(vKData.getPubProfileUrl(), str)) {
            return false;
        }
        vKData.setPubProfileUrl(str);
        contactData.fireChange(ContactField.vkData);
        return true;
    }

    public static boolean setTwitterScreenName(ContactData contactData, VKData vKData, JSONSocialNetworkID jSONSocialNetworkID) {
        if (StringUtils.a(vKData.getTwitterScreenName(), jSONSocialNetworkID)) {
            return false;
        }
        vKData.setTwitterScreenName(jSONSocialNetworkID);
        contactData.updateTwitterScreenName();
        return true;
    }

    public static boolean setUploadedPhotosUrl(ContactData contactData, VKData vKData, List<UploadedPhoto> list) {
        if (StringUtils.a(list, vKData.getUploadedPhotosUrl())) {
            return false;
        }
        vKData.setUploadedPhotosUrl(list);
        contactData.updateUploadedPhotoUrls();
        return true;
    }

    public static boolean setUploadedVideosUrl(ContactData contactData, VKData vKData, List<VideoData> list) {
        if (StringUtils.a(list, vKData.getVideos())) {
            return false;
        }
        vKData.setVideos(list);
        contactData.updateWebVideos();
        return true;
    }

    public static boolean setWebsites(ContactData contactData, VKData vKData, Collection<JSONWebsite> collection) {
        if (CollectionUtils.a(vKData.getWebsites(), collection)) {
            return false;
        }
        vKData.setWebsites(collection);
        contactData.updateWebsites();
        return true;
    }
}
