package com.truecaller.insights.models.smartnotifications;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J.\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "bannerName", "bannerCategory", "deeplink", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getBannerCategory", "getDeeplink", "getBannerName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/smartnotifications/NotificationBannerMetaData.class */
public final class NotificationBannerMetaData implements Parcelable {
    public static final Parcelable.Creator<NotificationBannerMetaData> CREATOR = new C4070a();
    private final String bannerCategory;
    private final String bannerName;
    private final String deeplink;

    /* renamed from: com.truecaller.insights.models.smartnotifications.NotificationBannerMetaData$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/smartnotifications/NotificationBannerMetaData$a.class */
    public static final class C4070a implements Parcelable.Creator<NotificationBannerMetaData> {
        @Override // android.os.Parcelable.Creator
        public NotificationBannerMetaData createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new NotificationBannerMetaData(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public NotificationBannerMetaData[] newArray(int i) {
            return new NotificationBannerMetaData[i];
        }
    }

    public NotificationBannerMetaData(String str, String str2, String str3) {
        C22128a.m8703I0(str, "bannerName", str2, "bannerCategory", str3, "deeplink");
        this.bannerName = str;
        this.bannerCategory = str2;
        this.deeplink = str3;
    }

    public static /* synthetic */ NotificationBannerMetaData copy$default(NotificationBannerMetaData notificationBannerMetaData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notificationBannerMetaData.bannerName;
        }
        if ((i & 2) != 0) {
            str2 = notificationBannerMetaData.bannerCategory;
        }
        if ((i & 4) != 0) {
            str3 = notificationBannerMetaData.deeplink;
        }
        return notificationBannerMetaData.copy(str, str2, str3);
    }

    public final String component1() {
        return this.bannerName;
    }

    public final String component2() {
        return this.bannerCategory;
    }

    public final String component3() {
        return this.deeplink;
    }

    public final NotificationBannerMetaData copy(String str, String str2, String str3) {
        l.e(str, "bannerName");
        l.e(str2, "bannerCategory");
        l.e(str3, "deeplink");
        return new NotificationBannerMetaData(str, str2, str3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NotificationBannerMetaData)) {
                return false;
            }
            NotificationBannerMetaData notificationBannerMetaData = (NotificationBannerMetaData) obj;
            return l.a(this.bannerName, notificationBannerMetaData.bannerName) && l.a(this.bannerCategory, notificationBannerMetaData.bannerCategory) && l.a(this.deeplink, notificationBannerMetaData.deeplink);
        }
        return true;
    }

    public final String getBannerCategory() {
        return this.bannerCategory;
    }

    public final String getBannerName() {
        return this.bannerName;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public int hashCode() {
        String str = this.bannerName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.bannerCategory;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.deeplink;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NotificationBannerMetaData(bannerName=");
        m8728C.append(this.bannerName);
        m8728C.append(", bannerCategory=");
        m8728C.append(this.bannerCategory);
        m8728C.append(", deeplink=");
        return C22128a.m8618h(m8728C, this.deeplink, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.bannerName);
        parcel.writeString(this.bannerCategory);
        parcel.writeString(this.deeplink);
    }
}
