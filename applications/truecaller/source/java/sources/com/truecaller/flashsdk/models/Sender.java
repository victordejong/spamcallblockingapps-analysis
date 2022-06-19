package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Sender.class */
public class Sender implements Parcelable {
    public static final Parcelable.Creator<Sender> CREATOR = new C3928a();
    @b(AnalyticsConstants.PHONE)

    /* renamed from: a */
    private final long f12016a;
    @b(AnalyticsConstants.NAME)

    /* renamed from: b */
    private final String f12017b;
    @b("img")

    /* renamed from: c */
    private final String f12018c;

    /* renamed from: com.truecaller.flashsdk.models.Sender$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Sender$a.class */
    public class C3928a implements Parcelable.Creator<Sender> {
        @Override // android.os.Parcelable.Creator
        public Sender createFromParcel(Parcel parcel) {
            return new Sender(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Sender[] newArray(int i) {
            return new Sender[i];
        }
    }

    public Sender(Parcel parcel, C3928a c3928a) {
        this.f12016a = parcel.readLong();
        this.f12017b = parcel.readString();
        this.f12018c = parcel.readString();
    }

    /* renamed from: a */
    public String m35379a() {
        return this.f12018c;
    }

    /* renamed from: b */
    public String m35378b() {
        String str = this.f12017b;
        return (str == null || TextUtils.isEmpty(str.trim())) ? Long.toString(this.f12016a) : this.f12017b;
    }

    /* renamed from: c */
    public Long m35377c() {
        return Long.valueOf(this.f12016a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f12016a);
        parcel.writeString(this.f12017b);
        parcel.writeString(this.f12018c);
    }
}
