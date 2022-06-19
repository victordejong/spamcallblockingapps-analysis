package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.km */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/km.class */
public final class C4441km implements Parcelable.Creator<C4442kn> {
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4442kn createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        String str2 = null;
        C4423jv c4423jv = null;
        char c = 0;
        boolean z = false;
        String str3 = null;
        C4450r c4450r = null;
        char c2 = 0;
        C4450r c4450r2 = null;
        char c3 = 0;
        C4450r c4450r3 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    c4423jv = (C4423jv) SafeParcelReader.m13965a(parcel, m13969a, C4423jv.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 6:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 7:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    c4450r = (C4450r) SafeParcelReader.m13965a(parcel, m13969a, C4450r.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 10:
                    c4450r2 = (C4450r) SafeParcelReader.m13965a(parcel, m13969a, C4450r.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 12:
                    c4450r3 = (C4450r) SafeParcelReader.m13965a(parcel, m13969a, C4450r.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4442kn(str, str2, c4423jv, c, z, str3, c4450r, c2, c4450r2, c3, c4450r3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4442kn[] newArray(int i) {
        return new C4442kn[i];
    }
}
