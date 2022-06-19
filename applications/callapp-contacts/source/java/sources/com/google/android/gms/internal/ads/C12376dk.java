package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.dk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dk.class */
public final class C12376dk implements Parcelable.Creator<zzaei> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaei createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        zzaaz zzaazVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 3:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 4:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    zzaazVar = (zzaaz) SafeParcelReader.m19143a(parcel, readInt, zzaaz.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\b':
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaei(i, z, i2, z2, i3, zzaazVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaei[] newArray(int i) {
        return new zzaei[i];
    }
}
