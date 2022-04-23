package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.class */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new e();
    private boolean zzbs;
    private long zzbt;
    private final boolean zzbu;
    private final int zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, isLockScreenSolved());
        a.a(parcel, 3, getMinAgeOfLockScreen());
        a.a(parcel, 4, isChallengeAllowed());
        a.b(parcel, a2);
    }
}
