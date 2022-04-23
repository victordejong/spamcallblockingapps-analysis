package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ie.class */
public final class ie implements Parcelable.Creator<zzaja> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 4:
                    bArr = SafeParcelReader.p(parcel, readInt);
                    break;
                case 5:
                    strArr = SafeParcelReader.t(parcel, readInt);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.t(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\b':
                    j = SafeParcelReader.f(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaja(z, str, i, bArr, strArr, strArr2, z2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja[] newArray(int i) {
        return new zzaja[i];
    }
}
