package com.google.android.gms.ads.p119b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.b.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/n.class */
public final class C2271n implements Parcelable.Creator<C2266j> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2266j createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 2:
                    iBinder2 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2266j(z, iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2266j[] newArray(int i) {
        return new C2266j[i];
    }
}
