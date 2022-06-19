package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public final class zzdwt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwt> CREATOR = new cws();
    public final int status;
    private final int versionCode;
    public final byte[] zzhxp;

    public zzdwt(int i, byte[] bArr, int i2) {
        this.versionCode = i;
        this.zzhxp = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.status = i2;
    }

    public zzdwt(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19100a(parcel, 2, this.zzhxp, false);
        C12050a.m19112a(parcel, 3, this.status);
        C12050a.m19095b(parcel, m19116a);
    }
}
