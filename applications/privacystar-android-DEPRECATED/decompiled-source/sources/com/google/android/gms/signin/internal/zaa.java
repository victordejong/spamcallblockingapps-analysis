package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AuthAccountResultCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zaa.class */
public final class zaa extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    @SafeParcelable.Field(getter = "getConnectionResultCode", m344id = 2)
    private int zarw;
    @SafeParcelable.Field(getter = "getRawAuthResolutionIntent", m344id = 3)
    private Intent zarx;

    public zaa() {
        this(0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zaa(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) int i2, @SafeParcelable.Param(m343id = 3) Intent intent) {
        this.zale = i;
        this.zarw = i2;
        this.zarx = intent;
    }

    private zaa(int i, Intent intent) {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zarw == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        SafeParcelWriter.writeInt(parcel, 2, this.zarw);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zarx, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
