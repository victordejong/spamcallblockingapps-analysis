package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vx.class */
public final class vx implements Parcelable.Creator<zzaxn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxn createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.u(parcel, readInt);
                    break;
                case 7:
                    z3 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\b':
                    z4 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\t':
                    arrayList2 = SafeParcelReader.u(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaxn(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxn[] newArray(int i) {
        return new zzaxn[i];
    }
}
