package com.truecaller.flashsdk.models;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B3\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J@\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u001c\u0010\u0007R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/flashsdk/models/FlashLocationExtras;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()Ljava/lang/Double;", "component3", "component4", "address", "lat", "long", "location_text", "copy", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FlashLocationExtras;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Double;", "getLat", "Ljava/lang/String;", "getAddress", "getLong", "getLocation_text", "<init>", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashLocationExtras.class */
public final class FlashLocationExtras {
    @b("address")
    private final String address;
    @b("lat")
    private final Double lat;
    @b("location_text")
    private final String location_text;
    @b("long")

    /* renamed from: long */
    private final Double f77876long;

    public FlashLocationExtras(String str, Double d, Double d2, String str2) {
        this.address = str;
        this.lat = d;
        this.f77876long = d2;
        this.location_text = str2;
    }

    public /* synthetic */ FlashLocationExtras(String str, Double d, Double d2, String str2, int i, f fVar) {
        this((i & 1) != 0 ? "" : str, d, d2, (i & 8) != 0 ? "" : str2);
    }

    public static /* synthetic */ FlashLocationExtras copy$default(FlashLocationExtras flashLocationExtras, String str, Double d, Double d2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashLocationExtras.address;
        }
        if ((i & 2) != 0) {
            d = flashLocationExtras.lat;
        }
        if ((i & 4) != 0) {
            d2 = flashLocationExtras.f77876long;
        }
        if ((i & 8) != 0) {
            str2 = flashLocationExtras.location_text;
        }
        return flashLocationExtras.copy(str, d, d2, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final Double component2() {
        return this.lat;
    }

    public final Double component3() {
        return this.f77876long;
    }

    public final String component4() {
        return this.location_text;
    }

    public final FlashLocationExtras copy(String str, Double d, Double d2, String str2) {
        return new FlashLocationExtras(str, d, d2, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashLocationExtras)) {
                return false;
            }
            FlashLocationExtras flashLocationExtras = (FlashLocationExtras) obj;
            return l.a(this.address, flashLocationExtras.address) && l.a(this.lat, flashLocationExtras.lat) && l.a(this.f77876long, flashLocationExtras.f77876long) && l.a(this.location_text, flashLocationExtras.location_text);
        }
        return true;
    }

    public final String getAddress() {
        return this.address;
    }

    public final Double getLat() {
        return this.lat;
    }

    public final String getLocation_text() {
        return this.location_text;
    }

    public final Double getLong() {
        return this.f77876long;
    }

    public int hashCode() {
        String str = this.address;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Double d = this.lat;
        int hashCode2 = d != null ? d.hashCode() : 0;
        Double d2 = this.f77876long;
        int hashCode3 = d2 != null ? d2.hashCode() : 0;
        String str2 = this.location_text;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashLocationExtras(address=");
        m8728C.append(this.address);
        m8728C.append(", lat=");
        m8728C.append(this.lat);
        m8728C.append(", long=");
        m8728C.append(this.f77876long);
        m8728C.append(", location_text=");
        return C22128a.m8618h(m8728C, this.location_text, ")");
    }
}
