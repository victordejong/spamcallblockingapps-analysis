package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.ju */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ju.class */
public final class C4422ju implements Parcelable.Creator<C4423jv> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4423jv createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        char c = 0;
        Double d = null;
        String str = null;
        String str2 = null;
        Float f = null;
        Long l = null;
        String str3 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 4:
                    l = SafeParcelReader.m13956g(parcel, m13969a);
                    break;
                case 5:
                    f = SafeParcelReader.m13954i(parcel, m13969a);
                    break;
                case 6:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 7:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    d = SafeParcelReader.m13953j(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4423jv(i, str3, c, l, f, str2, str, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4423jv[] newArray(int i) {
        return new C4423jv[i];
    }
}
