package com.huawei.updatesdk.service.appmgr.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo$a.class */
public final class ApkUpgradeInfo$a implements Parcelable.Creator<ApkUpgradeInfo> {
    @Override // android.os.Parcelable.Creator
    public ApkUpgradeInfo createFromParcel(Parcel parcel) {
        return new ApkUpgradeInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ApkUpgradeInfo[] newArray(int i) {
        return new ApkUpgradeInfo[i];
    }
}
