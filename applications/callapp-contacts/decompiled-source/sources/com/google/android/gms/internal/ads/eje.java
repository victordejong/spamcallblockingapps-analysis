package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eje.class */
public final class eje implements Parcelable.Creator<zzvt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvt createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        zzvt[] zzvtVarArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 5:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 6:
                    i3 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 7:
                    i4 = SafeParcelReader.e(parcel, readInt);
                    break;
                case '\b':
                    zzvtVarArr = (zzvt[]) SafeParcelReader.b(parcel, readInt, zzvt.CREATOR);
                    break;
                case '\t':
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 11:
                    z4 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\f':
                    z5 = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\r':
                    z6 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 14:
                    z7 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 15:
                    z8 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 16:
                    z9 = SafeParcelReader.c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzvt(str, i, i2, z, i3, i4, zzvtVarArr, z2, z3, z4, z5, z6, z7, z8, z9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvt[] newArray(int i) {
        return new zzvt[i];
    }
}
