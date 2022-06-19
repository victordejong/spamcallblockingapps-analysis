package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018��2\u00020\u0001BQ\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0017\u001a\u00020\f\u0012\u0006\u0010\u0018\u001a\u00020\u000f¢\u0006\u0004\b.\u0010/J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\n\u0010\bJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0005J\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011Jh\u0010\u0019\u001a\u00020��2\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0017\u001a\u00020\f2\b\b\u0002\u0010\u0018\u001a\u00020\u000fHÆ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001b\u0010\bJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010!\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b!\u0010\"R\u0019\u0010\u0017\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010#\u001a\u0004\b$\u0010\u000eR\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010%\u001a\u0004\b&\u0010\bR\u001f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010'\u001a\u0004\b(\u0010\u0005R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010%\u001a\u0004\b)\u0010\bR\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010%\u001a\u0004\b*\u0010\bR\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010'\u001a\u0004\b+\u0010\u0005R\u0019\u0010\u0018\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010,\u001a\u0004\b-\u0010\u0011¨\u00060"}, d2 = {"Lcom/truecaller/profile/data/dto/BusinessData;", "", "", "", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "Lcom/truecaller/profile/data/dto/OnlineIds;", "component6", "()Lcom/truecaller/profile/data/dto/OnlineIds;", "Lcom/truecaller/profile/data/dto/Company;", "component7", "()Lcom/truecaller/profile/data/dto/Company;", "phoneNumbers", "avatarUrl", "jobTitle", "about", "tags", "onlineIds", "company", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;)Lcom/truecaller/profile/data/dto/BusinessData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/profile/data/dto/OnlineIds;", "getOnlineIds", "Ljava/lang/String;", "getJobTitle", "Ljava/util/List;", "getTags", "getAvatarUrl", "getAbout", "getPhoneNumbers", "Lcom/truecaller/profile/data/dto/Company;", "getCompany", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/BusinessData.class */
public final class BusinessData {
    private final String about;
    private final String avatarUrl;
    private final Company company;
    private final String jobTitle;
    private final OnlineIds onlineIds;
    private final List<Long> phoneNumbers;
    private final List<Long> tags;

    public BusinessData(List<Long> list, String str, String str2, String str3, List<Long> list2, OnlineIds onlineIds, Company company) {
        l.e(list, "phoneNumbers");
        l.e(list2, "tags");
        l.e(onlineIds, "onlineIds");
        l.e(company, "company");
        this.phoneNumbers = list;
        this.avatarUrl = str;
        this.jobTitle = str2;
        this.about = str3;
        this.tags = list2;
        this.onlineIds = onlineIds;
        this.company = company;
    }

    public static /* synthetic */ BusinessData copy$default(BusinessData businessData, List list, String str, String str2, String str3, List list2, OnlineIds onlineIds, Company company, int i, Object obj) {
        if ((i & 1) != 0) {
            list = businessData.phoneNumbers;
        }
        if ((i & 2) != 0) {
            str = businessData.avatarUrl;
        }
        if ((i & 4) != 0) {
            str2 = businessData.jobTitle;
        }
        if ((i & 8) != 0) {
            str3 = businessData.about;
        }
        if ((i & 16) != 0) {
            list2 = businessData.tags;
        }
        if ((i & 32) != 0) {
            onlineIds = businessData.onlineIds;
        }
        if ((i & 64) != 0) {
            company = businessData.company;
        }
        return businessData.copy(list, str, str2, str3, list2, onlineIds, company);
    }

    public final List<Long> component1() {
        return this.phoneNumbers;
    }

    public final String component2() {
        return this.avatarUrl;
    }

    public final String component3() {
        return this.jobTitle;
    }

    public final String component4() {
        return this.about;
    }

    public final List<Long> component5() {
        return this.tags;
    }

    public final OnlineIds component6() {
        return this.onlineIds;
    }

    public final Company component7() {
        return this.company;
    }

    public final BusinessData copy(List<Long> list, String str, String str2, String str3, List<Long> list2, OnlineIds onlineIds, Company company) {
        l.e(list, "phoneNumbers");
        l.e(list2, "tags");
        l.e(onlineIds, "onlineIds");
        l.e(company, "company");
        return new BusinessData(list, str, str2, str3, list2, onlineIds, company);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BusinessData)) {
                return false;
            }
            BusinessData businessData = (BusinessData) obj;
            return l.a(this.phoneNumbers, businessData.phoneNumbers) && l.a(this.avatarUrl, businessData.avatarUrl) && l.a(this.jobTitle, businessData.jobTitle) && l.a(this.about, businessData.about) && l.a(this.tags, businessData.tags) && l.a(this.onlineIds, businessData.onlineIds) && l.a(this.company, businessData.company);
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

    public final List<Long> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final List<Long> getTags() {
        return this.tags;
    }

    public int hashCode() {
        List<Long> list = this.phoneNumbers;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.avatarUrl;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.jobTitle;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.about;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        List<Long> list2 = this.tags;
        int hashCode5 = list2 != null ? list2.hashCode() : 0;
        OnlineIds onlineIds = this.onlineIds;
        int hashCode6 = onlineIds != null ? onlineIds.hashCode() : 0;
        Company company = this.company;
        if (company != null) {
            i = company.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BusinessData(phoneNumbers=");
        m8728C.append(this.phoneNumbers);
        m8728C.append(", avatarUrl=");
        m8728C.append(this.avatarUrl);
        m8728C.append(", jobTitle=");
        m8728C.append(this.jobTitle);
        m8728C.append(", about=");
        m8728C.append(this.about);
        m8728C.append(", tags=");
        m8728C.append(this.tags);
        m8728C.append(", onlineIds=");
        m8728C.append(this.onlineIds);
        m8728C.append(", company=");
        m8728C.append(this.company);
        m8728C.append(")");
        return m8728C.toString();
    }
}
