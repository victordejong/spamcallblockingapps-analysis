package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0018\b\u0087\b\u0018��2\u00020\u0001B\u007f\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\u0006\u0010\u001c\u001a\u00020\f\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010!\u001a\u00020\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b>\u0010?J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u000f\u0010\bJ\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0005J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0011\u0010\bJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0012\u0010\bJ\u0010\u0010\u0013\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0013\u0010\bJ\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0014\u0010\bJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0015\u0010\bJ\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J \u0001\u0010%\u001a\u00020��2\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\t2\b\b\u0002\u0010\u001c\u001a\u00020\f2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010!\u001a\u00020\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0016HÆ\u0001¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b'\u0010\bJ\u0010\u0010)\u001a\u00020(HÖ\u0001¢\u0006\u0004\b)\u0010*J\u001a\u0010,\u001a\u00020\u00162\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b,\u0010-R\u001b\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010.\u001a\u0004\b/\u0010\bR\u001b\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010.\u001a\u0004\b0\u0010\bR\u0019\u0010\u001a\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010.\u001a\u0004\b1\u0010\bR\u001f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u00102\u001a\u0004\b3\u0010\u0005R\u0019\u0010!\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010.\u001a\u0004\b4\u0010\bR\u0019\u0010\u001b\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u00105\u001a\u0004\b6\u0010\u000bR\u001b\u0010$\u001a\u0004\u0018\u00010\u00168\u0006@\u0006¢\u0006\f\n\u0004\b$\u00107\u001a\u0004\b$\u0010\u0018R\u001b\u0010\"\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010.\u001a\u0004\b8\u0010\bR\u0019\u0010\u001c\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u00109\u001a\u0004\b:\u0010\u000eR\u001b\u0010 \u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b \u0010.\u001a\u0004\b;\u0010\bR\u001b\u0010#\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b#\u0010.\u001a\u0004\b<\u0010\bR\u001f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u00102\u001a\u0004\b=\u0010\u0005¨\u0006@"}, d2 = {"Lcom/truecaller/profile/data/dto/PersonalData;", "", "", "", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", "Lcom/truecaller/profile/data/dto/Address;", "component3", "()Lcom/truecaller/profile/data/dto/Address;", "Lcom/truecaller/profile/data/dto/OnlineIds;", "component4", "()Lcom/truecaller/profile/data/dto/OnlineIds;", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "", "component12", "()Ljava/lang/Boolean;", "phoneNumbers", "gender", "address", "onlineIds", "avatarUrl", "tags", "companyName", "jobTitle", "privacy", "about", "birthday", "isCredUser", "copy", "(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/truecaller/profile/data/dto/PersonalData;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAvatarUrl", "getCompanyName", "getGender", "Ljava/util/List;", "getTags", "getPrivacy", "Lcom/truecaller/profile/data/dto/Address;", "getAddress", "Ljava/lang/Boolean;", "getAbout", "Lcom/truecaller/profile/data/dto/OnlineIds;", "getOnlineIds", "getJobTitle", "getBirthday", "getPhoneNumbers", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/PersonalData.class */
public final class PersonalData {
    private final String about;
    private final Address address;
    private final String avatarUrl;
    private final String birthday;
    private final String companyName;
    private final String gender;
    private final Boolean isCredUser;
    private final String jobTitle;
    private final OnlineIds onlineIds;
    private final List<Long> phoneNumbers;
    private final String privacy;
    private final List<Long> tags;

    public PersonalData(List<Long> list, String str, Address address, OnlineIds onlineIds, String str2, List<Long> list2, String str3, String str4, String str5, String str6, String str7, Boolean bool) {
        l.e(list, "phoneNumbers");
        l.e(str, "gender");
        l.e(address, "address");
        l.e(onlineIds, "onlineIds");
        l.e(list2, "tags");
        l.e(str5, "privacy");
        this.phoneNumbers = list;
        this.gender = str;
        this.address = address;
        this.onlineIds = onlineIds;
        this.avatarUrl = str2;
        this.tags = list2;
        this.companyName = str3;
        this.jobTitle = str4;
        this.privacy = str5;
        this.about = str6;
        this.birthday = str7;
        this.isCredUser = bool;
    }

    public static /* synthetic */ PersonalData copy$default(PersonalData personalData, List list, String str, Address address, OnlineIds onlineIds, String str2, List list2, String str3, String str4, String str5, String str6, String str7, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            list = personalData.phoneNumbers;
        }
        if ((i & 2) != 0) {
            str = personalData.gender;
        }
        if ((i & 4) != 0) {
            address = personalData.address;
        }
        if ((i & 8) != 0) {
            onlineIds = personalData.onlineIds;
        }
        if ((i & 16) != 0) {
            str2 = personalData.avatarUrl;
        }
        if ((i & 32) != 0) {
            list2 = personalData.tags;
        }
        if ((i & 64) != 0) {
            str3 = personalData.companyName;
        }
        if ((i & 128) != 0) {
            str4 = personalData.jobTitle;
        }
        if ((i & 256) != 0) {
            str5 = personalData.privacy;
        }
        if ((i & 512) != 0) {
            str6 = personalData.about;
        }
        if ((i & 1024) != 0) {
            str7 = personalData.birthday;
        }
        if ((i & 2048) != 0) {
            bool = personalData.isCredUser;
        }
        return personalData.copy(list, str, address, onlineIds, str2, list2, str3, str4, str5, str6, str7, bool);
    }

    public final List<Long> component1() {
        return this.phoneNumbers;
    }

    public final String component10() {
        return this.about;
    }

    public final String component11() {
        return this.birthday;
    }

    public final Boolean component12() {
        return this.isCredUser;
    }

    public final String component2() {
        return this.gender;
    }

    public final Address component3() {
        return this.address;
    }

    public final OnlineIds component4() {
        return this.onlineIds;
    }

    public final String component5() {
        return this.avatarUrl;
    }

    public final List<Long> component6() {
        return this.tags;
    }

    public final String component7() {
        return this.companyName;
    }

    public final String component8() {
        return this.jobTitle;
    }

    public final String component9() {
        return this.privacy;
    }

    public final PersonalData copy(List<Long> list, String str, Address address, OnlineIds onlineIds, String str2, List<Long> list2, String str3, String str4, String str5, String str6, String str7, Boolean bool) {
        l.e(list, "phoneNumbers");
        l.e(str, "gender");
        l.e(address, "address");
        l.e(onlineIds, "onlineIds");
        l.e(list2, "tags");
        l.e(str5, "privacy");
        return new PersonalData(list, str, address, onlineIds, str2, list2, str3, str4, str5, str6, str7, bool);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PersonalData)) {
                return false;
            }
            PersonalData personalData = (PersonalData) obj;
            return l.a(this.phoneNumbers, personalData.phoneNumbers) && l.a(this.gender, personalData.gender) && l.a(this.address, personalData.address) && l.a(this.onlineIds, personalData.onlineIds) && l.a(this.avatarUrl, personalData.avatarUrl) && l.a(this.tags, personalData.tags) && l.a(this.companyName, personalData.companyName) && l.a(this.jobTitle, personalData.jobTitle) && l.a(this.privacy, personalData.privacy) && l.a(this.about, personalData.about) && l.a(this.birthday, personalData.birthday) && l.a(this.isCredUser, personalData.isCredUser);
        }
        return true;
    }

    public final String getAbout() {
        return this.about;
    }

    public final Address getAddress() {
        return this.address;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getBirthday() {
        return this.birthday;
    }

    public final String getCompanyName() {
        return this.companyName;
    }

    public final String getGender() {
        return this.gender;
    }

    public final String getJobTitle() {
        return this.jobTitle;
    }

    public final OnlineIds getOnlineIds() {
        return this.onlineIds;
    }

    public final List<Long> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final String getPrivacy() {
        return this.privacy;
    }

    public final List<Long> getTags() {
        return this.tags;
    }

    public int hashCode() {
        List<Long> list = this.phoneNumbers;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.gender;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Address address = this.address;
        int hashCode3 = address != null ? address.hashCode() : 0;
        OnlineIds onlineIds = this.onlineIds;
        int hashCode4 = onlineIds != null ? onlineIds.hashCode() : 0;
        String str2 = this.avatarUrl;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        List<Long> list2 = this.tags;
        int hashCode6 = list2 != null ? list2.hashCode() : 0;
        String str3 = this.companyName;
        int hashCode7 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.jobTitle;
        int hashCode8 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.privacy;
        int hashCode9 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.about;
        int hashCode10 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.birthday;
        int hashCode11 = str7 != null ? str7.hashCode() : 0;
        Boolean bool = this.isCredUser;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public final Boolean isCredUser() {
        return this.isCredUser;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PersonalData(phoneNumbers=");
        m8728C.append(this.phoneNumbers);
        m8728C.append(", gender=");
        m8728C.append(this.gender);
        m8728C.append(", address=");
        m8728C.append(this.address);
        m8728C.append(", onlineIds=");
        m8728C.append(this.onlineIds);
        m8728C.append(", avatarUrl=");
        m8728C.append(this.avatarUrl);
        m8728C.append(", tags=");
        m8728C.append(this.tags);
        m8728C.append(", companyName=");
        m8728C.append(this.companyName);
        m8728C.append(", jobTitle=");
        m8728C.append(this.jobTitle);
        m8728C.append(", privacy=");
        m8728C.append(this.privacy);
        m8728C.append(", about=");
        m8728C.append(this.about);
        m8728C.append(", birthday=");
        m8728C.append(this.birthday);
        m8728C.append(", isCredUser=");
        m8728C.append(this.isCredUser);
        m8728C.append(")");
        return m8728C.toString();
    }
}
