package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dk.class */
public final class dk implements Parcelable.Creator<zzaei> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaei createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        zzaaz zzaazVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 3:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 4:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 6:
                    zzaazVar = (zzaaz) SafeParcelReader.a(parcel, readInt, zzaaz.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\b':
                    i4 = SafeParcelReader.e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaei(i, z, i2, z2, i3, zzaazVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaei[] newArray(int i) {
        return new zzaei[i];
    }
}
