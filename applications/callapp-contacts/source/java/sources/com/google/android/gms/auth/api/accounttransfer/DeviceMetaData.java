package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.class */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new C11689e();
    private boolean zzbs;
    private long zzbt;
    private final boolean zzbu;
    private final int zzv;

    public DeviceMetaData(int i, boolean z, long j, boolean z2) {
        this.zzv = i;
        this.zzbs = z;
        this.zzbt = j;
        this.zzbu = z2;
    }

    public long getMinAgeOfLockScreen() {
        return this.zzbt;
    }

    public boolean isChallengeAllowed() {
        return this.zzbu;
    }

    public boolean isLockScreenSolved() {
        return this.zzbs;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19101a(parcel, 2, isLockScreenSolved());
        C12050a.m19111a(parcel, 3, getMinAgeOfLockScreen());
        C12050a.m19101a(parcel, 4, isChallengeAllowed());
        C12050a.m19095b(parcel, m19116a);
    }
}
