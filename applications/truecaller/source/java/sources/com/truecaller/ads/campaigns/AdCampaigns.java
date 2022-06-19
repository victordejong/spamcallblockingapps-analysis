package com.truecaller.ads.campaigns;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaigns.class */
public final class AdCampaigns implements Parcelable {
    public static final Parcelable.Creator<AdCampaigns> CREATOR = new C2819a();

    /* renamed from: a */
    public final String f9847a;

    /* renamed from: b */
    public final AdCampaign[] f9848b;

    /* renamed from: c */
    public final String[] f9849c;

    /* renamed from: d */
    public volatile String[] f9850d = null;

    /* renamed from: e */
    public long f9851e;

    /* renamed from: com.truecaller.ads.campaigns.AdCampaigns$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaigns$a.class */
    public class C2819a implements Parcelable.Creator<AdCampaigns> {
        @Override // android.os.Parcelable.Creator
        public AdCampaigns createFromParcel(Parcel parcel) {
            return new AdCampaigns(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public AdCampaigns[] newArray(int i) {
            return new AdCampaigns[i];
        }
    }

    public AdCampaigns(Parcel parcel, C2819a c2819a) {
        this.f9847a = parcel.readString();
        this.f9848b = (AdCampaign[]) parcel.createTypedArray(AdCampaign.CREATOR);
        this.f9849c = parcel.createStringArray();
        this.f9851e = parcel.readLong();
    }

    public AdCampaigns(String str, AdCampaign[] adCampaignArr, String[] strArr, long j, C2819a c2819a) {
        this.f9847a = str;
        this.f9848b = adCampaignArr;
        this.f9849c = strArr;
        this.f9851e = j;
    }

    /* renamed from: a */
    public String[] m35993a() {
        String[] strArr = this.f9850d;
        if (strArr != null) {
            return strArr;
        }
        String[] strArr2 = new String[this.f9848b.length];
        int i = 0;
        while (true) {
            AdCampaign[] adCampaignArr = this.f9848b;
            if (i >= adCampaignArr.length) {
                this.f9850d = strArr2;
                return strArr2;
            }
            if (adCampaignArr[i] != null) {
                strArr2[i] = adCampaignArr[i].f9820a;
            }
            i++;
        }
    }

    /* renamed from: b */
    public AdCampaign m35992b() {
        AdCampaign[] adCampaignArr;
        for (AdCampaign adCampaign : this.f9848b) {
            if (adCampaign.f9822c != null) {
                return adCampaign;
            }
        }
        return null;
    }

    /* renamed from: c */
    public AdCampaign m35991c() {
        AdCampaign[] adCampaignArr;
        for (AdCampaign adCampaign : this.f9848b) {
            if (adCampaign.f9821b != null) {
                return adCampaign;
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f9847a);
        parcel.writeTypedArray(this.f9848b, 0);
        parcel.writeStringArray(this.f9849c);
        parcel.writeLong(this.f9851e);
    }
}
