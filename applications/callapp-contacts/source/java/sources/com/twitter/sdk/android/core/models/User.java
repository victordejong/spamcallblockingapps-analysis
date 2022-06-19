package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/User.class */
public class User implements Identifiable, Serializable {
    public static final long INVALID_ID = -1;
    private static final long serialVersionUID = 4663450696842173958L;
    @AbstractC15952b(m7988a = "contributors_enabled")
    public final boolean contributorsEnabled;
    @AbstractC15952b(m7988a = "created_at")
    public final String createdAt;
    @AbstractC15952b(m7988a = "default_profile")
    public final boolean defaultProfile;
    @AbstractC15952b(m7988a = "default_profile_image")
    public final boolean defaultProfileImage;
    @AbstractC15952b(m7988a = "description")
    public final String description;
    @AbstractC15952b(m7988a = "email")
    public final String email;
    @AbstractC15952b(m7988a = "entities")
    public final UserEntities entities;
    @AbstractC15952b(m7988a = "favourites_count")
    public final int favouritesCount;
    @AbstractC15952b(m7988a = "follow_request_sent")
    public final boolean followRequestSent;
    @AbstractC15952b(m7988a = "followers_count")
    public final int followersCount;
    @AbstractC15952b(m7988a = "friends_count")
    public final int friendsCount;
    @AbstractC15952b(m7988a = "geo_enabled")
    public final boolean geoEnabled;
    @AbstractC15952b(m7988a = "id")

    /* renamed from: id */
    public final long f61047id;
    @AbstractC15952b(m7988a = "id_str")
    public final String idStr;
    @AbstractC15952b(m7988a = "is_translator")
    public final boolean isTranslator;
    @AbstractC15952b(m7988a = "lang")
    public final String lang;
    @AbstractC15952b(m7988a = "listed_count")
    public final int listedCount;
    @AbstractC15952b(m7988a = "location")
    public final String location;
    @AbstractC15952b(m7988a = "name")
    public final String name;
    @AbstractC15952b(m7988a = "profile_background_color")
    public final String profileBackgroundColor;
    @AbstractC15952b(m7988a = "profile_background_image_url")
    public final String profileBackgroundImageUrl;
    @AbstractC15952b(m7988a = "profile_background_image_url_https")
    public final String profileBackgroundImageUrlHttps;
    @AbstractC15952b(m7988a = "profile_background_tile")
    public final boolean profileBackgroundTile;
    @AbstractC15952b(m7988a = "profile_banner_url")
    public final String profileBannerUrl;
    @AbstractC15952b(m7988a = "profile_image_url")
    public final String profileImageUrl;
    @AbstractC15952b(m7988a = "profile_image_url_https")
    public final String profileImageUrlHttps;
    @AbstractC15952b(m7988a = "profile_link_color")
    public final String profileLinkColor;
    @AbstractC15952b(m7988a = "profile_sidebar_border_color")
    public final String profileSidebarBorderColor;
    @AbstractC15952b(m7988a = "profile_sidebar_fill_color")
    public final String profileSidebarFillColor;
    @AbstractC15952b(m7988a = "profile_text_color")
    public final String profileTextColor;
    @AbstractC15952b(m7988a = "profile_use_background_image")
    public final boolean profileUseBackgroundImage;
    @AbstractC15952b(m7988a = "protected")
    public final boolean protectedUser;
    @AbstractC15952b(m7988a = "screen_name")
    public final String screenName;
    @AbstractC15952b(m7988a = "show_all_inline_media")
    public final boolean showAllInlineMedia;
    @AbstractC15952b(m7988a = "status")
    public final Tweet status;
    @AbstractC15952b(m7988a = "statuses_count")
    public final int statusesCount;
    @AbstractC15952b(m7988a = "time_zone")
    public final String timeZone;
    @AbstractC15952b(m7988a = "url")
    public final String url;
    @AbstractC15952b(m7988a = "utc_offset")
    public final int utcOffset;
    @AbstractC15952b(m7988a = "verified")
    public final boolean verified;
    @AbstractC15952b(m7988a = "withheld_in_countries")
    public final List<String> withheldInCountries;
    @AbstractC15952b(m7988a = "withheld_scope")
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
        this.f61047id = j;
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
        return this.f61047id;
    }
}
