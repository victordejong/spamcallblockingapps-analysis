package com.google.android.gms.p127b.p128a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.C2668u;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.b.a.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/k.class */
public final class C2459k implements Parcelable.Creator<C2460l> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2460l createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        C2668u c2668u = null;
        C2579b c2579b = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    c2579b = (C2579b) SafeParcelReader.m13965a(parcel, m13969a, C2579b.CREATOR);
                    break;
                case 3:
                    c2668u = (C2668u) SafeParcelReader.m13965a(parcel, m13969a, C2668u.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2460l(i, c2579b, c2668u);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2460l[] newArray(int i) {
        return new C2460l[i];
    }
}
