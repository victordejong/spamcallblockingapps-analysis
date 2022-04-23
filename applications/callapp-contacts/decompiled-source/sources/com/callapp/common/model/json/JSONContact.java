package com.callapp.common.model.json;

import com.callapp.common.model.PriorityInterface;
import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
@JsonIgnoreProperties({"lastUpdated", "fromDevice", "allSocialIDs", "allNegatives"})
@JsonInclude(JsonInclude.Include.NON_DEFAULT)
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONContact.class */
public class JSONContact extends CallAppJSONObject implements PriorityInterface {
    public static final transient int ENTITY_TYPE_BUSINESS = 2;
    public static final transient String ENTITY_TYPE_BUSINESS_STR = "BUSINESS";
    public static final transient int ENTITY_TYPE_PERSON = 1;
    public static final transient String ENTITY_TYPE_PERSON_STR = "PERSON";
    private static final long serialVersionUID = -2158871931207591344L;
    private List<JSONAddress> addresses;
    private String atAGlance;
    private JSONDate birthday;
    private List<JSONCategory> categories;
    private String cover;
    private String description;
    private List<JSONEmail> emails;
    private List<JSONEvent> events;
    private JSONSocialNetworkID facebookID;
    private List<String> facebookNegatives;
    private JSONSocialNetworkID foursquareID;
    private List<String> foursquareNegatives;
    private String googlePlacesId;
    private JSONSocialNetworkID googlePlusID;
    private List<String> googlePlusNegatives;
    private String huaweiPlacesId;
    private List<JSONIMaddress> iMAddresses;
    private JSONSocialNetworkID instagramID;
    private List<String> instagramNegatives;
    private boolean isPhotoChosenFromUserProfile;
    private JSONSocialNetworkID linkedinID;
    private List<String> linkedinNegatives;
    private JSONSocialNetworkID linkedinPubProfileUrl;
    private String menuUrl;
    private String name;
    private List<JSONDataAndSource<String>> namesWithSource;
    private JSONOpeningHours openingHours;
    private List<JSONOrgData> orgData;
    private List<JSONPhoneNumber> phoneNumbers;
    private String photoUrl;
    private JSONSocialNetworkID pinterestID;
    private List<String> pinterestNegatives;
    private int priceRange;
    private String reserveUrl;
    private List<JSONReview> reviews;
    private String seeInsidePanoId;
    private List<String> twitterNegatives;
    private JSONSocialNetworkID twitterScreenName;
    private String url;
    private String userDefinition;
    private JSONSocialNetworkID venueFoursquareID;
    private JSONSocialNetworkID vkID;
    private List<String> vkNegatives;
    private List<JSONWebsite> websites;
    private JSONSocialNetworkID xingID;
    private List<String> xingNegatives;
    private int type = 1;
    private double avgRating = -1.0d;
    private double lat = 0.0d;
    private double lng = 0.0d;
    private boolean activeDuringPeriod = false;
    private boolean installedApp = false;
    private int spamScore = 0;
    private long priority = -1;
    @JsonIgnore
    private Date lastUpdated = new Date();

    public boolean atleastOneIdentifierExists() {
        List<JSONPhoneNumber> list = this.phoneNumbers;
        if (list != null && list.size() > 0) {
            return true;
        }
        List<JSONEmail> list2 = this.emails;
        return list2 != null && list2.size() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONContact jSONContact = (JSONContact) obj;
        if (this.isPhotoChosenFromUserProfile != jSONContact.isPhotoChosenFromUserProfile || this.type != jSONContact.type || Double.compare(jSONContact.avgRating, this.avgRating) != 0 || this.priceRange != jSONContact.priceRange || Double.compare(jSONContact.lat, this.lat) != 0 || Double.compare(jSONContact.lng, this.lng) != 0 || this.activeDuringPeriod != jSONContact.activeDuringPeriod || this.installedApp != jSONContact.installedApp || this.spamScore != jSONContact.spamScore || this.priority != jSONContact.priority) {
            return false;
        }
        List<JSONPhoneNumber> list = this.phoneNumbers;
        if (list != null) {
            if (!list.equals(jSONContact.phoneNumbers)) {
                return false;
            }
        } else if (jSONContact.phoneNumbers != null) {
            return false;
        }
        String str = this.name;
        if (str != null) {
            if (!str.equals(jSONContact.name)) {
                return false;
            }
        } else if (jSONContact.name != null) {
            return false;
        }
        List<JSONEmail> list2 = this.emails;
        if (list2 != null) {
            if (!list2.equals(jSONContact.emails)) {
                return false;
            }
        } else if (jSONContact.emails != null) {
            return false;
        }
        List<JSONWebsite> list3 = this.websites;
        if (list3 != null) {
            if (!list3.equals(jSONContact.websites)) {
                return false;
            }
        } else if (jSONContact.websites != null) {
            return false;
        }
        List<JSONAddress> list4 = this.addresses;
        if (list4 != null) {
            if (!list4.equals(jSONContact.addresses)) {
                return false;
            }
        } else if (jSONContact.addresses != null) {
            return false;
        }
        List<JSONOrgData> list5 = this.orgData;
        if (list5 != null) {
            if (!list5.equals(jSONContact.orgData)) {
                return false;
            }
        } else if (jSONContact.orgData != null) {
            return false;
        }
        List<JSONIMaddress> list6 = this.iMAddresses;
        if (list6 != null) {
            if (!list6.equals(jSONContact.iMAddresses)) {
                return false;
            }
        } else if (jSONContact.iMAddresses != null) {
            return false;
        }
        String str2 = this.photoUrl;
        if (str2 != null) {
            if (!str2.equals(jSONContact.photoUrl)) {
                return false;
            }
        } else if (jSONContact.photoUrl != null) {
            return false;
        }
        JSONDate jSONDate = this.birthday;
        if (jSONDate != null) {
            if (!jSONDate.equals(jSONContact.birthday)) {
                return false;
            }
        } else if (jSONContact.birthday != null) {
            return false;
        }
        List<JSONCategory> list7 = this.categories;
        if (list7 != null) {
            if (!list7.equals(jSONContact.categories)) {
                return false;
            }
        } else if (jSONContact.categories != null) {
            return false;
        }
        List<JSONReview> list8 = this.reviews;
        if (list8 != null) {
            if (!list8.equals(jSONContact.reviews)) {
                return false;
            }
        } else if (jSONContact.reviews != null) {
            return false;
        }
        List<JSONEvent> list9 = this.events;
        if (list9 != null) {
            if (!list9.equals(jSONContact.events)) {
                return false;
            }
        } else if (jSONContact.events != null) {
            return false;
        }
        String str3 = this.description;
        if (str3 != null) {
            if (!str3.equals(jSONContact.description)) {
                return false;
            }
        } else if (jSONContact.description != null) {
            return false;
        }
        JSONOpeningHours jSONOpeningHours = this.openingHours;
        if (jSONOpeningHours != null) {
            if (!jSONOpeningHours.equals(jSONContact.openingHours)) {
                return false;
            }
        } else if (jSONContact.openingHours != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookID;
        if (jSONSocialNetworkID != null) {
            if (!jSONSocialNetworkID.equals(jSONContact.facebookID)) {
                return false;
            }
        } else if (jSONContact.facebookID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID2 = this.vkID;
        if (jSONSocialNetworkID2 != null) {
            if (!jSONSocialNetworkID2.equals(jSONContact.vkID)) {
                return false;
            }
        } else if (jSONContact.vkID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID3 = this.linkedinPubProfileUrl;
        if (jSONSocialNetworkID3 != null) {
            if (!jSONSocialNetworkID3.equals(jSONContact.linkedinPubProfileUrl)) {
                return false;
            }
        } else if (jSONContact.linkedinPubProfileUrl != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID4 = this.linkedinID;
        if (jSONSocialNetworkID4 != null) {
            if (!jSONSocialNetworkID4.equals(jSONContact.linkedinID)) {
                return false;
            }
        } else if (jSONContact.linkedinID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID5 = this.twitterScreenName;
        if (jSONSocialNetworkID5 != null) {
            if (!jSONSocialNetworkID5.equals(jSONContact.twitterScreenName)) {
                return false;
            }
        } else if (jSONContact.twitterScreenName != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID6 = this.googlePlusID;
        if (jSONSocialNetworkID6 != null) {
            if (!jSONSocialNetworkID6.equals(jSONContact.googlePlusID)) {
                return false;
            }
        } else if (jSONContact.googlePlusID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID7 = this.foursquareID;
        if (jSONSocialNetworkID7 != null) {
            if (!jSONSocialNetworkID7.equals(jSONContact.foursquareID)) {
                return false;
            }
        } else if (jSONContact.foursquareID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID8 = this.venueFoursquareID;
        if (jSONSocialNetworkID8 != null) {
            if (!jSONSocialNetworkID8.equals(jSONContact.venueFoursquareID)) {
                return false;
            }
        } else if (jSONContact.venueFoursquareID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID9 = this.instagramID;
        if (jSONSocialNetworkID9 != null) {
            if (!jSONSocialNetworkID9.equals(jSONContact.instagramID)) {
                return false;
            }
        } else if (jSONContact.instagramID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID10 = this.xingID;
        if (jSONSocialNetworkID10 != null) {
            if (!jSONSocialNetworkID10.equals(jSONContact.xingID)) {
                return false;
            }
        } else if (jSONContact.xingID != null) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID11 = this.pinterestID;
        if (jSONSocialNetworkID11 != null) {
            if (!jSONSocialNetworkID11.equals(jSONContact.pinterestID)) {
                return false;
            }
        } else if (jSONContact.pinterestID != null) {
            return false;
        }
        String str4 = this.seeInsidePanoId;
        if (str4 != null) {
            if (!str4.equals(jSONContact.seeInsidePanoId)) {
                return false;
            }
        } else if (jSONContact.seeInsidePanoId != null) {
            return false;
        }
        String str5 = this.url;
        if (str5 != null) {
            if (!str5.equals(jSONContact.url)) {
                return false;
            }
        } else if (jSONContact.url != null) {
            return false;
        }
        String str6 = this.atAGlance;
        if (str6 != null) {
            if (!str6.equals(jSONContact.atAGlance)) {
                return false;
            }
        } else if (jSONContact.atAGlance != null) {
            return false;
        }
        String str7 = this.menuUrl;
        if (str7 != null) {
            if (!str7.equals(jSONContact.menuUrl)) {
                return false;
            }
        } else if (jSONContact.menuUrl != null) {
            return false;
        }
        String str8 = this.reserveUrl;
        if (str8 != null) {
            if (!str8.equals(jSONContact.reserveUrl)) {
                return false;
            }
        } else if (jSONContact.reserveUrl != null) {
            return false;
        }
        String str9 = this.googlePlacesId;
        if (str9 != null) {
            if (!str9.equals(jSONContact.googlePlacesId)) {
                return false;
            }
        } else if (jSONContact.googlePlacesId != null) {
            return false;
        }
        String str10 = this.huaweiPlacesId;
        if (str10 != null) {
            if (!str10.equals(jSONContact.huaweiPlacesId)) {
                return false;
            }
        } else if (jSONContact.huaweiPlacesId != null) {
            return false;
        }
        List<String> list10 = this.facebookNegatives;
        if (list10 != null) {
            if (!list10.equals(jSONContact.facebookNegatives)) {
                return false;
            }
        } else if (jSONContact.facebookNegatives != null) {
            return false;
        }
        List<String> list11 = this.vkNegatives;
        if (list11 != null) {
            if (!list11.equals(jSONContact.vkNegatives)) {
                return false;
            }
        } else if (jSONContact.vkNegatives != null) {
            return false;
        }
        List<String> list12 = this.linkedinNegatives;
        if (list12 != null) {
            if (!list12.equals(jSONContact.linkedinNegatives)) {
                return false;
            }
        } else if (jSONContact.linkedinNegatives != null) {
            return false;
        }
        List<String> list13 = this.twitterNegatives;
        if (list13 != null) {
            if (!list13.equals(jSONContact.twitterNegatives)) {
                return false;
            }
        } else if (jSONContact.twitterNegatives != null) {
            return false;
        }
        List<String> list14 = this.googlePlusNegatives;
        if (list14 != null) {
            if (!list14.equals(jSONContact.googlePlusNegatives)) {
                return false;
            }
        } else if (jSONContact.googlePlusNegatives != null) {
            return false;
        }
        List<String> list15 = this.foursquareNegatives;
        if (list15 != null) {
            if (!list15.equals(jSONContact.foursquareNegatives)) {
                return false;
            }
        } else if (jSONContact.foursquareNegatives != null) {
            return false;
        }
        List<String> list16 = this.instagramNegatives;
        if (list16 != null) {
            if (!list16.equals(jSONContact.instagramNegatives)) {
                return false;
            }
        } else if (jSONContact.instagramNegatives != null) {
            return false;
        }
        List<String> list17 = this.xingNegatives;
        if (list17 != null) {
            if (!list17.equals(jSONContact.xingNegatives)) {
                return false;
            }
        } else if (jSONContact.xingNegatives != null) {
            return false;
        }
        List<String> list18 = this.pinterestNegatives;
        if (list18 != null) {
            if (!list18.equals(jSONContact.pinterestNegatives)) {
                return false;
            }
        } else if (jSONContact.pinterestNegatives != null) {
            return false;
        }
        String str11 = this.userDefinition;
        if (str11 != null) {
            if (!str11.equals(jSONContact.userDefinition)) {
                return false;
            }
        } else if (jSONContact.userDefinition != null) {
            return false;
        }
        String str12 = this.cover;
        if (str12 != null) {
            if (!str12.equals(jSONContact.cover)) {
                return false;
            }
        } else if (jSONContact.cover != null) {
            return false;
        }
        List<JSONDataAndSource<String>> list19 = this.namesWithSource;
        List<JSONDataAndSource<String>> list20 = jSONContact.namesWithSource;
        return list19 != null ? list19.equals(list20) : list20 == null;
    }

    public List<JSONAddress> getAddresses() {
        return this.addresses;
    }

    public String getAtAGlance() {
        return this.atAGlance;
    }

    public double getAvgRating() {
        return this.avgRating;
    }

    public JSONDate getBirthday() {
        JSONDate jSONDate = this.birthday;
        if (jSONDate != null) {
            return jSONDate;
        }
        List<JSONEvent> list = this.events;
        if (list == null) {
            return null;
        }
        for (JSONEvent jSONEvent : list) {
            if (jSONEvent.getFormattedDate() != null && jSONEvent.getType() == 3) {
                return jSONEvent.getFormattedDate();
            }
        }
        return null;
    }

    public List<JSONCategory> getCategories() {
        return this.categories;
    }

    public String getCover() {
        return this.cover;
    }

    public String getDescription() {
        return this.description;
    }

    public List<JSONEmail> getEmails() {
        return this.emails;
    }

    public List<JSONEvent> getEvents() {
        return this.events;
    }

    public JSONSocialNetworkID getFacebookID() {
        return this.facebookID;
    }

    public List<String> getFacebookNegatives() {
        return this.facebookNegatives;
    }

    public JSONSocialNetworkID getFoursquareID() {
        return this.foursquareID;
    }

    public List<String> getFoursquareNegatives() {
        return this.foursquareNegatives;
    }

    public String getGooglePlacesId() {
        return this.googlePlacesId;
    }

    public JSONSocialNetworkID getGooglePlusID() {
        return this.googlePlusID;
    }

    public List<String> getGooglePlusNegatives() {
        return this.googlePlusNegatives;
    }

    public String getHuaweiPlacesId() {
        return this.huaweiPlacesId;
    }

    public List<JSONIMaddress> getIMAddresses() {
        return this.iMAddresses;
    }

    public JSONSocialNetworkID getInstagramID() {
        return this.instagramID;
    }

    public List<String> getInstagramNegatives() {
        return this.instagramNegatives;
    }

    @JsonIgnore
    public Date getLastUpdated() {
        return this.lastUpdated;
    }

    public double getLat() {
        return this.lat;
    }

    public JSONSocialNetworkID getLinkedinID() {
        return this.linkedinID;
    }

    public List<String> getLinkedinNegatives() {
        return this.linkedinNegatives;
    }

    public JSONSocialNetworkID getLinkedinPubProfileUrl() {
        return this.linkedinPubProfileUrl;
    }

    public double getLng() {
        return this.lng;
    }

    public String getMenuUrl() {
        return this.menuUrl;
    }

    public String getName() {
        return this.name;
    }

    public List<JSONDataAndSource<String>> getNamesWithSource() {
        return this.namesWithSource;
    }

    public JSONOpeningHours getOpeningHours() {
        return this.openingHours;
    }

    public List<JSONOrgData> getOrgData() {
        return this.orgData;
    }

    public List<JSONPhoneNumber> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public JSONSocialNetworkID getPinterestID() {
        return this.pinterestID;
    }

    public List<String> getPinterestNegatives() {
        return this.pinterestNegatives;
    }

    public int getPriceRange() {
        return this.priceRange;
    }

    @Override // com.callapp.common.model.PriorityInterface
    public long getPriority() {
        return this.priority;
    }

    public String getReserveUrl() {
        return this.reserveUrl;
    }

    public List<JSONReview> getReviews() {
        return this.reviews;
    }

    public String getSeeInsidePanoId() {
        return this.seeInsidePanoId;
    }

    public int getSpamScore() {
        return this.spamScore;
    }

    public List<String> getTwitterNegatives() {
        return this.twitterNegatives;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserDefinition() {
        return this.userDefinition;
    }

    public JSONSocialNetworkID getVenueFoursquareID() {
        return this.venueFoursquareID;
    }

    public JSONSocialNetworkID getVkID() {
        return this.vkID;
    }

    public List<String> getVkNegatives() {
        return this.vkNegatives;
    }

    public List<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public JSONSocialNetworkID getXingID() {
        return this.xingID;
    }

    public List<String> getXingNegatives() {
        return this.xingNegatives;
    }

    public boolean hasAnyNegatives() {
        return CollectionUtils.b(this.facebookNegatives) || CollectionUtils.b(this.linkedinNegatives) || CollectionUtils.b(this.twitterNegatives) || CollectionUtils.b(this.googlePlusNegatives) || CollectionUtils.b(this.foursquareNegatives) || CollectionUtils.b(this.instagramNegatives) || CollectionUtils.b(this.xingNegatives) || CollectionUtils.b(this.pinterestNegatives) || CollectionUtils.b(this.vkNegatives);
    }

    public boolean hasAnySocialIDs() {
        return (this.facebookID == null && this.linkedinPubProfileUrl == null && this.linkedinID == null && this.twitterScreenName == null && this.googlePlusID == null && this.foursquareID == null && this.instagramID == null && this.xingID == null && this.pinterestID == null && this.vkID == null) ? false : true;
    }

    public int hashCode() {
        List<JSONPhoneNumber> list = this.phoneNumbers;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.name;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<JSONEmail> list2 = this.emails;
        int hashCode3 = list2 != null ? list2.hashCode() : 0;
        List<JSONWebsite> list3 = this.websites;
        int hashCode4 = list3 != null ? list3.hashCode() : 0;
        List<JSONAddress> list4 = this.addresses;
        int hashCode5 = list4 != null ? list4.hashCode() : 0;
        List<JSONOrgData> list5 = this.orgData;
        int hashCode6 = list5 != null ? list5.hashCode() : 0;
        List<JSONIMaddress> list6 = this.iMAddresses;
        int hashCode7 = list6 != null ? list6.hashCode() : 0;
        String str2 = this.photoUrl;
        int hashCode8 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.isPhotoChosenFromUserProfile;
        JSONDate jSONDate = this.birthday;
        int hashCode9 = jSONDate != null ? jSONDate.hashCode() : 0;
        List<JSONCategory> list7 = this.categories;
        int hashCode10 = list7 != null ? list7.hashCode() : 0;
        List<JSONReview> list8 = this.reviews;
        int hashCode11 = list8 != null ? list8.hashCode() : 0;
        List<JSONEvent> list9 = this.events;
        int hashCode12 = list9 != null ? list9.hashCode() : 0;
        int i2 = this.type;
        long doubleToLongBits = Double.doubleToLongBits(this.avgRating);
        int i3 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        int i4 = this.priceRange;
        String str3 = this.description;
        int hashCode13 = str3 != null ? str3.hashCode() : 0;
        JSONOpeningHours jSONOpeningHours = this.openingHours;
        int hashCode14 = jSONOpeningHours != null ? jSONOpeningHours.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookID;
        int hashCode15 = jSONSocialNetworkID != null ? jSONSocialNetworkID.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID2 = this.vkID;
        int hashCode16 = jSONSocialNetworkID2 != null ? jSONSocialNetworkID2.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID3 = this.linkedinPubProfileUrl;
        int hashCode17 = jSONSocialNetworkID3 != null ? jSONSocialNetworkID3.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID4 = this.linkedinID;
        int hashCode18 = jSONSocialNetworkID4 != null ? jSONSocialNetworkID4.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID5 = this.twitterScreenName;
        int hashCode19 = jSONSocialNetworkID5 != null ? jSONSocialNetworkID5.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID6 = this.googlePlusID;
        int hashCode20 = jSONSocialNetworkID6 != null ? jSONSocialNetworkID6.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID7 = this.foursquareID;
        int hashCode21 = jSONSocialNetworkID7 != null ? jSONSocialNetworkID7.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID8 = this.venueFoursquareID;
        int hashCode22 = jSONSocialNetworkID8 != null ? jSONSocialNetworkID8.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID9 = this.instagramID;
        int hashCode23 = jSONSocialNetworkID9 != null ? jSONSocialNetworkID9.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID10 = this.xingID;
        int hashCode24 = jSONSocialNetworkID10 != null ? jSONSocialNetworkID10.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID11 = this.pinterestID;
        int hashCode25 = jSONSocialNetworkID11 != null ? jSONSocialNetworkID11.hashCode() : 0;
        long doubleToLongBits2 = Double.doubleToLongBits(this.lat);
        int i5 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.lng);
        int i6 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        boolean z2 = this.activeDuringPeriod;
        boolean z3 = this.installedApp;
        String str4 = this.seeInsidePanoId;
        int hashCode26 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.url;
        int hashCode27 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.atAGlance;
        int hashCode28 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.menuUrl;
        int hashCode29 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.reserveUrl;
        int hashCode30 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.googlePlacesId;
        int hashCode31 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.huaweiPlacesId;
        int hashCode32 = str10 != null ? str10.hashCode() : 0;
        int i7 = this.spamScore;
        List<String> list10 = this.facebookNegatives;
        int hashCode33 = list10 != null ? list10.hashCode() : 0;
        List<String> list11 = this.vkNegatives;
        int hashCode34 = list11 != null ? list11.hashCode() : 0;
        List<String> list12 = this.linkedinNegatives;
        int hashCode35 = list12 != null ? list12.hashCode() : 0;
        List<String> list13 = this.twitterNegatives;
        int hashCode36 = list13 != null ? list13.hashCode() : 0;
        List<String> list14 = this.googlePlusNegatives;
        int hashCode37 = list14 != null ? list14.hashCode() : 0;
        List<String> list15 = this.foursquareNegatives;
        int hashCode38 = list15 != null ? list15.hashCode() : 0;
        List<String> list16 = this.instagramNegatives;
        int hashCode39 = list16 != null ? list16.hashCode() : 0;
        List<String> list17 = this.xingNegatives;
        int hashCode40 = list17 != null ? list17.hashCode() : 0;
        List<String> list18 = this.pinterestNegatives;
        int hashCode41 = list18 != null ? list18.hashCode() : 0;
        List<JSONDataAndSource<String>> list19 = this.namesWithSource;
        int hashCode42 = list19 != null ? list19.hashCode() : 0;
        String str11 = this.userDefinition;
        int hashCode43 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.cover;
        if (str12 != null) {
            i = str12.hashCode();
        }
        long j = this.priority;
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + (z ? 1 : 0)) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + hashCode19) * 31) + hashCode20) * 31) + hashCode21) * 31) + hashCode22) * 31) + hashCode23) * 31) + hashCode24) * 31) + hashCode25) * 31) + i5) * 31) + i6) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + hashCode26) * 31) + hashCode27) * 31) + hashCode28) * 31) + hashCode29) * 31) + hashCode30) * 31) + hashCode31) * 31) + hashCode32) * 31) + i7) * 31) + hashCode33) * 31) + hashCode34) * 31) + hashCode35) * 31) + hashCode36) * 31) + hashCode37) * 31) + hashCode38) * 31) + hashCode39) * 31) + hashCode40) * 31) + hashCode41) * 31) + hashCode42) * 31) + hashCode43) * 31) + i) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public boolean isActiveDuringPeriod() {
        return this.activeDuringPeriod;
    }

    @JsonIgnore
    public boolean isBusiness() {
        return this.type == 2;
    }

    public boolean isInstalledApp() {
        return this.installedApp;
    }

    public boolean isPhotoChosenFromUserProfile() {
        return this.isPhotoChosenFromUserProfile;
    }

    public void resetAllSocialIDs() {
        setFacebookID(null);
        setVkID(null);
        setLinkedinPubProfileUrl(null);
        setLinkedinID(null);
        setTwitterScreenName(null);
        setGooglePlusID(null);
        setFoursquareID(null);
        setInstagramID(null);
        setXingID(null);
        setPinterestID(null);
    }

    public void setActiveDuringPeriod(boolean z) {
        this.activeDuringPeriod = z;
    }

    public void setAddresses(List<JSONAddress> list) {
        this.addresses = list;
    }

    public void setAtAGlance(String str) {
        this.atAGlance = str;
    }

    public void setAvgRating(double d2) {
        this.avgRating = d2;
    }

    public void setBirthday(JSONDate jSONDate) {
        this.birthday = jSONDate;
    }

    public void setCategories(List<JSONCategory> list) {
        this.categories = list;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEmails(List<JSONEmail> list) {
        this.emails = list;
    }

    public void setEvents(List<JSONEvent> list) {
        this.events = list;
    }

    public void setFacebookID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookID = jSONSocialNetworkID;
    }

    public void setFacebookNegatives(List<String> list) {
        this.facebookNegatives = list;
    }

    public void setFoursquareID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.foursquareID = jSONSocialNetworkID;
    }

    public void setFoursquareNegatives(List<String> list) {
        this.foursquareNegatives = list;
    }

    public void setGooglePlacesId(String str) {
        this.googlePlacesId = str;
    }

    public void setGooglePlusID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.googlePlusID = jSONSocialNetworkID;
    }

    public void setGooglePlusNegatives(List<String> list) {
        this.googlePlusNegatives = list;
    }

    public void setHuaweiPlacesId(String str) {
        this.huaweiPlacesId = str;
    }

    public void setIMAddresses(List<JSONIMaddress> list) {
        this.iMAddresses = list;
    }

    public void setInstagramID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.instagramID = jSONSocialNetworkID;
    }

    public void setInstagramNegatives(List<String> list) {
        this.instagramNegatives = list;
    }

    public void setInstalledApp(boolean z) {
        this.installedApp = z;
    }

    @JsonIgnore
    public void setLastUpdated(Date date) {
        this.lastUpdated = date;
    }

    public void setLat(double d2) {
        this.lat = d2;
    }

    public void setLinkagesAndNegatives(JSONContact jSONContact) {
        setFacebookID(jSONContact.getFacebookID());
        setVkID(jSONContact.getVkID());
        setLinkedinPubProfileUrl(jSONContact.getLinkedinPubProfileUrl());
        setLinkedinID(jSONContact.getLinkedinID());
        setTwitterScreenName(jSONContact.getTwitterScreenName());
        setGooglePlusID(jSONContact.getGooglePlusID());
        setFoursquareID(jSONContact.getFoursquareID());
        setInstagramID(jSONContact.getInstagramID());
        setXingID(jSONContact.getXingID());
        setPinterestID(jSONContact.getPinterestID());
        setVenueFoursquareID(jSONContact.getVenueFoursquareID());
        setFacebookNegatives(jSONContact.getFacebookNegatives());
        setVkNegatives(jSONContact.getVkNegatives());
        setLinkedinNegatives(jSONContact.getLinkedinNegatives());
        setTwitterNegatives(jSONContact.getTwitterNegatives());
        setGooglePlusNegatives(jSONContact.getGooglePlusNegatives());
        setFoursquareNegatives(jSONContact.getFoursquareNegatives());
        setInstagramNegatives(jSONContact.getInstagramNegatives());
        setXingNegatives(jSONContact.getXingNegatives());
        setPinterestNegatives(jSONContact.getPinterestNegatives());
    }

    public void setLinkedinID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.linkedinID = jSONSocialNetworkID;
    }

    public void setLinkedinNegatives(List<String> list) {
        this.linkedinNegatives = list;
    }

    public void setLinkedinPubProfileUrl(JSONSocialNetworkID jSONSocialNetworkID) {
        this.linkedinPubProfileUrl = jSONSocialNetworkID;
    }

    public void setLng(double d2) {
        this.lng = d2;
    }

    public void setMenuUrl(String str) {
        this.menuUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNames(List<JSONDataAndSource<String>> list) {
        this.namesWithSource = list;
    }

    public void setOpeningHours(JSONOpeningHours jSONOpeningHours) {
        this.openingHours = jSONOpeningHours;
    }

    public void setOrgData(List<JSONOrgData> list) {
        this.orgData = list;
    }

    public void setPhoneNumbers(List<JSONPhoneNumber> list) {
        this.phoneNumbers = list;
    }

    public void setPhotoChosenFromUserProfile(boolean z) {
        this.isPhotoChosenFromUserProfile = z;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public void setPinterestID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.pinterestID = jSONSocialNetworkID;
    }

    public void setPinterestNegatives(List<String> list) {
        this.pinterestNegatives = list;
    }

    public void setPriceRange(int i) {
        this.priceRange = i;
    }

    public void setPriority(long j) {
        this.priority = j;
    }

    public void setReserveUrl(String str) {
        this.reserveUrl = str;
    }

    public void setReviews(List<JSONReview> list) {
        this.reviews = list;
    }

    public void setSeeInsidePanoId(String str) {
        this.seeInsidePanoId = str;
    }

    public void setSpamScore(int i) {
        this.spamScore = i;
    }

    public void setTwitterNegatives(List<String> list) {
        this.twitterNegatives = list;
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUserDefinition(String str) {
        this.userDefinition = str;
    }

    public void setVenueFoursquareID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.venueFoursquareID = jSONSocialNetworkID;
    }

    public void setVkID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.vkID = jSONSocialNetworkID;
    }

    public void setVkNegatives(List<String> list) {
        this.vkNegatives = list;
    }

    public void setWebsites(List<JSONWebsite> list) {
        this.websites = list;
    }

    public void setXingID(JSONSocialNetworkID jSONSocialNetworkID) {
        this.xingID = jSONSocialNetworkID;
    }

    public void setXingNegatives(List<String> list) {
        this.xingNegatives = list;
    }

    public void sortLists() {
        List<JSONEmail> list = this.emails;
        if (list != null) {
            this.emails = (List) list.stream().sorted(new Comparator<JSONEmail>() { // from class: com.callapp.common.model.json.JSONContact.1
                public int compare(JSONEmail jSONEmail, JSONEmail jSONEmail2) {
                    return Integer.valueOf(jSONEmail.hashCode()).compareTo(Integer.valueOf(jSONEmail2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONWebsite> list2 = this.websites;
        if (list2 != null) {
            this.websites = (List) list2.stream().sorted(new Comparator<JSONWebsite>() { // from class: com.callapp.common.model.json.JSONContact.2
                public int compare(JSONWebsite jSONWebsite, JSONWebsite jSONWebsite2) {
                    return Integer.valueOf(jSONWebsite.hashCode()).compareTo(Integer.valueOf(jSONWebsite2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONAddress> list3 = this.addresses;
        if (list3 != null) {
            this.addresses = (List) list3.stream().sorted(new Comparator<JSONAddress>() { // from class: com.callapp.common.model.json.JSONContact.3
                public int compare(JSONAddress jSONAddress, JSONAddress jSONAddress2) {
                    return Integer.valueOf(jSONAddress.hashCode()).compareTo(Integer.valueOf(jSONAddress2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONOrgData> list4 = this.orgData;
        if (list4 != null) {
            this.orgData = (List) list4.stream().sorted(new Comparator<JSONOrgData>() { // from class: com.callapp.common.model.json.JSONContact.4
                public int compare(JSONOrgData jSONOrgData, JSONOrgData jSONOrgData2) {
                    return Integer.valueOf(jSONOrgData.hashCode()).compareTo(Integer.valueOf(jSONOrgData2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONIMaddress> list5 = this.iMAddresses;
        if (list5 != null) {
            this.iMAddresses = (List) list5.stream().sorted(new Comparator<JSONIMaddress>() { // from class: com.callapp.common.model.json.JSONContact.5
                public int compare(JSONIMaddress jSONIMaddress, JSONIMaddress jSONIMaddress2) {
                    return Integer.valueOf(jSONIMaddress.hashCode()).compareTo(Integer.valueOf(jSONIMaddress2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONCategory> list6 = this.categories;
        if (list6 != null) {
            this.categories = (List) list6.stream().sorted(new Comparator<JSONCategory>() { // from class: com.callapp.common.model.json.JSONContact.6
                public int compare(JSONCategory jSONCategory, JSONCategory jSONCategory2) {
                    return Integer.valueOf(jSONCategory.hashCode()).compareTo(Integer.valueOf(jSONCategory2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
        List<JSONEvent> list7 = this.events;
        if (list7 != null) {
            this.events = (List) list7.stream().sorted(new Comparator<JSONEvent>() { // from class: com.callapp.common.model.json.JSONContact.7
                public int compare(JSONEvent jSONEvent, JSONEvent jSONEvent2) {
                    return Integer.valueOf(jSONEvent.hashCode()).compareTo(Integer.valueOf(jSONEvent2.hashCode()));
                }
            }).collect(Collectors.toList());
        }
    }

    public String toString() {
        return "JSONContact{phoneNumbers=" + this.phoneNumbers + ", name='" + this.name + "', emails=" + this.emails + ", websites=" + this.websites + ", addresses=" + this.addresses + ", orgData=" + this.orgData + ", iMAddresses=" + this.iMAddresses + ", photoUrl='" + this.photoUrl + "', isPhotoChosenFromUserProfile=" + this.isPhotoChosenFromUserProfile + ", birthday=" + this.birthday + ", categories=" + this.categories + ", reviews=" + this.reviews + ", events=" + this.events + ", type=" + this.type + ", avgRating=" + this.avgRating + ", priceRange=" + this.priceRange + ", description='" + this.description + "', openingHours=" + this.openingHours + ", facebookID=" + this.facebookID + ", linkedinPubProfileUrl=" + this.linkedinPubProfileUrl + ", linkedinID=" + this.linkedinID + ", twitterScreenName=" + this.twitterScreenName + ", googlePlusID=" + this.googlePlusID + ", foursquareID=" + this.foursquareID + ", venueFoursquareID=" + this.venueFoursquareID + ", instagramID=" + this.instagramID + ", xingID=" + this.xingID + ", pinterestID=" + this.pinterestID + ", vkID=" + this.vkID + ", lat=" + this.lat + ", lng=" + this.lng + ", activeDuringPeriod=" + this.activeDuringPeriod + ", installedApp=" + this.installedApp + ", seeInsidePanoId='" + this.seeInsidePanoId + "', url='" + this.url + "', atAGlance='" + this.atAGlance + "', menuUrl='" + this.menuUrl + "', reserveUrl='" + this.reserveUrl + "', googlePlacesId='" + this.googlePlacesId + "', huaweiPlacesId='" + this.huaweiPlacesId + "', spamScore=" + this.spamScore + ", userDefinition='" + this.userDefinition + "', cover='" + this.cover + "', facebookNegatives=" + this.facebookNegatives + ", vkNegatives=" + this.vkNegatives + ", linkedinNegatives=" + this.linkedinNegatives + ", twitterNegatives=" + this.twitterNegatives + ", googlePlusNegatives=" + this.googlePlusNegatives + ", foursquareNegatives=" + this.foursquareNegatives + ", instagramNegatives=" + this.instagramNegatives + ", xingNegatives=" + this.xingNegatives + ", pinterestNegatives=" + this.pinterestNegatives + ", namesWithSource=" + this.namesWithSource + ", priority=" + this.priority + ", lastUpdated=" + this.lastUpdated + '}';
    }
}
