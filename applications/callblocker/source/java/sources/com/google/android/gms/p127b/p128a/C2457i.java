package com.google.android.gms.p127b.p128a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2667t;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.b.a.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/i.class */
public final class C2457i implements Parcelable.Creator<C2458j> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2458j createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        C2667t c2667t = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    c2667t = (C2667t) SafeParcelReader.m13965a(parcel, m13969a, C2667t.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2458j(i, c2667t);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2458j[] newArray(int i) {
        return new C2458j[i];
    }
}
