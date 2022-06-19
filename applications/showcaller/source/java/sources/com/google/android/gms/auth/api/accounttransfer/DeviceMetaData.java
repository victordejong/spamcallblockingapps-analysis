package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.class */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new C5879e();

    /* renamed from: d */
    private final int f18855d;

    /* renamed from: e */
    private boolean f18856e;

    /* renamed from: f */
    private long f18857f;

    /* renamed from: g */
    private final boolean f18858g;

    public DeviceMetaData(int i, boolean z, long j, boolean z2) {
        this.f18855d = i;
        this.f18856e = z;
        this.f18857f = j;
        this.f18858g = z2;
    }

    /* renamed from: k0 */
    public long m17721k0() {
        return this.f18857f;
    }

    /* renamed from: l0 */
    public boolean m17720l0() {
        return this.f18858g;
    }

    /* renamed from: m0 */
    public boolean m17719m0() {
        return this.f18856e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18855d);
        C6170a.m16945c(parcel, 2, m17719m0());
        C6170a.m16934n(parcel, 3, m17721k0());
        C6170a.m16945c(parcel, 4, m17720l0());
        C6170a.m16946b(parcel, m16947a);
    }
}
