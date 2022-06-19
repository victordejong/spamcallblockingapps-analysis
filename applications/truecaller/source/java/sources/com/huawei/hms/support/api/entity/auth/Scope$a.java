package com.huawei.hms.support.api.entity.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/auth/Scope$a.class */
public final class Scope$a implements Parcelable.Creator<Scope> {
    @Override // android.os.Parcelable.Creator
    public Scope createFromParcel(Parcel parcel) {
        return new Scope(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public Scope[] newArray(int i) {
        return new Scope[i];
    }
}
