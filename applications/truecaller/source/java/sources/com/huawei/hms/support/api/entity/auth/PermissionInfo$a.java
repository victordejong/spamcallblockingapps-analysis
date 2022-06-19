package com.huawei.hms.support.api.entity.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/auth/PermissionInfo$a.class */
public final class PermissionInfo$a implements Parcelable.Creator<PermissionInfo> {
    @Override // android.os.Parcelable.Creator
    public PermissionInfo createFromParcel(Parcel parcel) {
        return new PermissionInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public PermissionInfo[] newArray(int i) {
        return new PermissionInfo[i];
    }
}
