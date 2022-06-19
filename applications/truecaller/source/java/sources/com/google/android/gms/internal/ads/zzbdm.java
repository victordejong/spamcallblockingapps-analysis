package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdm.class */
public final class zzbdm implements Parcelable.Creator<zzbdl> {
    @Override // android.os.Parcelable.Creator
    public final zzbdl createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        zzbdl[] zzbdlVarArr = null;
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
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    zzbdlVarArr = (zzbdl[]) SafeParcelReader.m38876m(parcel, readInt, zzbdl.CREATOR);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 11:
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\f':
                    z5 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\r':
                    z6 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 14:
                    z7 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 15:
                    z8 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 16:
                    z9 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbdl(str, i, i2, z, i3, i4, zzbdlVarArr, z2, z3, z4, z5, z6, z7, z8, z9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdl[] newArray(int i) {
        return new zzbdl[i];
    }
}
