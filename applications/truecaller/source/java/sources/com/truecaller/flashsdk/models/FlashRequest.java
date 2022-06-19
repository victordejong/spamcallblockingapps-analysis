package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u0019\u0010\u0013\u001a\u00020\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/truecaller/flashsdk/models/FlashRequest;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "version", "Ljava/lang/String;", "getVersion", "()Ljava/lang/String;", "messageId", "getMessageId", "Lcom/truecaller/flashsdk/models/Data;", RemoteMessageConst.DATA, "Lcom/truecaller/flashsdk/models/Data;", "getData", "()Lcom/truecaller/flashsdk/models/Data;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/Data;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashRequest.class */
public final class FlashRequest implements Parcelable {
    public static final Parcelable.Creator<FlashRequest> CREATOR = new C3922a();
    private final Data data;
    private final String messageId;
    private final String version;

    /* renamed from: com.truecaller.flashsdk.models.FlashRequest$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashRequest$a.class */
    public static final class C3922a implements Parcelable.Creator<FlashRequest> {
        @Override // android.os.Parcelable.Creator
        public FlashRequest createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new FlashRequest(parcel.readString(), parcel.readString(), Data.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public FlashRequest[] newArray(int i) {
            return new FlashRequest[i];
        }
    }

    public FlashRequest(String str, String str2, Data data) {
        l.e(str, "messageId");
        l.e(str2, "version");
        l.e(data, RemoteMessageConst.DATA);
        this.messageId = str;
        this.version = str2;
        this.data = data;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Data getData() {
        return this.data;
    }

    public final String getMessageId() {
        return this.messageId;
    }

    public final String getVersion() {
        return this.version;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.messageId);
        parcel.writeString(this.version);
        this.data.writeToParcel(parcel, 0);
    }
}
