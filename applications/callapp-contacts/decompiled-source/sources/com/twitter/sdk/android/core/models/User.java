package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/User.class */
public class User implements Identifiable, Serializable {
    public static final long INVALID_ID = -1;
    private static final long serialVersionUID = 4663450696842173958L;
    @b(a = "contributors_enabled")
    public final boolean contributorsEnabled;
    @b(a = "created_at")
    public final String createdAt;
    @b(a = "default_profile")
    public final boolean defaultProfile;
    @b(a = "default_profile_image")
    public final boolean defaultProfileImage;
    @b(a = "description")
    public final String description;
    @b(a = "email")
    public final String email;
    @b(a = "entities")
    public final UserEntities entities;
    @b(a = "favourites_count")
    public final int favouritesCount;
    @b(a = "follow_request_sent")
    public final boolean followRequestSent;
    @b(a = "followers_count")
    public final int followersCount;
    @b(a = "friends_count")
    public final int friendsCount;
    @b(a = "geo_enabled")
    public final boolean geoEnabled;
    @b(a = "id")
    public final long id;
    @b(a = "id_str")
    public final String idStr;
    @b(a = "is_translator")
    public final boolean isTranslator;
    @b(a = "lang")
    public final String lang;
    @b(a = "listed_count")
    public final int listedCount;
    @b(a = "location")
    public final String location;
    @b(a = "name")
    public final String name;
    @b(a = "profile_background_color")
    public final String profileBackgroundColor;
    @b(a = "profile_background_image_url")
    public final String profileBackgroundImageUrl;
    @b(a = "profile_background_image_url_https")
    public final String profileBackgroundImageUrlHttps;
    @b(a = "profile_background_tile")
    public final boolean profileBackgroundTile;
    @b(a = "profile_banner_url")
    public final String profileBannerUrl;
    @b(a = "profile_image_url")
    public final String profileImageUrl;
    @b(a = "profile_image_url_https")
    public final String profileImageUrlHttps;
    @b(a = "profile_link_color")
    public final String profileLinkColor;
    @b(a = "profile_sidebar_border_color")
    public final String profileSidebarBorderColor;
    @b(a = "profile_sidebar_fill_color")
    public final String profileSidebarFillColor;
    @b(a = "profile_text_color")
    public final String profileTextColor;
    @b(a = "profile_use_background_image")
    public final boolean profileUseBackgroundImage;
    @b(a = "protected")
    public final boolean protectedUser;
    @b(a = "screen_name")
    public final String screenName;
    @b(a = "show_all_inline_media")
    public final boolean showAllInlineMedia;
    @b(a = "status")
    public final Tweet status;
    @b(a = "statuses_count")
    public final int statusesCount;
    @b(a = "time_zone")
    public final String timeZone;
    @b(a = "url")
    public final String url;
    @b(a = "utc_offset")
    public final int utcOffset;
    @b(a = "verified")
    public final boolean verified;
    @b(a = "withheld_in_countries")
    public final List<String> withheldInCountries;
    @b(a = "withheld_scope")
    public final String withheldScope;

    public User(boolean z, String str, boolean z2, boolean z3, String str2, String str3, UserEntities userEntities, int i, boolean z4, int i2, int i3, boolean z5, long j, String str4, boolean z6, String str5, int i4, String str6, String str7, String str8, String str9, String str10, boolean z7, String str11, String str12, String str13, String str14, String str15, String str16, String str17, boolean z8, boolean z9, String str18, boolean z10, Tweet tweet, int i5, String str19, String str20, int i6, boolean z11, List<String> list, String str21) {
        this.contributorsEnabled = z;
        this.createdAt = str;
        this.defaultProfile = z2;
        this.defaultProfileImage = z3;
        this.description = str2;
        this.email = str3;
        this.entities = userEntities;
        this.favouritesCount = i;
        this.followRequestSent = z4;
        this.followersCount = i2;
        this.friendsCount = i3;
        this.geoEnabled = z5;
        this.id = j;
        this.idStr = str4;
        this.isTranslator = z6;
        this.lang = str5;
        this.listedCount = i4;
        this.location = str6;
        this.name = str7;
        this.profileBackgroundColor = str8;
        this.profileBackgroundImageUrl = str9;
        this.profileBackgroundImageUrlHttps = str10;
        this.profileBackgroundTile = z7;
        this.profileBannerUrl = str11;
        this.profileImageUrl = str12;
        this.profileImageUrlHttps = str13;
        this.profileLinkColor = str14;
        this.profileSidebarBorderColor = str15;
        this.profileSidebarFillColor = str16;
        this.profileTextColor = str17;
        this.profileUseBackgroundImage = z8;
        this.protectedUser = z9;
        this.screenName = str18;
        this.showAllInlineMedia = z10;
        this.status = tweet;
        this.statusesCount = i5;
        this.timeZone = str19;
        this.url = str20;
        this.utcOffset = i6;
        this.verified = z11;
        this.withheldInCountries = list;
        this.withheldScope = str21;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.id;
    }
}
