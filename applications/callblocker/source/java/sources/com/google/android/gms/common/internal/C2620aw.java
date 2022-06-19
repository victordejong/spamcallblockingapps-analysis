package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.aw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aw.class */
public final class C2620aw implements Parcelable.Creator<C2621ax> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2621ax createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2621ax(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2621ax[] newArray(int i) {
        return new C2621ax[i];
    }
}
