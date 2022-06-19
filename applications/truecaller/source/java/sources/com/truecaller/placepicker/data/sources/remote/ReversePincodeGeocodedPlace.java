package com.truecaller.placepicker.data.sources.remote;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\bR\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0005¨\u0006\u001b"}, d2 = {"Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;", "", "", "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;", "component1", "()Ljava/util/List;", "", "component2", "()Ljava/lang/String;", "address_components", "formatted_address", "copy", "(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getFormatted_address", "Ljava/util/List;", "getAddress_components", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "placepicker_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace.class */
public final class ReversePincodeGeocodedPlace {
    private final List<AddressComponent> address_components;
    private final String formatted_address;

    public ReversePincodeGeocodedPlace(List<AddressComponent> list, String str) {
        l.e(list, "address_components");
        l.e(str, "formatted_address");
        this.address_components = list;
        this.formatted_address = str;
    }

    public static /* synthetic */ ReversePincodeGeocodedPlace copy$default(ReversePincodeGeocodedPlace reversePincodeGeocodedPlace, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = reversePincodeGeocodedPlace.address_components;
        }
        if ((i & 2) != 0) {
            str = reversePincodeGeocodedPlace.formatted_address;
        }
        return reversePincodeGeocodedPlace.copy(list, str);
    }

    public final List<AddressComponent> component1() {
        return this.address_components;
    }

    public final String component2() {
        return this.formatted_address;
    }

    public final ReversePincodeGeocodedPlace copy(List<AddressComponent> list, String str) {
        l.e(list, "address_components");
        l.e(str, "formatted_address");
        return new ReversePincodeGeocodedPlace(list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReversePincodeGeocodedPlace)) {
                return false;
            }
            ReversePincodeGeocodedPlace reversePincodeGeocodedPlace = (ReversePincodeGeocodedPlace) obj;
            return l.a(this.address_components, reversePincodeGeocodedPlace.address_components) && l.a(this.formatted_address, reversePincodeGeocodedPlace.formatted_address);
        }
        return true;
    }

    public final List<AddressComponent> getAddress_components() {
        return this.address_components;
    }

    public final String getFormatted_address() {
        return this.formatted_address;
    }

    public int hashCode() {
        List<AddressComponent> list = this.address_components;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.formatted_address;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReversePincodeGeocodedPlace(address_components=");
        m8728C.append(this.address_components);
        m8728C.append(", formatted_address=");
        return C22128a.m8618h(m8728C, this.formatted_address, ")");
    }
}
