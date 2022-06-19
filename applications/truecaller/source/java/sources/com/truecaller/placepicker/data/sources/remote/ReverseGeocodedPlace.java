package com.truecaller.placepicker.data.sources.remote;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B%\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ4\u0010\r\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001b\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;", "component3", "()Ljava/util/List;", "formatted_address", "place_id", "address_components", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getAddress_components", "Ljava/lang/String;", "getFormatted_address", "getPlace_id", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "placepicker_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace.class */
public final class ReverseGeocodedPlace {
    private final List<AddressComponent> address_components;
    private final String formatted_address;
    private final String place_id;

    public ReverseGeocodedPlace(String str, String str2, List<AddressComponent> list) {
        l.e(str, "formatted_address");
        l.e(str2, "place_id");
        l.e(list, "address_components");
        this.formatted_address = str;
        this.place_id = str2;
        this.address_components = list;
    }

    public static /* synthetic */ ReverseGeocodedPlace copy$default(ReverseGeocodedPlace reverseGeocodedPlace, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = reverseGeocodedPlace.formatted_address;
        }
        if ((i & 2) != 0) {
            str2 = reverseGeocodedPlace.place_id;
        }
        if ((i & 4) != 0) {
            list = reverseGeocodedPlace.address_components;
        }
        return reverseGeocodedPlace.copy(str, str2, list);
    }

    public final String component1() {
        return this.formatted_address;
    }

    public final String component2() {
        return this.place_id;
    }

    public final List<AddressComponent> component3() {
        return this.address_components;
    }

    public final ReverseGeocodedPlace copy(String str, String str2, List<AddressComponent> list) {
        l.e(str, "formatted_address");
        l.e(str2, "place_id");
        l.e(list, "address_components");
        return new ReverseGeocodedPlace(str, str2, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReverseGeocodedPlace)) {
                return false;
            }
            ReverseGeocodedPlace reverseGeocodedPlace = (ReverseGeocodedPlace) obj;
            return l.a(this.formatted_address, reverseGeocodedPlace.formatted_address) && l.a(this.place_id, reverseGeocodedPlace.place_id) && l.a(this.address_components, reverseGeocodedPlace.address_components);
        }
        return true;
    }

    public final List<AddressComponent> getAddress_components() {
        return this.address_components;
    }

    public final String getFormatted_address() {
        return this.formatted_address;
    }

    public final String getPlace_id() {
        return this.place_id;
    }

    public int hashCode() {
        String str = this.formatted_address;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.place_id;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<AddressComponent> list = this.address_components;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReverseGeocodedPlace(formatted_address=");
        m8728C.append(this.formatted_address);
        m8728C.append(", place_id=");
        m8728C.append(this.place_id);
        m8728C.append(", address_components=");
        return C22128a.m8602l(m8728C, this.address_components, ")");
    }
}
