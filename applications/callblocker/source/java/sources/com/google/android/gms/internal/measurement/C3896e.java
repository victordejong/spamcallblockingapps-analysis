package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.measurement.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/e.class */
public final class C3896e implements Parcelable.Creator<C3811b> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3811b createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        Bundle bundle = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        char c = 0;
        char c2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 2:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 3:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 7:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3811b(c2, c, z, str3, str2, str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3811b[] newArray(int i) {
        return new C3811b[i];
    }
}
