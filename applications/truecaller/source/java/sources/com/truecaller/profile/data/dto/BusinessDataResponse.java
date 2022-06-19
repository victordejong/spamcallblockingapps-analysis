package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0015\b\u0087\b\u0018��2\u00020\u0001Bc\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001a\u001a\u00020\n\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0010\u0012\u0006\u0010\u001e\u001a\u00020\u0013\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b6\u00107J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\r\u0010\bJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0016\u0010\bJ~\u0010 \u001a\u00020��2\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001a\u001a\u00020\n2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\b\b\u0002\u0010\u001d\u001a\u00020\u00102\b\b\u0002\u0010\u001e\u001a\u00020\u00132\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\"\u0010\bJ\u0010\u0010$\u001a\u00020#HÖ\u0001¢\u0006\u0004\b$\u0010%J\u001a\u0010'\u001a\u00020\n2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b'\u0010(R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010)\u001a\u0004\b*\u0010\bR\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010)\u001a\u0004\b+\u0010\bR\u001f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010,\u001a\u0004\b-\u0010\u0005R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010)\u001a\u0004\b.\u0010\bR\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010,\u001a\u0004\b/\u0010\u0005R\u001b\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010)\u001a\u0004\b0\u0010\bR\u0019\u0010\u001d\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u00101\u001a\u0004\b2\u0010\u0012R\u0019\u0010\u001e\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u00103\u001a\u0004\b4\u0010\u0015R\u0019\u0010\u001a\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u00105\u001a\u0004\b\u001a\u0010\f¨\u00068"}, d2 = {"Lcom/truecaller/profile/data/dto/BusinessDataResponse;", "", "", "Lcom/truecaller/profile/data/dto/PhoneNumber;", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", "component3", "", "component4", "()Z", "component5", "", "component6", "Lcom/truecaller/profile/data/dto/OnlineIds;", "component7", "()Lcom/truecaller/profile/data/dto/OnlineIds;", "Lcom/truecaller/profile/data/dto/Company;", "component8", "()Lcom/truecaller/profile/data/dto/Company;", "component9", "phoneNumbers", "avatarUrl", "jobTitle", "isAnonymous", "about", "tags", "onlineIds", "company", "type", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/BusinessDataResponse;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getJobTitle", "getAvatarUrl", "Ljava/util/List;", "getPhoneNumbers", "getAbout", "getTags", "getType", "Lcom/truecaller/profile/data/dto/OnlineIds;", "getOnlineIds", "Lcom/truecaller/profile/data/dto/Company;", "getCompany", "Z", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/BusinessDataResponse.class */
public final class BusinessDataResponse {
    private final String about;
    private final String avatarUrl;
    private final Company company;
    private final boolean isAnonymous;
    private final String jobTitle;
    private final OnlineIds onlineIds;
    private final List<PhoneNumber> phoneNumbers;
    private final List<Long> tags;
    private final String type;

    public BusinessDataResponse(List<PhoneNumber> list, String str, String str2, boolean z, String str3, List<Long> list2, OnlineIds onlineIds, Company company, String str4) {
        l.e(list, "phoneNumbers");
        l.e(list2, "tags");
        l.e(onlineIds, "onlineIds");
        l.e(company, "company");
        this.phoneNumbers = list;
        this.avatarUrl = str;
        this.jobTitle = str2;
        this.isAnonymous = z;
        this.about = str3;
        this.tags = list2;
        this.onlineIds = onlineIds;
        this.company = company;
        this.type = str4;
    }

    public static /* synthetic */ BusinessDataResponse copy$default(BusinessDataResponse businessDataResponse, List list, String str, String str2, boolean z, String str3, List list2, OnlineIds onlineIds, Company company, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            list = businessDataResponse.phoneNumbers;
        }
        if ((i & 2) != 0) {
            str = businessDataResponse.avatarUrl;
        }
        if ((i & 4) != 0) {
            str2 = businessDataResponse.jobTitle;
        }
        if ((i & 8) != 0) {
            z = businessDataResponse.isAnonymous;
        }
        if ((i & 16) != 0) {
            str3 = businessDataResponse.about;
        }
        if ((i & 32) != 0) {
            list2 = businessDataResponse.tags;
        }
        if ((i & 64) != 0) {
            onlineIds = businessDataResponse.onlineIds;
        }
        if ((i & 128) != 0) {
            company = businessDataResponse.company;
        }
        if ((i & 256) != 0) {
            str4 = businessDataResponse.type;
        }
        return businessDataResponse.copy(list, str, str2, z, str3, list2, onlineIds, company, str4);
    }

    public final List<PhoneNumber> component1() {
        return this.phoneNumbers;
    }

    public final String component2() {
        return this.avatarUrl;
    }

    public final String component3() {
        return this.jobTitle;
    }

    public final boolean component4() {
        return this.isAnonymous;
    }

    public final String component5() {
        return this.about;
    }

    public final List<Long> component6() {
        return this.tags;
    }

    public final OnlineIds component7() {
        return this.onlineIds;
    }

    public final Company component8() {
        return this.company;
    }

    public final String component9() {
        return this.type;
    }

    public final BusinessDataResponse copy(List<PhoneNumber> list, String str, String str2, boolean z, String str3, List<Long> list2, OnlineIds onlineIds, Company company, String str4) {
        l.e(list, "phoneNumbers");
        l.e(list2, "tags");
        l.e(onlineIds, "onlineIds");
        l.e(company, "company");
        return new BusinessDataResponse(list, str, str2, z, str3, list2, onlineIds, company, str4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BusinessDataResponse)) {
                return false;
            }
            BusinessDataResponse businessDataResponse = (BusinessDataResponse) obj;
            return l.a(this.phoneNumbers, businessDataResponse.phoneNumbers) && l.a(this.avatarUrl, businessDataResponse.avatarUrl) && l.a(this.jobTitle, businessDataResponse.jobTitle) && this.isAnonymous == businessDataResponse.isAnonymous && l.a(this.about, businessDataResponse.about) && l.a(this.tags, businessDataResponse.tags) && l.a(this.onlineIds, businessDataResponse.onlineIds) && l.a(this.company, businessDataResponse.company) && l.a(this.type, businessDataResponse.type);
        }
        return true;
    }

    public final String getAbout() {
        return this.about;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final Company getCompany() {
        return this.company;
    }

    public final String getJobTitle() {
        return this.jobTitle;
    }

    public final OnlineIds getOnlineIds() {
        return this.onlineIds;
    }

    public final List<PhoneNumber> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final List<Long> getTags() {
        return this.tags;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        List<PhoneNumber> list = this.phoneNumbers;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.avatarUrl;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.jobTitle;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.isAnonymous;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        String str3 = this.about;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        List<Long> list2 = this.tags;
        int hashCode5 = list2 != null ? list2.hashCode() : 0;
        OnlineIds onlineIds = this.onlineIds;
        int hashCode6 = onlineIds != null ? onlineIds.hashCode() : 0;
        Company company = this.company;
        int hashCode7 = company != null ? company.hashCode() : 0;
        String str4 = this.type;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public final boolean isAnonymous() {
        return this.isAnonymous;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BusinessDataResponse(phoneNumbers=");
        m8728C.append(this.phoneNumbers);
        m8728C.append(", avatarUrl=");
        m8728C.append(this.avatarUrl);
        m8728C.append(", jobTitle=");
        m8728C.append(this.jobTitle);
        m8728C.append(", isAnonymous=");
        m8728C.append(this.isAnonymous);
        m8728C.append(", about=");
        m8728C.append(this.about);
        m8728C.append(", tags=");
        m8728C.append(this.tags);
        m8728C.append(", onlineIds=");
        m8728C.append(this.onlineIds);
        m8728C.append(", company=");
        m8728C.append(this.company);
        m8728C.append(", type=");
        return C22128a.m8618h(m8728C, this.type, ")");
    }
}
