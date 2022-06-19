package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n30.class */
public final class n30 implements Parcelable.Creator<zzbra> {
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbra createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        char c = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    bArr = SafeParcelReader.m16967g(parcel, m16983C);
                    break;
                case 5:
                    strArr = SafeParcelReader.m16957q(parcel, m16983C);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.m16957q(parcel, m16983C);
                    break;
                case 7:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 8:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbra(z, str, i, bArr, strArr, strArr2, z2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbra[] newArray(int i) {
        return new zzbra[i];
    }
}
