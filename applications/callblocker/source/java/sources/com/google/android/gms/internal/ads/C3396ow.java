package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ow */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ow.class */
public final class C3396ow implements Parcelable.Creator<C3394ou> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3394ou createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    iBinder2 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 2:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3394ou(iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3394ou[] newArray(int i) {
        return new C3394ou[i];
    }
}
