package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/d.class */
public final class C5878d implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        byte[] bArr = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    hashSet.add(1);
                    break;
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    hashSet.add(2);
                    break;
                case 3:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    hashSet.add(3);
                    break;
                case 4:
                    bArr = SafeParcelReader.m16967g(parcel, m16983C);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.m16959o(parcel, m16983C, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) SafeParcelReader.m16959o(parcel, m16983C, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        if (parcel.dataPosition() == m16976J) {
            return new zzt(hashSet, i, str, i2, bArr, pendingIntent, deviceMetaData);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(m16976J);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt[] newArray(int i) {
        return new zzt[i];
    }
}
