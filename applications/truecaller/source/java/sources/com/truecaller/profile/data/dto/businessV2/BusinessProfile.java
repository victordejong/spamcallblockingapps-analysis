package com.truecaller.profile.data.dto.businessV2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001f\b\u0087\b\u0018��2\u00020\u0001B\u0085\u0001\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\bJ\u0010KJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u000f\u0010\bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u008e\u0001\u0010\u001e\u001a\u00020��2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0012HÆ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b \u0010\u0004J\u0010\u0010\"\u001a\u00020!HÖ\u0001¢\u0006\u0004\b\"\u0010#J\u001a\u0010'\u001a\u00020&2\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b'\u0010(J\u0010\u0010)\u001a\u00020!HÖ\u0001¢\u0006\u0004\b)\u0010#J \u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020!HÖ\u0001¢\u0006\u0004\b.\u0010/R*\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u00100\u001a\u0004\b1\u0010\b\"\u0004\b2\u00103R$\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u00104\u001a\u0004\b5\u0010\r\"\u0004\b6\u00107R$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u00108\u001a\u0004\b9\u0010\u0004\"\u0004\b:\u0010;R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u00108\u001a\u0004\b<\u0010\u0004\"\u0004\b=\u0010;R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u00108\u001a\u0004\b>\u0010\u0004\"\u0004\b?\u0010;R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u00108\u001a\u0004\b@\u0010\u0004\"\u0004\bA\u0010;R*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u00100\u001a\u0004\bB\u0010\b\"\u0004\bC\u00103R$\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010D\u001a\u0004\bE\u0010\u0014\"\u0004\bF\u0010GR*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u00100\u001a\u0004\bH\u0010\b\"\u0004\bI\u00103¨\u0006L"}, d2 = {"Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "", "", "component2", "()Ljava/util/List;", "component3", "component4", "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;", "component5", "()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;", "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;", "component6", "component7", "component8", "Lcom/truecaller/profile/data/dto/businessV2/Branding;", "component9", "()Lcom/truecaller/profile/data/dto/businessV2/Branding;", AnalyticsConstants.NAME, "phoneNumbers", "about", "tags", "onlineIds", "locationDetails", "size", "paymentIdentifier", "branding", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/util/List;", "getLocationDetails", "setLocationDetails", "(Ljava/util/List;)V", "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;", "getOnlineIds", "setOnlineIds", "(Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;)V", "Ljava/lang/String;", "getPaymentIdentifier", "setPaymentIdentifier", "(Ljava/lang/String;)V", "getSize", "setSize", "getName", "setName", "getAbout", "setAbout", "getTags", "setTags", "Lcom/truecaller/profile/data/dto/businessV2/Branding;", "getBranding", "setBranding", "(Lcom/truecaller/profile/data/dto/businessV2/Branding;)V", "getPhoneNumbers", "setPhoneNumbers", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/BusinessProfile.class */
public final class BusinessProfile implements Parcelable {
    public static final Parcelable.Creator<BusinessProfile> CREATOR = new C4379a();
    private String about;
    private Branding branding;
    private List<LocationDetail> locationDetails;
    private String name;
    private OnlineIds onlineIds;
    private String paymentIdentifier;
    private List<Long> phoneNumbers;
    private String size;
    private List<Long> tags;

    /* renamed from: com.truecaller.profile.data.dto.businessV2.BusinessProfile$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/BusinessProfile$a.class */
    public static final class C4379a implements Parcelable.Creator<BusinessProfile> {
        @Override // android.os.Parcelable.Creator
        public BusinessProfile createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            l.e(parcel, "in");
            String readString = parcel.readString();
            if (parcel.readInt() != 0) {
                int readInt = parcel.readInt();
                ArrayList arrayList4 = new ArrayList(readInt);
                while (true) {
                    arrayList = arrayList4;
                    if (readInt == 0) {
                        break;
                    }
                    arrayList4.add(Long.valueOf(parcel.readLong()));
                    readInt--;
                }
            } else {
                arrayList = null;
            }
            String readString2 = parcel.readString();
            if (parcel.readInt() != 0) {
                int readInt2 = parcel.readInt();
                ArrayList arrayList5 = new ArrayList(readInt2);
                while (true) {
                    arrayList2 = arrayList5;
                    if (readInt2 == 0) {
                        break;
                    }
                    arrayList5.add(Long.valueOf(parcel.readLong()));
                    readInt2--;
                }
            } else {
                arrayList2 = null;
            }
            OnlineIds createFromParcel = parcel.readInt() != 0 ? OnlineIds.CREATOR.createFromParcel(parcel) : null;
            if (parcel.readInt() != 0) {
                int readInt3 = parcel.readInt();
                ArrayList arrayList6 = new ArrayList(readInt3);
                while (true) {
                    arrayList3 = arrayList6;
                    if (readInt3 == 0) {
                        break;
                    }
                    arrayList6.add(LocationDetail.CREATOR.createFromParcel(parcel));
                    readInt3--;
                }
            } else {
                arrayList3 = null;
            }
            return new BusinessProfile(readString, arrayList, readString2, arrayList2, createFromParcel, arrayList3, parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Branding.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public BusinessProfile[] newArray(int i) {
            return new BusinessProfile[i];
        }
    }

    public BusinessProfile() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public BusinessProfile(String str, List<Long> list, String str2, List<Long> list2, OnlineIds onlineIds, List<LocationDetail> list3, String str3, String str4, Branding branding) {
        this.name = str;
        this.phoneNumbers = list;
        this.about = str2;
        this.tags = list2;
        this.onlineIds = onlineIds;
        this.locationDetails = list3;
        this.size = str3;
        this.paymentIdentifier = str4;
        this.branding = branding;
    }

    public /* synthetic */ BusinessProfile(String str, List list, String str2, List list2, OnlineIds onlineIds, List list3, String str3, String str4, Branding branding, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : list2, (i & 16) != 0 ? null : onlineIds, (i & 32) != 0 ? null : list3, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? null : str4, (i & 256) != 0 ? null : branding);
    }

    public static /* synthetic */ BusinessProfile copy$default(BusinessProfile businessProfile, String str, List list, String str2, List list2, OnlineIds onlineIds, List list3, String str3, String str4, Branding branding, int i, Object obj) {
        if ((i & 1) != 0) {
            str = businessProfile.name;
        }
        if ((i & 2) != 0) {
            list = businessProfile.phoneNumbers;
        }
        if ((i & 4) != 0) {
            str2 = businessProfile.about;
        }
        if ((i & 8) != 0) {
            list2 = businessProfile.tags;
        }
        if ((i & 16) != 0) {
            onlineIds = businessProfile.onlineIds;
        }
        if ((i & 32) != 0) {
            list3 = businessProfile.locationDetails;
        }
        if ((i & 64) != 0) {
            str3 = businessProfile.size;
        }
        if ((i & 128) != 0) {
            str4 = businessProfile.paymentIdentifier;
        }
        if ((i & 256) != 0) {
            branding = businessProfile.branding;
        }
        return businessProfile.copy(str, list, str2, list2, onlineIds, list3, str3, str4, branding);
    }

    public final String component1() {
        return this.name;
    }

    public final List<Long> component2() {
        return this.phoneNumbers;
    }

    public final String component3() {
        return this.about;
    }

    public final List<Long> component4() {
        return this.tags;
    }

    public final OnlineIds component5() {
        return this.onlineIds;
    }

    public final List<LocationDetail> component6() {
        return this.locationDetails;
    }

    public final String component7() {
        return this.size;
    }

    public final String component8() {
        return this.paymentIdentifier;
    }

    public final Branding component9() {
        return this.branding;
    }

    public final BusinessProfile copy(String str, List<Long> list, String str2, List<Long> list2, OnlineIds onlineIds, List<LocationDetail> list3, String str3, String str4, Branding branding) {
        return new BusinessProfile(str, list, str2, list2, onlineIds, list3, str3, str4, branding);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BusinessProfile)) {
                return false;
            }
            BusinessProfile businessProfile = (BusinessProfile) obj;
            return l.a(this.name, businessProfile.name) && l.a(this.phoneNumbers, businessProfile.phoneNumbers) && l.a(this.about, businessProfile.about) && l.a(this.tags, businessProfile.tags) && l.a(this.onlineIds, businessProfile.onlineIds) && l.a(this.locationDetails, businessProfile.locationDetails) && l.a(this.size, businessProfile.size) && l.a(this.paymentIdentifier, businessProfile.paymentIdentifier) && l.a(this.branding, businessProfile.branding);
        }
        return true;
    }

    public final String getAbout() {
        return this.about;
    }

    public final Branding getBranding() {
        return this.branding;
    }

    public final List<LocationDetail> getLocationDetails() {
        return this.locationDetails;
    }

    public final String getName() {
        return this.name;
    }

    public final OnlineIds getOnlineIds() {
        return this.onlineIds;
    }

    public final String getPaymentIdentifier() {
        return this.paymentIdentifier;
    }

    public final List<Long> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final String getSize() {
        return this.size;
    }

    public final List<Long> getTags() {
        return this.tags;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<Long> list = this.phoneNumbers;
        int hashCode2 = list != null ? list.hashCode() : 0;
        String str2 = this.about;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        List<Long> list2 = this.tags;
        int hashCode4 = list2 != null ? list2.hashCode() : 0;
        OnlineIds onlineIds = this.onlineIds;
        int hashCode5 = onlineIds != null ? onlineIds.hashCode() : 0;
        List<LocationDetail> list3 = this.locationDetails;
        int hashCode6 = list3 != null ? list3.hashCode() : 0;
        String str3 = this.size;
        int hashCode7 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.paymentIdentifier;
        int hashCode8 = str4 != null ? str4.hashCode() : 0;
        Branding branding = this.branding;
        if (branding != null) {
            i = branding.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
    }

    public final void setAbout(String str) {
        this.about = str;
    }

    public final void setBranding(Branding branding) {
        this.branding = branding;
    }

    public final void setLocationDetails(List<LocationDetail> list) {
        this.locationDetails = list;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOnlineIds(OnlineIds onlineIds) {
        this.onlineIds = onlineIds;
    }

    public final void setPaymentIdentifier(String str) {
        this.paymentIdentifier = str;
    }

    public final void setPhoneNumbers(List<Long> list) {
        this.phoneNumbers = list;
    }

    public final void setSize(String str) {
        this.size = str;
    }

    public final void setTags(List<Long> list) {
        this.tags = list;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BusinessProfile(name=");
        m8728C.append(this.name);
        m8728C.append(", phoneNumbers=");
        m8728C.append(this.phoneNumbers);
        m8728C.append(", about=");
        m8728C.append(this.about);
        m8728C.append(", tags=");
        m8728C.append(this.tags);
        m8728C.append(", onlineIds=");
        m8728C.append(this.onlineIds);
        m8728C.append(", locationDetails=");
        m8728C.append(this.locationDetails);
        m8728C.append(", size=");
        m8728C.append(this.size);
        m8728C.append(", paymentIdentifier=");
        m8728C.append(this.paymentIdentifier);
        m8728C.append(", branding=");
        m8728C.append(this.branding);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.name);
        List<Long> list = this.phoneNumbers;
        if (list != null) {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (Long l : list) {
                parcel.writeLong(l.longValue());
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.about);
        List<Long> list2 = this.tags;
        if (list2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(list2.size());
            for (Long l2 : list2) {
                parcel.writeLong(l2.longValue());
            }
        } else {
            parcel.writeInt(0);
        }
        OnlineIds onlineIds = this.onlineIds;
        if (onlineIds != null) {
            parcel.writeInt(1);
            onlineIds.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        List<LocationDetail> list3 = this.locationDetails;
        if (list3 != null) {
            parcel.writeInt(1);
            parcel.writeInt(list3.size());
            for (LocationDetail locationDetail : list3) {
                locationDetail.writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.size);
        parcel.writeString(this.paymentIdentifier);
        Branding branding = this.branding;
        if (branding == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        branding.writeToParcel(parcel, 0);
    }
}
