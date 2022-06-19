package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.pj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pj.class */
public final class C3410pj implements Parcelable.Creator<C3411pk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3411pk createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 3:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3411pk(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3411pk[] newArray(int i) {
        return new C3411pk[i];
    }
}
