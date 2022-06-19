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
        if (StringUtils.m26045b((CharSequence) facebookData.getLatestPost())) {
            return facebookData.getLatestPost();
        }
        if (StringUtils.m26045b((CharSequence) facebookData.getAbout())) {
            return facebookData.getAbout();
        }
        if (StringUtils.m26045b((CharSequence) facebookData.getBio())) {
            return facebookData.getBio();
        }
        if (StringUtils.m26045b((CharSequence) facebookData.getLikes())) {
            return facebookData.getLikes();
        }
        if (StringUtils.m26045b((CharSequence) facebookData.getGroups())) {
            return facebookData.getGroups();
        }
        if (StringUtils.m26045b((CharSequence) facebookData.getHomeTown())) {
            return facebookData.getHomeTown();
        }
        if (!StringUtils.m26045b((CharSequence) facebookData.getActivities())) {
            return null;
        }
        return facebookData.getActivities();
    }

    public static JSONDate getFacebookBirthDate(String str) {
        Date date;
        if (StringUtils.m26045b((CharSequence) str)) {
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
        if (!StringUtils.m26042b(str, facebookData.getAbout())) {
            facebookData.setAbout(str);
            return true;
        }
        return false;
    }

    public static boolean setAddress(ContactData contactData, FacebookData facebookData, JSONAddress jSONAddress) {
        if (!Objects.m31915a(jSONAddress, facebookData.getAddress())) {
            facebookData.setAddress(jSONAddress);
            contactData.updateAddresses();
            return true;
        }
        return false;
    }

    public static boolean setBio(ContactData contactData, FacebookData facebookData, String str) {
        if (!StringUtils.m26042b(str, facebookData.getBio())) {
            facebookData.setBio(str);
            return true;
        }
        return false;
    }

    public static boolean setBirthDate(ContactData contactData, FacebookData facebookData, JSONDate jSONDate) {
        if (!Objects.m31915a(facebookData.getBirthday(), jSONDate)) {
            facebookData.setBirthday(jSONDate);
            contactData.updateBirthDate();
            return true;
        }
        return false;
    }

    public static boolean setCategories(ContactData contactData, FacebookData facebookData, Set<JSONCategory> set) {
        if (!CollectionUtils.m26074a((Collection) facebookData.getCategories(), (Collection) set)) {
            facebookData.setCategories(set);
            contactData.updateCategories();
            return true;
        }
        return false;
    }

    public static boolean setEmail(ContactData contactData, FacebookData facebookData, JSONEmail jSONEmail) {
        if (!Objects.m31915a(facebookData.getEmail(), jSONEmail)) {
            facebookData.setEmail(jSONEmail);
            contactData.updateEmails();
            return true;
        }
        return false;
    }

    public static boolean setFqlType(ContactData contactData, FacebookData facebookData, String str) {
        if (!Objects.m31915a(facebookData.getFqlType(), str)) {
            facebookData.setFqlType(str);
            return true;
        }
        return false;
    }

    public static boolean setHometown(ContactData contactData, FacebookData facebookData, String str) {
        if (!StringUtils.m26042b(str, facebookData.getHomeTown())) {
            facebookData.setHomeTown(str);
            return true;
        }
        return false;
    }

    public static boolean setLatLng(ContactData contactData, FacebookData facebookData, Double d, Double d2) {
        if (!Objects.m31915a(Double.valueOf(facebookData.getLat()), d) || !Objects.m31915a(Double.valueOf(facebookData.getLng()), d2)) {
            facebookData.setLat(d.doubleValue());
            facebookData.setLng(d2.doubleValue());
            contactData.updateLatLng();
            return true;
        }
        return false;
    }

    public static boolean setLatestMessage(ContactData contactData, FacebookData facebookData, SerializablePair<Date, String> serializablePair) {
        if (!StringUtils.m26057a(serializablePair, facebookData.getLatestMessage())) {
            facebookData.setLatestMessage(serializablePair);
            contactData.fireChange(ContactField.facebookData);
            return true;
        }
        return false;
    }

    public static boolean setLatestPost(ContactData contactData, FacebookData facebookData, String str) {
        if (!StringUtils.m26042b(str, facebookData.getLatestPost())) {
            facebookData.setLatestPost(str);
            contactData.fireChange(ContactField.facebookData);
            return true;
        }
        return false;
    }

    public static boolean setLikes(ContactData contactData, FacebookData facebookData, String str) {
        if (!StringUtils.m26042b(str, facebookData.getLikes())) {
            facebookData.setLikes(str);
            contactData.fireChange(ContactField.facebookData);
            return true;
        }
        return false;
    }

    public static boolean setOpeningHours(ContactData contactData, FacebookData facebookData, JSONOpeningHours jSONOpeningHours) {
        if (!Objects.m31915a(facebookData.getOpeningHours(), jSONOpeningHours)) {
            facebookData.setOpeningHours(jSONOpeningHours);
            contactData.updateOpeningHours();
            return true;
        }
        return false;
    }

    public static boolean setOrganizations(ContactData contactData, FacebookData facebookData, Collection<JSONOrgData> collection) {
        if (!CollectionUtils.m26074a(facebookData.getOrganizations(), collection)) {
            facebookData.setOrganizations(collection);
            contactData.updateOrganizations();
            return true;
        }
        return false;
    }

    public static boolean setUploadedPhotosUrl(ContactData contactData, FacebookData facebookData, List<UploadedPhoto> list) {
        if (!StringUtils.m26057a(list, facebookData.getUploadedPhotosUrl())) {
            facebookData.setUploadedPhotosUrl(list);
            contactData.updateUploadedPhotoUrls();
            return true;
        }
        return false;
    }

    public static boolean setWebsites(ContactData contactData, FacebookData facebookData, Collection<JSONWebsite> collection) {
        if (!CollectionUtils.m26074a(facebookData.getWebsites(), collection)) {
            facebookData.setWebsites(collection);
            contactData.updateWebsites();
            return true;
        }
        return false;
    }

    public static boolean setWorksAt(ContactData contactData, FacebookData facebookData, String str) {
        if (!StringUtils.m26042b(facebookData.getWorksAtText(), str)) {
            facebookData.setWorksAtText(str);
            return true;
        }
        return false;
    }
}
