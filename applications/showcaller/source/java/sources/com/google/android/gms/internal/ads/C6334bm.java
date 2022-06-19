package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.bm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bm.class */
public final class C6334bm implements Parcelable.Creator<zzayn> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayn createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 4:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 8:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 9:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 10:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 11:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzayn(str, c, str2, str3, str4, bundle, z, c2, str5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayn[] newArray(int i) {
        return new zzayn[i];
    }
}
