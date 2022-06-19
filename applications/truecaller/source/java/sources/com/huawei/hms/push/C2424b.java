package com.huawei.hms.push;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.huawei.hms.push.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/b.class */
public final class C2424b implements Parcelable.Creator<RemoteMessage> {
    @Override // android.os.Parcelable.Creator
    public RemoteMessage createFromParcel(Parcel parcel) {
        return new RemoteMessage(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
