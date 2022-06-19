package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.ah */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ah.class */
public final class C2605ah implements Parcelable.Creator<C2604ag> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2604ag createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        C2587d[] c2587dArr = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 2:
                    c2587dArr = (C2587d[]) SafeParcelReader.m13962b(parcel, m13969a, C2587d.CREATOR);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2604ag(bundle, c2587dArr, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2604ag[] newArray(int i) {
        return new C2604ag[i];
    }
}
