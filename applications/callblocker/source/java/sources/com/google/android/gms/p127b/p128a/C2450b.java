package com.google.android.gms.p127b.p128a;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.b.a.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/b.class */
public final class C2450b implements Parcelable.Creator<C2451c> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2451c createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        Intent intent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    intent = (Intent) SafeParcelReader.m13965a(parcel, m13969a, Intent.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2451c(i2, i, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2451c[] newArray(int i) {
        return new C2451c[i];
    }
}
