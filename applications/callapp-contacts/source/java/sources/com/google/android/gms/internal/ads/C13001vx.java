package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.vx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vx.class */
public final class C13001vx implements Parcelable.Creator<zzaxn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxn createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 7:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\b':
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    arrayList2 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaxn(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxn[] newArray(int i) {
        return new zzaxn[i];
    }
}
