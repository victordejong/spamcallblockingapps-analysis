package com.freshchat.consumer.sdk.service.p068e;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.service.e.an */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/an.class */
public class C1892an extends AbstractC1884ag {
    public static final Parcelable.Creator<C1892an> CREATOR = new C1893ao();
    private boolean success;

    public C1892an() {
    }

    public C1892an(Parcel parcel) {
        super(parcel);
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag
    public Status getStatus() {
        return this.success ? Status.SUCCESS : Status.ERROR;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
