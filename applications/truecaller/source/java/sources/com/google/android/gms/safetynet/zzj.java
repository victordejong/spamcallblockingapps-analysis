package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/safetynet/zzj.class */
public final class zzj implements Parcelable.Creator<SafeBrowsingData> {
    /* renamed from: a */
    public static void m38550a(SafeBrowsingData safeBrowsingData, Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, safeBrowsingData.a, false);
        SafeParcelWriter.m38847p(parcel, 3, safeBrowsingData.b, i, false);
        SafeParcelWriter.m38847p(parcel, 4, safeBrowsingData.c, i, false);
        long j = safeBrowsingData.d;
        parcel.writeInt(524293);
        parcel.writeLong(j);
        SafeParcelWriter.m38859d(parcel, 6, safeBrowsingData.e, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final SafeBrowsingData createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        DataHolder dataHolder = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        byte[] bArr = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 == 3) {
                dataHolder = (DataHolder) SafeParcelReader.m38880i(parcel, readInt, DataHolder.CREATOR);
            } else if (c2 == 4) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m38880i(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 == 5) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SafeBrowsingData(str, dataHolder, parcelFileDescriptor, c, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeBrowsingData[] newArray(int i) {
        return new SafeBrowsingData[i];
    }
}
