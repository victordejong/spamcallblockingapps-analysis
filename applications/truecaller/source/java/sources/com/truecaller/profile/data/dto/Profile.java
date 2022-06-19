package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ<\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\bR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001c\u001a\u0004\b\u001e\u0010\u0004R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b \u0010\u000b¨\u0006#"}, d2 = {"Lcom/truecaller/profile/data/dto/Profile;", "", "", "component1", "()Ljava/lang/String;", "component2", "Lcom/truecaller/profile/data/dto/PersonalData;", "component3", "()Lcom/truecaller/profile/data/dto/PersonalData;", "Lcom/truecaller/profile/data/dto/BusinessData;", "component4", "()Lcom/truecaller/profile/data/dto/BusinessData;", "firstName", "lastName", "personalData", "businessData", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;)Lcom/truecaller/profile/data/dto/Profile;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/profile/data/dto/PersonalData;", "getPersonalData", "Ljava/lang/String;", "getFirstName", "getLastName", "Lcom/truecaller/profile/data/dto/BusinessData;", "getBusinessData", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/Profile.class */
public final class Profile {
    private final BusinessData businessData;
    private final String firstName;
    private final String lastName;
    private final PersonalData personalData;

    public Profile(String str, String str2, PersonalData personalData, BusinessData businessData) {
        l.e(str, "firstName");
        l.e(str2, "lastName");
        this.firstName = str;
        this.lastName = str2;
        this.personalData = personalData;
        this.businessData = businessData;
    }

    public /* synthetic */ Profile(String str, String str2, PersonalData personalData, BusinessData businessData, int i, f fVar) {
        this(str, str2, (i & 4) != 0 ? null : personalData, (i & 8) != 0 ? null : businessData);
    }

    public static /* synthetic */ Profile copy$default(Profile profile, String str, String str2, PersonalData personalData, BusinessData businessData, int i, Object obj) {
        if ((i & 1) != 0) {
            str = profile.firstName;
        }
        if ((i & 2) != 0) {
            str2 = profile.lastName;
        }
        if ((i & 4) != 0) {
            personalData = profile.personalData;
        }
        if ((i & 8) != 0) {
            businessData = profile.businessData;
        }
        return profile.copy(str, str2, personalData, businessData);
    }

    public final String component1() {
        return this.firstName;
    }

    public final String component2() {
        return this.lastName;
    }

    public final PersonalData component3() {
        return this.personalData;
    }

    public final BusinessData component4() {
        return this.businessData;
    }

    public final Profile copy(String str, String str2, PersonalData personalData, BusinessData businessData) {
        l.e(str, "firstName");
        l.e(str2, "lastName");
        return new Profile(str, str2, personalData, businessData);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Profile)) {
                return false;
            }
            Profile profile = (Profile) obj;
            return l.a(this.firstName, profile.firstName) && l.a(this.lastName, profile.lastName) && l.a(this.personalData, profile.personalData) && l.a(this.businessData, profile.businessData);
        }
        return true;
    }

    public final BusinessData getBusinessData() {
        return this.businessData;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final PersonalData getPersonalData() {
        return this.personalData;
    }

    public int hashCode() {
        String str = this.firstName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.lastName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        PersonalData personalData = this.personalData;
        int hashCode3 = personalData != null ? personalData.hashCode() : 0;
        BusinessData businessData = this.businessData;
        if (businessData != null) {
            i = businessData.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Profile(firstName=");
        m8728C.append(this.firstName);
        m8728C.append(", lastName=");
        m8728C.append(this.lastName);
        m8728C.append(", personalData=");
        m8728C.append(this.personalData);
        m8728C.append(", businessData=");
        m8728C.append(this.businessData);
        m8728C.append(")");
        return m8728C.toString();
    }
}
