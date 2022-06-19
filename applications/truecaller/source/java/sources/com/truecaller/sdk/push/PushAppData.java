package com.truecaller.sdk.push;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/push/PushAppData.class */
public class PushAppData implements Parcelable {
    public static final Parcelable.Creator<PushAppData> CREATOR = new C4435a();

    /* renamed from: a */
    public final String f14575a;

    /* renamed from: b */
    public final String f14576b;

    /* renamed from: c */
    public final int f14577c;

    /* renamed from: com.truecaller.sdk.push.PushAppData$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/push/PushAppData$a.class */
    public class C4435a implements Parcelable.Creator<PushAppData> {
        @Override // android.os.Parcelable.Creator
        public PushAppData createFromParcel(Parcel parcel) {
            return new PushAppData(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public PushAppData[] newArray(int i) {
            return new PushAppData[i];
        }
    }

    public PushAppData(Parcel parcel, C4435a c4435a) {
        this.f14575a = parcel.readString();
        this.f14576b = parcel.readString();
        this.f14577c = parcel.readInt();
    }

    public PushAppData(String str, String str2, int i) {
        this.f14575a = str;
        this.f14576b = str2;
        this.f14577c = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", this.f14575a);
            jSONObject.put(AnalyticsConstants.NAME, this.f14576b);
            jSONObject.put(RemoteMessageConst.TTL, this.f14577c);
            return jSONObject.toString();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14575a);
        parcel.writeString(this.f14576b);
        parcel.writeInt(this.f14577c);
    }
}
