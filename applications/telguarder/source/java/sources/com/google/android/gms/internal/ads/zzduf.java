package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduf.class */
public final class zzduf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduf> CREATOR = new zzdui();
    private final int versionCode;
    private final byte[] zzhtx;

    public zzduf(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhtx = bArr;
    }

    public zzduf(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzhtx, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
