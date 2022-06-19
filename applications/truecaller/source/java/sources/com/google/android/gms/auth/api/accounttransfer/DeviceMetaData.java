package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.class */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new zzv();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5368a;
    @SafeParcelable.Field

    /* renamed from: b */
    public boolean f5369b;
    @SafeParcelable.Field

    /* renamed from: c */
    public long f5370c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f5371d;

    @SafeParcelable.Constructor
    public DeviceMetaData(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) boolean z2) {
        this.f5368a = i;
        this.f5369b = z;
        this.f5370c = j;
        this.f5371d = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5368a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        boolean z = this.f5369b;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        long j = this.f5370c;
        parcel.writeInt(524291);
        parcel.writeLong(j);
        boolean z2 = this.f5371d;
        parcel.writeInt(262148);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
