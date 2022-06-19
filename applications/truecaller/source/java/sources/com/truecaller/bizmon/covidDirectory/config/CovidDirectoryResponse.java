package com.truecaller.bizmon.covidDirectory.config;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004JB\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004R\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u001b\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryResponse;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "phoneNumber", "hospitalName", "address", "district", "state", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryResponse;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getPhoneNumber", "getHospitalName", "getState", "getDistrict", "getAddress", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/covidDirectory/config/CovidDirectoryResponse.class */
public final class CovidDirectoryResponse {
    private final String address;
    private final String district;
    @b("hospital_name")
    private final String hospitalName;
    @b("phone_number")
    private final String phoneNumber;
    private final String state;

    public CovidDirectoryResponse(String str, String str2, String str3, String str4, String str5) {
        l.e(str, "phoneNumber");
        l.e(str2, "hospitalName");
        l.e(str3, "address");
        l.e(str4, "district");
        l.e(str5, "state");
        this.phoneNumber = str;
        this.hospitalName = str2;
        this.address = str3;
        this.district = str4;
        this.state = str5;
    }

    public static /* synthetic */ CovidDirectoryResponse copy$default(CovidDirectoryResponse covidDirectoryResponse, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = covidDirectoryResponse.phoneNumber;
        }
        if ((i & 2) != 0) {
            str2 = covidDirectoryResponse.hospitalName;
        }
        if ((i & 4) != 0) {
            str3 = covidDirectoryResponse.address;
        }
        if ((i & 8) != 0) {
            str4 = covidDirectoryResponse.district;
        }
        if ((i & 16) != 0) {
            str5 = covidDirectoryResponse.state;
        }
        return covidDirectoryResponse.copy(str, str2, str3, str4, str5);
    }

    public final String component1() {
        return this.phoneNumber;
    }

    public final String component2() {
        return this.hospitalName;
    }

    public final String component3() {
        return this.address;
    }

    public final String component4() {
        return this.district;
    }

    public final String component5() {
        return this.state;
    }

    public final CovidDirectoryResponse copy(String str, String str2, String str3, String str4, String str5) {
        l.e(str, "phoneNumber");
        l.e(str2, "hospitalName");
        l.e(str3, "address");
        l.e(str4, "district");
        l.e(str5, "state");
        return new CovidDirectoryResponse(str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CovidDirectoryResponse)) {
                return false;
            }
            CovidDirectoryResponse covidDirectoryResponse = (CovidDirectoryResponse) obj;
            return l.a(this.phoneNumber, covidDirectoryResponse.phoneNumber) && l.a(this.hospitalName, covidDirectoryResponse.hospitalName) && l.a(this.address, covidDirectoryResponse.address) && l.a(this.district, covidDirectoryResponse.district) && l.a(this.state, covidDirectoryResponse.state);
        }
        return true;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getDistrict() {
        return this.district;
    }

    public final String getHospitalName() {
        return this.hospitalName;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.phoneNumber;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.hospitalName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.address;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.district;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.state;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CovidDirectoryResponse(phoneNumber=");
        m8728C.append(this.phoneNumber);
        m8728C.append(", hospitalName=");
        m8728C.append(this.hospitalName);
        m8728C.append(", address=");
        m8728C.append(this.address);
        m8728C.append(", district=");
        m8728C.append(this.district);
        m8728C.append(", state=");
        return C22128a.m8618h(m8728C, this.state, ")");
    }
}
