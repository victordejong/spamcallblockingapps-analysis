package com.huawei.hms.support.api.client;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/Status$a.class */
public final class Status$a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Status createFromParcel(Parcel parcel) {
        return new Status(parcel.readInt(), parcel.readString(), PendingIntent.readPendingIntentOrNullFromParcel(parcel));
    }

    @Override // android.os.Parcelable.Creator
    public Status[] newArray(int i) {
        return new Status[i];
    }
}
