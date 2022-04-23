package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Objects;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/FacebookDataUtils.class */
public class FacebookDataUtils {
    private static final SimpleDateFormat[] FACEBOOK_BIRTHDAY_FORMAT = {new SimpleDateFormat("MM/dd/yyyy"), new SimpleDateFormat("MM/dd")};

    public static String getDefaultText(FacebookData facebookData) {
        if (facebookData == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) facebookData.getLatestPost())) {
            return facebookData.getLatestPost();
        }
        if (StringUtils.b((CharSequence) facebookData.getAbout())) {
            return facebookData.getAbout();
        }
        if (StringUtils.b((CharSequence) facebookData.getBio())) {
            return facebookData.getBio();
        }
        if (StringUtils.b((CharSequence) facebookData.getLikes())) {
            return facebookData.getLikes();
        }
        if (StringUtils.b((CharSequence) facebookData.getGroups())) {
            return facebookData.getGroups();
        }
        if (StringUtils.b((CharSequence) facebookData.getHomeTown())) {
            return facebookData.getHomeTown();
        }
        if (StringUtils.b((CharSequence) facebookData.getActivities())) {
            return facebookData.getActivities();
        }
        return null;
    }

    public static JSONDate getFacebookBirthDate(String str) {
        Date date;
        if (StringUtils.b((CharSequence) str)) {
            SimpleDateFormat[] simpleDateFormatArr = FACEBOOK_BIRTHDAY_FORMAT;
            int length = simpleDateFormatArr.length;
            Date date2 = null;
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
        } else {
            date = null;
        }
        if (date != null) {
            return new JSONDate(date);
        }
        return null;
    }

    public static boolean setAbout(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(str, facebookData.getAbout())) {
            return false;
        }
        facebookData.setAbout(str);
        return true;
    }

    public static boolean setAddress(ContactData contactData, FacebookData facebookData, JSONAddress jSONAddress) {
        if (Objects.a(jSONAddress, facebookData.getAddress())) {
            return false;
        }
        facebookData.setAddress(jSONAddress);
        contactData.updateAddresses();
        return true;
    }

    public static boolean setBio(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(str, facebookData.getBio())) {
            return false;
        }
        facebookData.setBio(str);
        return true;
    }

    public static boolean setBirthDate(ContactData contactData, FacebookData facebookData, JSONDate jSONDate) {
        if (Objects.a(facebookData.getBirthday(), jSONDate)) {
            return false;
        }
        facebookData.setBirthday(jSONDate);
        contactData.updateBirthDate();
        return true;
    }

    public static boolean setCategories(ContactData contactData, FacebookData facebookData, Set<JSONCategory> set) {
        if (CollectionUtils.a((Collection) facebookData.getCategories(), (Collection) set)) {
            return false;
        }
        facebookData.setCategories(set);
        contactData.updateCategories();
        return true;
    }

    public static boolean setEmail(ContactData contactData, FacebookData facebookData, JSONEmail jSONEmail) {
        if (Objects.a(facebookData.getEmail(), jSONEmail)) {
            return false;
        }
        facebookData.setEmail(jSONEmail);
        contactData.updateEmails();
        return true;
    }

    public static boolean setFqlType(ContactData contactData, FacebookData facebookData, String str) {
        if (Objects.a(facebookData.getFqlType(), str)) {
            return false;
        }
        facebookData.setFqlType(str);
        return true;
    }

    public static boolean setHometown(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(str, facebookData.getHomeTown())) {
            return false;
        }
        facebookData.setHomeTown(str);
        return true;
    }

    public static boolean setLatLng(ContactData contactData, FacebookData facebookData, Double d2, Double d3) {
        if (Objects.a(Double.valueOf(facebookData.getLat()), d2) && Objects.a(Double.valueOf(facebookData.getLng()), d3)) {
            return false;
        }
        facebookData.setLat(d2.doubleValue());
        facebookData.setLng(d3.doubleValue());
        contactData.updateLatLng();
        return true;
    }

    public static boolean setLatestMessage(ContactData contactData, FacebookData facebookData, SerializablePair<Date, String> serializablePair) {
        if (StringUtils.a(serializablePair, facebookData.getLatestMessage())) {
            return false;
        }
        facebookData.setLatestMessage(serializablePair);
        contactData.fireChange(ContactField.facebookData);
        return true;
    }

    public static boolean setLatestPost(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(str, facebookData.getLatestPost())) {
            return false;
        }
        facebookData.setLatestPost(str);
        contactData.fireChange(ContactField.facebookData);
        return true;
    }

    public static boolean setLikes(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(str, facebookData.getLikes())) {
            return false;
        }
        facebookData.setLikes(str);
        contactData.fireChange(ContactField.facebookData);
        return true;
    }

    public static boolean setOpeningHours(ContactData contactData, FacebookData facebookData, JSONOpeningHours jSONOpeningHours) {
        if (Objects.a(facebookData.getOpeningHours(), jSONOpeningHours)) {
            return false;
        }
        facebookData.setOpeningHours(jSONOpeningHours);
        contactData.updateOpeningHours();
        return true;
    }

    public static boolean setOrganizations(ContactData contactData, FacebookData facebookData, Collection<JSONOrgData> collection) {
        if (CollectionUtils.a(facebookData.getOrganizations(), collection)) {
            return false;
        }
        facebookData.setOrganizations(collection);
        contactData.updateOrganizations();
        return true;
    }

    public static boolean setUploadedPhotosUrl(ContactData contactData, FacebookData facebookData, List<UploadedPhoto> list) {
        if (StringUtils.a(list, facebookData.getUploadedPhotosUrl())) {
            return false;
        }
        facebookData.setUploadedPhotosUrl(list);
        contactData.updateUploadedPhotoUrls();
        return true;
    }

    public static boolean setWebsites(ContactData contactData, FacebookData facebookData, Collection<JSONWebsite> collection) {
        if (CollectionUtils.a(facebookData.getWebsites(), collection)) {
            return false;
        }
        facebookData.setWebsites(collection);
        contactData.updateWebsites();
        return true;
    }

    public static boolean setWorksAt(ContactData contactData, FacebookData facebookData, String str) {
        if (StringUtils.b(facebookData.getWorksAtText(), str)) {
            return false;
        }
        facebookData.setWorksAtText(str);
        return true;
    }
}
