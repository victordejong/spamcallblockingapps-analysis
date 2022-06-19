package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrb.class */
public final class zzbrb implements Parcelable.Creator<zzbra> {
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzbra createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    bArr = SafeParcelReader.m38885d(parcel, readInt);
                    break;
                case 5:
                    strArr = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbra(z, str, i, bArr, strArr, strArr2, z2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbra[] newArray(int i) {
        return new zzbra[i];
    }
}
