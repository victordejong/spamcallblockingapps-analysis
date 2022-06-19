package com.truecaller.flashsdk.models;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B+\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J4\u0010\n\u001a\u00020��2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/flashsdk/models/FlashLocation;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "street", "area", "city", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FlashLocation;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCity", "getStreet", "getArea", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashLocation.class */
public final class FlashLocation {
    private final String area;
    private final String city;
    private final String street;

    public FlashLocation() {
        this(null, null, null, 7, null);
    }

    public FlashLocation(String str, String str2, String str3) {
        this.street = str;
        this.area = str2;
        this.city = str3;
    }

    public /* synthetic */ FlashLocation(String str, String str2, String str3, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }

    public static /* synthetic */ FlashLocation copy$default(FlashLocation flashLocation, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashLocation.street;
        }
        if ((i & 2) != 0) {
            str2 = flashLocation.area;
        }
        if ((i & 4) != 0) {
            str3 = flashLocation.city;
        }
        return flashLocation.copy(str, str2, str3);
    }

    public final String component1() {
        return this.street;
    }

    public final String component2() {
        return this.area;
    }

    public final String component3() {
        return this.city;
    }

    public final FlashLocation copy(String str, String str2, String str3) {
        return new FlashLocation(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashLocation)) {
                return false;
            }
            FlashLocation flashLocation = (FlashLocation) obj;
            return l.a(this.street, flashLocation.street) && l.a(this.area, flashLocation.area) && l.a(this.city, flashLocation.city);
        }
        return true;
    }

    public final String getArea() {
        return this.area;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getStreet() {
        return this.street;
    }

    public int hashCode() {
        String str = this.street;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.area;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.city;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashLocation(street=");
        m8728C.append(this.street);
        m8728C.append(", area=");
        m8728C.append(this.area);
        m8728C.append(", city=");
        return C22128a.m8618h(m8728C, this.city, ")");
    }
}
