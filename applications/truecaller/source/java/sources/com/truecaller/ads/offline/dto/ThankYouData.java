package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B/\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b#\u0010$J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J@\u0010\f\u001a\u00020��2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001e\u001a\u0004\b \u0010\u0004R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b!\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\"\u0010\u0004¨\u0006%"}, d2 = {"Lcom/truecaller/ads/offline/dto/ThankYouData;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "title", "desc", "cta", "url", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/ThankYouData;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getTitle", "getCta", "getUrl", "getDesc", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ThankYouData.class */
public final class ThankYouData implements Parcelable {
    public static final Parcelable.Creator<ThankYouData> CREATOR = new C2831a();
    private final String cta;
    private final String desc;
    private final String title;
    private final String url;

    /* renamed from: com.truecaller.ads.offline.dto.ThankYouData$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ThankYouData$a.class */
    public static final class C2831a implements Parcelable.Creator<ThankYouData> {
        @Override // android.os.Parcelable.Creator
        public ThankYouData createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ThankYouData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ThankYouData[] newArray(int i) {
            return new ThankYouData[i];
        }
    }

    public ThankYouData(String str, String str2, String str3, String str4) {
        this.title = str;
        this.desc = str2;
        this.cta = str3;
        this.url = str4;
    }

    public static /* synthetic */ ThankYouData copy$default(ThankYouData thankYouData, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = thankYouData.title;
        }
        if ((i & 2) != 0) {
            str2 = thankYouData.desc;
        }
        if ((i & 4) != 0) {
            str3 = thankYouData.cta;
        }
        if ((i & 8) != 0) {
            str4 = thankYouData.url;
        }
        return thankYouData.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.desc;
    }

    public final String component3() {
        return this.cta;
    }

    public final String component4() {
        return this.url;
    }

    public final ThankYouData copy(String str, String str2, String str3, String str4) {
        return new ThankYouData(str, str2, str3, str4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ThankYouData)) {
                return false;
            }
            ThankYouData thankYouData = (ThankYouData) obj;
            return l.a(this.title, thankYouData.title) && l.a(this.desc, thankYouData.desc) && l.a(this.cta, thankYouData.cta) && l.a(this.url, thankYouData.url);
        }
        return true;
    }

    public final String getCta() {
        return this.cta;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.desc;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.cta;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.url;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ThankYouData(title=");
        m8728C.append(this.title);
        m8728C.append(", desc=");
        m8728C.append(this.desc);
        m8728C.append(", cta=");
        m8728C.append(this.cta);
        m8728C.append(", url=");
        return C22128a.m8618h(m8728C, this.url, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.title);
        parcel.writeString(this.desc);
        parcel.writeString(this.cta);
        parcel.writeString(this.url);
    }
}
