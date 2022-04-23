package com.callapp.contacts.model.contact.social;

import com.callapp.contacts.loader.api.LoaderFlags;
import com.callapp.contacts.model.contact.ContactField;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/ContactFieldEnumSets.class */
public class ContactFieldEnumSets {
    public static final EnumSet<ContactField> ALL = EnumSet.allOf(ContactField.class);
    public static final EnumSet<ContactField> SOCIAL_NETWORKS_IDS = EnumSet.of(ContactField.facebookId, ContactField.twitterScreenName, ContactField.foursquareId, ContactField.instagramId, ContactField.pinterestId, ContactField.vkId);
    public static final EnumSet<ContactField> SYNC_SEARCH_SOCIAL_NETWORKS = EnumSet.of(ContactField.facebookSearchResults, ContactField.twitterSearchResults, ContactField.foursquareSearchResults, ContactField.instagramSearchResults, ContactField.pinterestSearchResults, ContactField.vkSearchResults);
    public static final EnumSet<ContactField> NAME_FIELDS = EnumSet.of(ContactField.fullName, ContactField.names);
    public static final EnumSet<ContactField> PHOTO_FIELDS = EnumSet.of(ContactField.photoUrl);
    public static final EnumSet<ContactField> PHOTO_AND_NAME_FIELDS = EnumSet.of(ContactField.photoUrl, ContactField.names, ContactField.fullName);
    public static final EnumSet<ContactField> DEVICE_ID = EnumSet.of(ContactField.deviceId);
    public static final EnumSet<ContactField> DEVICE_ID_MONITORED = EnumSet.of(ContactField.deviceId, ContactField.deviceIdChanged);
    public static final EnumSet<ContactField> NONE = EnumSet.noneOf(ContactField.class);
    public static final EnumSet<LoaderFlags> LOADER_FLAGSES_NONE = EnumSet.noneOf(LoaderFlags.class);
    public static final EnumSet<ContactField> CONTACTS_ADAPTER_LOAD_FIELD = EnumSet.of(ContactField.deviceId, ContactField.photoUrl, ContactField.isIncognito);
    public static final EnumSet<ContactField> CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD = EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.photoUrl, ContactField.isIncognito);
    public static final EnumSet<ContactField> CONTACTS_ADAPTER_WITH_NAME_AND_PHONE_LOADED_FIELD = EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.photoUrl, ContactField.phones, ContactField.isIncognito);
    public static final EnumSet<ContactField> NAME_PRESENTER = EnumSet.of(ContactField.fullName, ContactField.deviceId, ContactField.phone, ContactField.spamScore, ContactField.isIncognito);
    public static final EnumSet<ContactField> CONFERENCE_CALL_FIELDS = EnumSet.of(ContactField.phone, ContactField.photoUrl, ContactField.names, ContactField.fullName);
}
