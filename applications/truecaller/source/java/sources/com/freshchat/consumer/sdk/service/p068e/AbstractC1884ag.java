package com.freshchat.consumer.sdk.service.p068e;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.service.e.ag */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/ag.class */
public abstract class AbstractC1884ag implements Parcelable, AbstractC1907k {
    private Status status;

    public AbstractC1884ag() {
    }

    public AbstractC1884ag(Parcel parcel) {
        this.status = Status.valueOf(parcel.readString());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Status getStatus() {
        Status status = this.status;
        Status status2 = status;
        if (status == null) {
            status2 = Status.ERROR;
        }
        return status2;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1907k
    @Deprecated
    public boolean isSuccess() {
        return false;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Deprecated
    public void setSuccess(boolean z) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Status status = this.status;
        Status status2 = status;
        if (status == null) {
            status2 = Status.ERROR;
        }
        parcel.writeString(status2.name());
    }
}
