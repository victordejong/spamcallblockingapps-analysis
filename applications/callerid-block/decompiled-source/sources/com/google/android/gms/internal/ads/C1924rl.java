package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.rl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rl.class */
public final class C1924rl implements Parcelable.Creator<zzayo> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayo createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 2:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 3:
                    str2 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 4:
                    z = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 5:
                    z2 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m8321h(parcel, q);
                    break;
                case 7:
                    z3 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 8:
                    z4 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m8321h(parcel, q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzayo(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayo[] newArray(int i) {
        return new zzayo[i];
    }
}
