package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwc.class */
public final class zzdwc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwc> CREATOR = new cwi();
    private final int versionCode;
    private final byte[] zzhwz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdwc(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhwz = bArr;
    }

    public zzdwc(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        a.a(parcel, 2, this.zzhwz, false);
        a.b(parcel, a2);
    }
}
