package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u0019\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000fR\u0019\u0010\u0015\u001a\u00020\u00148\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\r\u001a\u0004\b\u001a\u0010\u000fR\u0019\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/truecaller/flashsdk/models/Data;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "history", "Ljava/lang/String;", "getHistory", "()Ljava/lang/String;", "pushToken", "getPushToken", "threadId", "getThreadId", "Lcom/truecaller/flashsdk/models/Payload;", "payload", "Lcom/truecaller/flashsdk/models/Payload;", "getPayload", "()Lcom/truecaller/flashsdk/models/Payload;", "state", "getState", "", RemoteMessageConst.f7718TO, "J", "getTo", "()J", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/Payload;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Data.class */
public final class Data implements Parcelable {
    public static final Parcelable.Creator<Data> CREATOR = new C3919a();
    private final String history;
    private final Payload payload;
    private final String pushToken;
    private final String state;
    private final String threadId;

    /* renamed from: to */
    private final long f11990to;

    /* renamed from: com.truecaller.flashsdk.models.Data$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Data$a.class */
    public static final class C3919a implements Parcelable.Creator<Data> {
        @Override // android.os.Parcelable.Creator
        public Data createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new Data(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), (Payload) parcel.readParcelable(Data.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public Data[] newArray(int i) {
            return new Data[i];
        }
    }

    public Data(long j, String str, String str2, String str3, String str4, Payload payload) {
        l.e(str, "threadId");
        l.e(str3, "history");
        l.e(str4, "pushToken");
        l.e(payload, "payload");
        this.f11990to = j;
        this.threadId = str;
        this.state = str2;
        this.history = str3;
        this.pushToken = str4;
        this.payload = payload;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getHistory() {
        return this.history;
    }

    public final Payload getPayload() {
        return this.payload;
    }

    public final String getPushToken() {
        return this.pushToken;
    }

    public final String getState() {
        return this.state;
    }

    public final String getThreadId() {
        return this.threadId;
    }

    public final long getTo() {
        return this.f11990to;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f11990to);
        parcel.writeString(this.threadId);
        parcel.writeString(this.state);
        parcel.writeString(this.history);
        parcel.writeString(this.pushToken);
        parcel.writeParcelable(this.payload, i);
    }
}
