package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.zl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zl.class */
public final class C7223zl implements Parcelable.Creator<zzayk> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayk createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        char c = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m16959o(parcel, m16983C, ParcelFileDescriptor.CREATOR);
            } else if (m16952v == 3) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 4) {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 5) {
                c = SafeParcelReader.m16980F(parcel, m16983C);
            } else if (m16952v != 6) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                z3 = SafeParcelReader.m16951w(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzayk(parcelFileDescriptor, z, z2, c, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayk[] newArray(int i) {
        return new zzayk[i];
    }
}
