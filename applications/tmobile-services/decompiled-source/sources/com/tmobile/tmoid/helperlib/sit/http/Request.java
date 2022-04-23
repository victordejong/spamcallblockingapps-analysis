package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.agent.utils.Utils;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/Request.class */
public abstract class Request extends BaseRequest {
    @SerializedName("message-id")

    /* renamed from: f */
    private int f14834f;
    @SerializedName(FirebaseAnalytics.Param.METHOD)

    /* renamed from: g */
    private String f14835g;
    @SerializedName("device-id")

    /* renamed from: h */
    private String f14836h;

    /* JADX INFO: Access modifiers changed from: protected */
    public Request(Parcel parcel) {
        this.f14834f = Utils.m5074c();
        this.f14834f = parcel.readInt();
        this.f14835g = parcel.readString();
        this.f14836h = parcel.readString();
    }

    public Request(String str, String str2) {
        this.f14834f = Utils.m5074c();
        this.f14835g = str;
        this.f14836h = str2;
    }

    /* renamed from: b */
    public int m4874b() {
        return this.f14834f;
    }

    /* renamed from: c */
    public void m4873c(int i) {
        this.f14834f = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14834f);
        parcel.writeString(this.f14835g);
        parcel.writeString(this.f14836h);
    }
}
