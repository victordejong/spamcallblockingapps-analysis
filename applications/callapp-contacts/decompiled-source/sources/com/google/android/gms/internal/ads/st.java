package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/st.class */
public final class st implements Parcelable.Creator<zzaue> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaue createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.a(parcel, readInt, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaue(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaue[] newArray(int i) {
        return new zzaue[i];
    }
}
