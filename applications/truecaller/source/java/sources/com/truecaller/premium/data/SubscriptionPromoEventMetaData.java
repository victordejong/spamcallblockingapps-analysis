package com.truecaller.premium.data;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/SubscriptionPromoEventMetaData.class */
public final class SubscriptionPromoEventMetaData implements Parcelable {
    public static final Parcelable.Creator<SubscriptionPromoEventMetaData> CREATOR = new C4347a();

    /* renamed from: a */
    public final String f14245a;

    /* renamed from: b */
    public final String f14246b;

    /* renamed from: com.truecaller.premium.data.SubscriptionPromoEventMetaData$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/SubscriptionPromoEventMetaData$a.class */
    public static final class C4347a implements Parcelable.Creator<SubscriptionPromoEventMetaData> {
        @Override // android.os.Parcelable.Creator
        public SubscriptionPromoEventMetaData createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new SubscriptionPromoEventMetaData(parcel, (f) null);
        }

        @Override // android.os.Parcelable.Creator
        public SubscriptionPromoEventMetaData[] newArray(int i) {
            return new SubscriptionPromoEventMetaData[i];
        }
    }

    public SubscriptionPromoEventMetaData(Parcel parcel, f fVar) {
        String readString = parcel.readString();
        String str = readString == null ? "" : readString;
        l.d(str, "StringUtils.defaultString(source.readString())");
        this.f14245a = str;
        this.f14246b = parcel.readString();
    }

    public SubscriptionPromoEventMetaData(String str, String str2) {
        l.e(str, "correlation");
        this.f14245a = str;
        this.f14246b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeString(this.f14245a);
        parcel.writeString(this.f14246b);
    }
}
