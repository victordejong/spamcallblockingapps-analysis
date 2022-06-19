package com.callapp.contacts.api.helper.p237vk;

import android.os.Parcel;
import android.os.Parcelable;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b0\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018�� S2\u00020\u0001:\u0001SB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BÝ\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJ\t\u00106\u001a\u00020\u0006HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010@\u001a\u00020\u001cHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010E\u001a\u00020\u0006HÆ\u0003J\t\u0010F\u001a\u00020\u0006HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\bHÆ\u0003Jå\u0001\u0010I\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u001b\u001a\u00020\u001cHÆ\u0001J\b\u0010J\u001a\u00020\u0006H\u0016J\u0013\u0010K\u001a\u00020\u001c2\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u0006HÖ\u0001J\t\u0010O\u001a\u00020\bHÖ\u0001J\u0018\u0010P\u001a\u00020Q2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0006H\u0016R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b \u0010\u001fR\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b!\u0010\"R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n��\u001a\u0004\b#\u0010$R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n��\u001a\u0004\b%\u0010&R\u0011\u0010\u001b\u001a\u00020\u001c¢\u0006\b\n��\u001a\u0004\b'\u0010(R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b)\u0010\u001fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b*\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b+\u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b,\u0010\"R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b-\u0010\u001fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b.\u0010\u001fR\u0013\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b/\u0010\u001fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b0\u0010\u001fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b1\u0010\u001fR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b2\u0010\u001fR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b3\u0010\u001fR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b4\u0010\u001fR\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b5\u0010\"¨\u0006T"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUser;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "id", "", "firstName", "", "lastName", "photo", "birthDate", "verified", "blacklisted", "thumbnail", "screenName", "mobilePhone", "homePhone", "site", "facebook", "twitter", "skype", "city", "Lcom/callapp/contacts/api/helper/vk/VKApiCity;", "country", "Lcom/callapp/contacts/api/helper/vk/VKApiCountry;", "about", "deactivated", "", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V", "getAbout", "()Ljava/lang/String;", "getBirthDate", "getBlacklisted", "()I", "getCity", "()Lcom/callapp/contacts/api/helper/vk/VKApiCity;", "getCountry", "()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;", "getDeactivated", "()Z", "getFacebook", "getFirstName", "getHomePhone", "getId", "getLastName", "getMobilePhone", "getPhoto", "getScreenName", "getSite", "getSkype", "getThumbnail", "getTwitter", "getVerified", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.callapp.contacts.api.helper.vk.VKUser */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUser.class */
public final class VKUser implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    private final String about;
    private final String birthDate;
    private final int blacklisted;
    private final VKApiCity city;
    private final VKApiCountry country;
    private final boolean deactivated;
    private final String facebook;
    private final String firstName;
    private final String homePhone;

    /* renamed from: id */
    private final int f24937id;
    private final String lastName;
    private final String mobilePhone;
    private final String photo;
    private final String screenName;
    private final String site;
    private final String skype;
    private final String thumbnail;
    private final String twitter;
    private final int verified;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/callapp/contacts/api/helper/vk/VKUser;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/callapp/contacts/api/helper/vk/VKUser;", "parse", "json", "Lorg/json/JSONObject;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.vk.VKUser$CREATOR */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKUser$CREATOR.class */
    public static final class CREATOR implements Parcelable.Creator<VKUser> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static VKUser m29084a(JSONObject json) {
            C18524p.m3840d(json, "json");
            JSONObject optJSONObject = json.optJSONObject("city");
            JSONObject optJSONObject2 = json.optJSONObject("country");
            int optInt = json.optInt("id", 0);
            String optString = json.optString("first_name", "");
            String optString2 = json.optString("last_name", "");
            String optString3 = json.optString("photo_max_orig", "");
            String optString4 = json.optString("bdate", "");
            String optString5 = json.optString("photo_100", "");
            return new VKUser(optInt, optString, optString2, optString3, optString4, json.optInt("verified", 0), json.optInt("blacklisted", 0), optString5, json.optString("screen_name", ""), json.optString("mobile_phone", ""), json.optString("ome_phone", ""), json.optString("site", ""), json.optString("facebook", ""), json.optString("twitter", ""), json.optString("skype", ""), optJSONObject != null ? new VKApiCity().parse(optJSONObject) : null, optJSONObject2 != null ? new VKApiCountry().parse(optJSONObject2) : null, json.optString("about", ""), json.optBoolean("deactivated", false));
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VKUser createFromParcel(Parcel parcel) {
            C18524p.m3840d(parcel, "parcel");
            return new VKUser(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VKUser[] newArray(int i) {
            return new VKUser[i];
        }
    }

    public VKUser(int i, String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, VKApiCity vKApiCity, VKApiCountry vKApiCountry, String str13, boolean z) {
        this.f24937id = i;
        this.firstName = str;
        this.lastName = str2;
        this.photo = str3;
        this.birthDate = str4;
        this.verified = i2;
        this.blacklisted = i3;
        this.thumbnail = str5;
        this.screenName = str6;
        this.mobilePhone = str7;
        this.homePhone = str8;
        this.site = str9;
        this.facebook = str10;
        this.twitter = str11;
        this.skype = str12;
        this.city = vKApiCity;
        this.country = vKApiCountry;
        this.about = str13;
        this.deactivated = z;
    }

    public /* synthetic */ VKUser(int i, String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, VKApiCity vKApiCity, VKApiCountry vKApiCountry, String str13, boolean z, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? "" : str, (i4 & 4) != 0 ? "" : str2, (i4 & 8) != 0 ? "" : str3, (i4 & 16) != 0 ? "" : str4, (i4 & 32) != 0 ? 0 : i2, (i4 & 64) != 0 ? 0 : i3, (i4 & 128) != 0 ? "" : str5, (i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? "" : str6, (i4 & 512) != 0 ? "" : str7, (i4 & 1024) != 0 ? "" : str8, (i4 & 2048) != 0 ? "" : str9, (i4 & 4096) != 0 ? "" : str10, (i4 & PropertyFlags.UNSIGNED) != 0 ? "" : str11, (i4 & 16384) != 0 ? "" : str12, vKApiCity, vKApiCountry, (131072 & i4) != 0 ? "" : str13, (i4 & 262144) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VKUser(Parcel parcel) {
        this(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), (VKApiCity) parcel.readParcelable(VKApiCity.class.getClassLoader()), (VKApiCountry) parcel.readParcelable(VKApiCountry.class.getClassLoader()), parcel.readString(), parcel.readByte() != 0);
        C18524p.m3840d(parcel, "parcel");
    }

    public static /* synthetic */ VKUser copy$default(VKUser vKUser, int i, String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, VKApiCity vKApiCity, VKApiCountry vKApiCountry, String str13, boolean z, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = vKUser.f24937id;
        }
        if ((i4 & 2) != 0) {
            str = vKUser.firstName;
        }
        if ((i4 & 4) != 0) {
            str2 = vKUser.lastName;
        }
        if ((i4 & 8) != 0) {
            str3 = vKUser.photo;
        }
        if ((i4 & 16) != 0) {
            str4 = vKUser.birthDate;
        }
        if ((i4 & 32) != 0) {
            i2 = vKUser.verified;
        }
        if ((i4 & 64) != 0) {
            i3 = vKUser.blacklisted;
        }
        if ((i4 & 128) != 0) {
            str5 = vKUser.thumbnail;
        }
        if ((i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            str6 = vKUser.screenName;
        }
        if ((i4 & 512) != 0) {
            str7 = vKUser.mobilePhone;
        }
        if ((i4 & 1024) != 0) {
            str8 = vKUser.homePhone;
        }
        if ((i4 & 2048) != 0) {
            str9 = vKUser.site;
        }
        if ((i4 & 4096) != 0) {
            str10 = vKUser.facebook;
        }
        if ((i4 & PropertyFlags.UNSIGNED) != 0) {
            str11 = vKUser.twitter;
        }
        if ((i4 & 16384) != 0) {
            str12 = vKUser.skype;
        }
        if ((i4 & 32768) != 0) {
            vKApiCity = vKUser.city;
        }
        if ((i4 & 65536) != 0) {
            vKApiCountry = vKUser.country;
        }
        if ((i4 & 131072) != 0) {
            str13 = vKUser.about;
        }
        if ((i4 & 262144) != 0) {
            z = vKUser.deactivated;
        }
        return vKUser.copy(i, str, str2, str3, str4, i2, i3, str5, str6, str7, str8, str9, str10, str11, str12, vKApiCity, vKApiCountry, str13, z);
    }

    public final int component1() {
        return this.f24937id;
    }

    public final String component10() {
        return this.mobilePhone;
    }

    public final String component11() {
        return this.homePhone;
    }

    public final String component12() {
        return this.site;
    }

    public final String component13() {
        return this.facebook;
    }

    public final String component14() {
        return this.twitter;
    }

    public final String component15() {
        return this.skype;
    }

    public final VKApiCity component16() {
        return this.city;
    }

    public final VKApiCountry component17() {
        return this.country;
    }

    public final String component18() {
        return this.about;
    }

    public final boolean component19() {
        return this.deactivated;
    }

    public final String component2() {
        return this.firstName;
    }

    public final String component3() {
        return this.lastName;
    }

    public final String component4() {
        return this.photo;
    }

    public final String component5() {
        return this.birthDate;
    }

    public final int component6() {
        return this.verified;
    }

    public final int component7() {
        return this.blacklisted;
    }

    public final String component8() {
        return this.thumbnail;
    }

    public final String component9() {
        return this.screenName;
    }

    public final VKUser copy(int i, String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, VKApiCity vKApiCity, VKApiCountry vKApiCountry, String str13, boolean z) {
        return new VKUser(i, str, str2, str3, str4, i2, i3, str5, str6, str7, str8, str9, str10, str11, str12, vKApiCity, vKApiCountry, str13, z);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VKUser)) {
                return false;
            }
            VKUser vKUser = (VKUser) obj;
            return this.f24937id == vKUser.f24937id && C18524p.m3850a((Object) this.firstName, (Object) vKUser.firstName) && C18524p.m3850a((Object) this.lastName, (Object) vKUser.lastName) && C18524p.m3850a((Object) this.photo, (Object) vKUser.photo) && C18524p.m3850a((Object) this.birthDate, (Object) vKUser.birthDate) && this.verified == vKUser.verified && this.blacklisted == vKUser.blacklisted && C18524p.m3850a((Object) this.thumbnail, (Object) vKUser.thumbnail) && C18524p.m3850a((Object) this.screenName, (Object) vKUser.screenName) && C18524p.m3850a((Object) this.mobilePhone, (Object) vKUser.mobilePhone) && C18524p.m3850a((Object) this.homePhone, (Object) vKUser.homePhone) && C18524p.m3850a((Object) this.site, (Object) vKUser.site) && C18524p.m3850a((Object) this.facebook, (Object) vKUser.facebook) && C18524p.m3850a((Object) this.twitter, (Object) vKUser.twitter) && C18524p.m3850a((Object) this.skype, (Object) vKUser.skype) && C18524p.m3850a(this.city, vKUser.city) && C18524p.m3850a(this.country, vKUser.country) && C18524p.m3850a((Object) this.about, (Object) vKUser.about) && this.deactivated == vKUser.deactivated;
        }
        return true;
    }

    public final String getAbout() {
        return this.about;
    }

    public final String getBirthDate() {
        return this.birthDate;
    }

    public final int getBlacklisted() {
        return this.blacklisted;
    }

    public final VKApiCity getCity() {
        return this.city;
    }

    public final VKApiCountry getCountry() {
        return this.country;
    }

    public final boolean getDeactivated() {
        return this.deactivated;
    }

    public final String getFacebook() {
        return this.facebook;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final String getHomePhone() {
        return this.homePhone;
    }

    public final int getId() {
        return this.f24937id;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final String getMobilePhone() {
        return this.mobilePhone;
    }

    public final String getPhoto() {
        return this.photo;
    }

    public final String getScreenName() {
        return this.screenName;
    }

    public final String getSite() {
        return this.site;
    }

    public final String getSkype() {
        return this.skype;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final String getTwitter() {
        return this.twitter;
    }

    public final int getVerified() {
        return this.verified;
    }

    public final int hashCode() {
        int i = this.f24937id;
        String str = this.firstName;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.lastName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.photo;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.birthDate;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        int i3 = this.verified;
        int i4 = this.blacklisted;
        String str5 = this.thumbnail;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.screenName;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.mobilePhone;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.homePhone;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.site;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.facebook;
        int hashCode10 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.twitter;
        int hashCode11 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.skype;
        int hashCode12 = str12 != null ? str12.hashCode() : 0;
        VKApiCity vKApiCity = this.city;
        int hashCode13 = vKApiCity != null ? vKApiCity.hashCode() : 0;
        VKApiCountry vKApiCountry = this.country;
        int hashCode14 = vKApiCountry != null ? vKApiCountry.hashCode() : 0;
        String str13 = this.about;
        if (str13 != null) {
            i2 = str13.hashCode();
        }
        boolean z = this.deactivated;
        int i5 = z ? 1 : 0;
        if (z) {
            i5 = 1;
        }
        return (((((((((((((((((((((((((((((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + i2) * 31) + i5;
    }

    public final String toString() {
        return "VKUser(id=" + this.f24937id + ", firstName=" + this.firstName + ", lastName=" + this.lastName + ", photo=" + this.photo + ", birthDate=" + this.birthDate + ", verified=" + this.verified + ", blacklisted=" + this.blacklisted + ", thumbnail=" + this.thumbnail + ", screenName=" + this.screenName + ", mobilePhone=" + this.mobilePhone + ", homePhone=" + this.homePhone + ", site=" + this.site + ", facebook=" + this.facebook + ", twitter=" + this.twitter + ", skype=" + this.skype + ", city=" + this.city + ", country=" + this.country + ", about=" + this.about + ", deactivated=" + this.deactivated + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C18524p.m3840d(parcel, "parcel");
        parcel.writeInt(this.f24937id);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.photo);
        parcel.writeString(this.birthDate);
        parcel.writeInt(this.verified);
        parcel.writeInt(this.blacklisted);
        parcel.writeString(this.thumbnail);
        parcel.writeString(this.screenName);
        parcel.writeString(this.mobilePhone);
        parcel.writeString(this.homePhone);
        parcel.writeString(this.site);
        parcel.writeString(this.facebook);
        parcel.writeString(this.twitter);
        parcel.writeString(this.skype);
        parcel.writeParcelable(this.city, i);
        parcel.writeParcelable(this.country, i);
        parcel.writeString(this.about);
        parcel.writeByte(this.deactivated ? (byte) 1 : (byte) 0);
    }
}
