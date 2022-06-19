package com.truecaller.profile.data.dto;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0013\u001a\u00020\f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004JL\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0013\u001a\u00020\f2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u001b\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b \u0010\u000bR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010!\u001a\u0004\b\"\u0010\u0004R\u001f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010#\u001a\u0004\b$\u0010\bR\u0019\u0010\u0013\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010%\u001a\u0004\b&\u0010\u000eR\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010!\u001a\u0004\b'\u0010\u0004¨\u0006*"}, d2 = {"Lcom/truecaller/profile/data/dto/Company;", "", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/profile/data/dto/OpenHours;", "component2", "()Ljava/util/List;", "Lcom/truecaller/profile/data/dto/Address;", "component3", "()Lcom/truecaller/profile/data/dto/Address;", "Lcom/truecaller/profile/data/dto/Branding;", "component4", "()Lcom/truecaller/profile/data/dto/Branding;", "component5", AnalyticsConstants.NAME, "openHours", "address", "branding", "size", "copy", "(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/Company;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/profile/data/dto/Address;", "getAddress", "Ljava/lang/String;", "getName", "Ljava/util/List;", "getOpenHours", "Lcom/truecaller/profile/data/dto/Branding;", "getBranding", "getSize", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/Company.class */
public final class Company {
    private final Address address;
    private final Branding branding;
    private final String name;
    private final List<OpenHours> openHours;
    private final String size;

    public Company(String str, List<OpenHours> list, Address address, Branding branding, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "openHours");
        l.e(branding, "branding");
        this.name = str;
        this.openHours = list;
        this.address = address;
        this.branding = branding;
        this.size = str2;
    }

    public static /* synthetic */ Company copy$default(Company company, String str, List list, Address address, Branding branding, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = company.name;
        }
        if ((i & 2) != 0) {
            list = company.openHours;
        }
        if ((i & 4) != 0) {
            address = company.address;
        }
        if ((i & 8) != 0) {
            branding = company.branding;
        }
        if ((i & 16) != 0) {
            str2 = company.size;
        }
        return company.copy(str, list, address, branding, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final List<OpenHours> component2() {
        return this.openHours;
    }

    public final Address component3() {
        return this.address;
    }

    public final Branding component4() {
        return this.branding;
    }

    public final String component5() {
        return this.size;
    }

    public final Company copy(String str, List<OpenHours> list, Address address, Branding branding, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "openHours");
        l.e(branding, "branding");
        return new Company(str, list, address, branding, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Company)) {
                return false;
            }
            Company company = (Company) obj;
            return l.a(this.name, company.name) && l.a(this.openHours, company.openHours) && l.a(this.address, company.address) && l.a(this.branding, company.branding) && l.a(this.size, company.size);
        }
        return true;
    }

    public final Address getAddress() {
        return this.address;
    }

    public final Branding getBranding() {
        return this.branding;
    }

    public final String getName() {
        return this.name;
    }

    public final List<OpenHours> getOpenHours() {
        return this.openHours;
    }

    public final String getSize() {
        return this.size;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<OpenHours> list = this.openHours;
        int hashCode2 = list != null ? list.hashCode() : 0;
        Address address = this.address;
        int hashCode3 = address != null ? address.hashCode() : 0;
        Branding branding = this.branding;
        int hashCode4 = branding != null ? branding.hashCode() : 0;
        String str2 = this.size;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Company(name=");
        m8728C.append(this.name);
        m8728C.append(", openHours=");
        m8728C.append(this.openHours);
        m8728C.append(", address=");
        m8728C.append(this.address);
        m8728C.append(", branding=");
        m8728C.append(this.branding);
        m8728C.append(", size=");
        return C22128a.m8618h(m8728C, this.size, ")");
    }
}
