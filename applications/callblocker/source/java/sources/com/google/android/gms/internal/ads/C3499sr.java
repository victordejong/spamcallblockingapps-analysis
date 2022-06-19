package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.sr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sr.class */
public final class C3499sr implements Parcelable.Creator<C3500ss> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3500ss createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        ArrayList<String> arrayList = null;
        boolean z = false;
        boolean z2 = false;
        ArrayList<String> arrayList2 = null;
        boolean z3 = false;
        boolean z4 = false;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 5:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 7:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 8:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3500ss(str2, str, z4, z3, arrayList2, z2, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3500ss[] newArray(int i) {
        return new C3500ss[i];
    }
}
