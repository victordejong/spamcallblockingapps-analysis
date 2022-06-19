package com.callapp.contacts.model.contact;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/DataSource.class */
public enum DataSource {
    unknown(1),
    blockedNumberDB(201),
    device(100),
    genome(1),
    googlePlaces(15),
    facebookPlaces(15),
    huaweiPlaces(15),
    seeInsideInternalAPI(6),
    chLocal(4),
    auPersonLookup(4),
    facebook(1, ContactField.facebookId, ContactField.facebookSearchResults, ContactField.facebookData, 4),
    foursquare(6, ContactField.foursquareId, ContactField.foursquareSearchResults, ContactField.foursquareData, 3),
    venueFoursquare(11, ContactField.venueFoursquareId, null, ContactField.venueFoursquareData, 5),
    twitter(4, ContactField.twitterScreenName, ContactField.twitterSearchResults, ContactField.twitterData, 4),
    google(5, null, null, null, 5),
    instagram(7, ContactField.instagramId, ContactField.instagramSearchResults, ContactField.instagramData, 4),
    pinterest(9, ContactField.pinterestId, ContactField.pinterestSearchResults, ContactField.pinterestData, 4),
    vk(10, ContactField.vkId, ContactField.vkSearchResults, ContactField.vkData, 4),
    gravatar(2),
    yahooLocal(3),
    intent(10),
    googleMaps(1),
    gmail(3),
    socialSearch(1),
    skype(2),
    whitePages(3),
    userProfile(200),
    libPhoneNumber(1),
    suggestion(1),
    websites(1),
    other(1),
    userCorrectedInfo(50),
    userSpamData(50),
    userMedia(50),
    whatsapp(1),
    viber(1),
    signal(1),
    telegram(1),
    notificationWhatsApp(1),
    notificationViber(1),
    notificationTelegram(1),
    twilioTrustedComm(20);
    
    public static final List<DataSource> ACTIVE_SOCIAL_DATA_SOURCES_LIST;
    public static final List<DataSource> ALL_SOCIAL_DATA_SOURCES_LIST;
    public static final EnumSet<DataSource> LINKED_ACCOUNTS_SOURCE;
    public static final EnumSet<DataSource> MY_SOCIAL_PROFILE_CARD_SOURCE;
    public static final EnumSet<DataSource> PLACES_DATA_SOURCE;
    public static final EnumSet<DataSource> SOCIAL_NETWORKS_DATA_SOURCE;
    public final String contactDataFieldName;
    public final int dbCode;
    public final long priority;
    public final ContactField socialDataField;
    public final ContactField socialIdField;
    public final ContactField socialSearchField;

    static {
        DataSource dataSource = googlePlaces;
        DataSource dataSource2 = facebook;
        DataSource dataSource3 = foursquare;
        DataSource dataSource4 = venueFoursquare;
        DataSource dataSource5 = twitter;
        DataSource dataSource6 = google;
        DataSource dataSource7 = instagram;
        DataSource dataSource8 = pinterest;
        DataSource dataSource9 = vk;
        PLACES_DATA_SOURCE = EnumSet.of(yahooLocal, dataSource, dataSource4);
        SOCIAL_NETWORKS_DATA_SOURCE = EnumSet.of(dataSource2, dataSource5, dataSource3, dataSource7, dataSource9);
        MY_SOCIAL_PROFILE_CARD_SOURCE = EnumSet.of(dataSource2, dataSource5, dataSource6, dataSource9);
        LINKED_ACCOUNTS_SOURCE = EnumSet.of(dataSource2, dataSource5, dataSource6, dataSource9);
        List<DataSource> asList = Arrays.asList(dataSource2, dataSource5, dataSource6, dataSource8, dataSource7, dataSource9, dataSource3);
        ALL_SOCIAL_DATA_SOURCES_LIST = asList;
        ACTIVE_SOCIAL_DATA_SOURCES_LIST = asList.subList(0, asList.size() - 1);
    }

    DataSource(int i, ContactField contactField, ContactField contactField2, ContactField contactField3, long j) {
        this.dbCode = i;
        this.socialIdField = contactField;
        this.socialSearchField = contactField2;
        this.socialDataField = contactField3;
        this.priority = j;
        this.contactDataFieldName = contactField3 != null ? contactField3.name() : null;
    }

    DataSource(long j) {
        this(0, null, null, null, j);
    }

    public static DataSource getDataSource(int i) {
        if (i != 1) {
            if (i == 4) {
                return twitter;
            }
            if (i == 5) {
                return google;
            }
            if (i == 6) {
                return foursquare;
            }
            if (i == 7) {
                return instagram;
            }
            if (i == 9) {
                return pinterest;
            }
            if (i == 10) {
                return vk;
            }
            return null;
        }
        return facebook;
    }
}
