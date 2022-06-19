package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q.class */
public final class C4449q implements Parcelable.Creator<C4450r> {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4450r createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        char c = 0;
        String str = null;
        C4445m c4445m = null;
        String str2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    c4445m = (C4445m) SafeParcelReader.m13965a(parcel, m13969a, C4445m.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4450r(str2, c4445m, str, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4450r[] newArray(int i) {
        return new C4450r[i];
    }
}
