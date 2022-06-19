package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ie */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ie.class */
public final class C12630ie implements Parcelable.Creator<zzaja> {
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        char c = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 4:
                    bArr = SafeParcelReader.m19125p(parcel, readInt);
                    break;
                case 5:
                    strArr = SafeParcelReader.m19121t(parcel, readInt);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.m19121t(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\b':
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaja(z, str, i, bArr, strArr, strArr2, z2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja[] newArray(int i) {
        return new zzaja[i];
    }
}
