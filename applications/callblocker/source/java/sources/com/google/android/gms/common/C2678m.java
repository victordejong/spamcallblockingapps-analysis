package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/m.class */
public final class C2678m implements Parcelable.Creator<C2587d> {
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2587d createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        int i = 0;
        char c = 65535;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2587d(str, i, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2587d[] newArray(int i) {
        return new C2587d[i];
    }
}
