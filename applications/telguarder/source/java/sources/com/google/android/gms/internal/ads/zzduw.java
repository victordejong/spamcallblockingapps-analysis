package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduw.class */
public final class zzduw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduw> CREATOR = new zzduv();
    public final int status;
    private final int versionCode;
    public final byte[] zzhun;

    public zzduw(int i, byte[] bArr, int i2) {
        this.versionCode = i;
        this.zzhun = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.status = i2;
    }

    public zzduw(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzhun, false);
        SafeParcelWriter.writeInt(parcel, 3, this.status);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
